import os
import traceback
from django.core.management.base import BaseCommand
from django.contrib.auth import get_user_model
import re
from bibtexparser.customization import convert_to_unicode
import os
from copy import deepcopy
import sys
import bibtexparser
from bibtexparser.bparser import BibTexParser
from django.template.loader import get_template
from django.conf import settings
import readline


# ###############
# JINJA FILTERS #
# ###############

def ordinal(value):
    """ Cardinal to ordinal conversion for the edition field """
    try:
        digit = int(value)
    except:
        return value.split(' ')[0]

    if digit < 1:
        return digit

    if digit % 100 == 11 or digit % 100 == 12 or digit % 100 == 13:
        return value + 'th'
    elif digit % 10 == 3:
        return value + 'rd'
    elif digit % 10 == 2:
        return value + 'nd'
    elif digit % 10 == 1:
        return value + 'st'
    else:
        return value + 'th'

def author_join(value, d=u', ', last=u', and ', two=u' and '):
    """ Like join but for list of names (convenient authors list) """
    if len(value) == 1:
        return value[0]
    elif len(value) == 2:
        return value[0] + two + value[1]
    else:
        return d.join(value[:-1]) + last + value[-1]


# ##############################
# BIBTEX PARSER CUSTOMIZATIONS #
# ##############################

def customizations(entry):
    entry = clear_empty(entry)
    entry = author(entry)
    entry = page_endash(entry)
    entry = convert_to_unicode(entry)
    entry = clean_latex(entry)

    return entry


def clear_empty(entry):
    """ Clear empty fields in entry """
    gen = (field for field in entry.keys() if not entry[field])

    for field in gen:
        del entry[field]

    return entry


def author(entry):
    """ Convert author field to list """
    if 'author' in entry:
        entry['author'] = [name for name in entry['author'].replace('\n', ' ').split(' and ')
                           if name.strip()]

    return entry


def page_endash(entry):
    """ Separate pages by an HTML endash (&ndash;) """
    if "pages" in entry:
        p = re.findall('\d+', entry["pages"])
        entry["pages"] = p[0] + '&ndash;' + p[-1]
    return entry


def clean_latex(entry, fields=['title']):
    """ Cleans up LaTeX markup from entries """
    # LaTeX markup regex
    italic = r'\\textit\{([^\}]*)\}'
    emph = r'\\emph\{([^\}]*)\}'
    bold = r'\\textbf\{([^\}]*)\}'
    markup = r'\\[^\{]*\{([^\}]*)\}'

    for field in entry.keys():
        val = entry[field]

        try:
            val = re.sub(italic, '<i>\g<1></i>', val)
            val = re.sub(emph, '<i>\g<1></i>', val)
            val = re.sub(bold, '<b>\g<1></b>', val)
            val = re.sub(markup, '\g<1>', val)
            val = re.sub('[\{\}]', '', val)
            entry[field] = val
        except:
            pass

    return entry

class Command(BaseCommand):
    def __init__(self, *args, **kwargs):
        super(Command, self).__init__(*args, **kwargs)
        self.UserModel = get_user_model()

    def handle(self, *args, **kwargs):
        bibtex_files = settings.BIBTEX_FILES
        bibtex_output = settings.BIBTEX_OUTPUT

        db = []
        for bib in bibtex_files:
            print bib
            try:
                parser = BibTexParser()
                parser.customization = customizations
                with open(bib, 'r') as inputFile:
                    dbTemp = bibtexparser.load(inputFile, parser=parser).entries
                for entryTemp in dbTemp:
                    if not any(
                            entryTemp['title'].lower() == entry['title'].lower()
                            for entry in db):
                        db.append(deepcopy(entryTemp))

            except:
                traceback.print_exc()
                print ('An error occured while processing [' +
                    bib + ']. Its content will be ignored.')

        try:
            for entry in db:
                print 'bib2html/ieee/' + entry['ENTRYTYPE'] + '.html'
                bibTemplate = get_template('bib2html/ieee/' + entry['ENTRYTYPE'] + '.html')

                entry['formatted'] = bibTemplate.render(entry)
        except:
            traceback.print_exc()
            print ('An error occured while processing the style files.'
                'The program will exit without completing the task.')

        if_review = raw_input('Do you want to review? [N] ')
        if len(if_review) > 0 and if_review.lower()[0] == 'y':
            for entry in db:
                # write to output
                print entry['formatted']

        if_write = raw_input('Write to %s? [Y] ' % (bibtex_output,))
        if len(if_write) > 0 and if_write.lower()[0] == 'n':
            print 'Okay, won\'t write'
        else:
            if not os.path.exists(os.path.dirname(bibtex_output)):
                os.makedirs(os.path.dirname(bibtex_output))
            with open(bibtex_output, 'w+') as out:
                out.write('<ul>' + ''.join([x['formatted'] for x in db]) + '</ul>')
