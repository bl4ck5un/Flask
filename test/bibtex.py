import bibtexparser

with open('../static/citations.bib') as bibtex_file:
    bibtex_str = bibtex_file.read()

bib_database = bibtexparser.loads(bibtex_str)
for e in bib_database.entries:
    print e
