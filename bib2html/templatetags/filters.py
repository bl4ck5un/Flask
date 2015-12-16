from django import template

register = template.Library()

@register.filter(name='ordinal')
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

@register.filter(name='author_join')
def author_join(value):
    d=u', '
    last=u', and '
    two=u' and'
    if len(value) == 0:
        return ''
    elif len(value) == 1:
        return value[0]
    elif len(value) == 2:
        return value[0] + two + value[1]
    elif len(value) == 3:
        return d.join(value[:-1]) + last + value[-1]
    else:
        return d.join(value[:3]) + ' <em>et al.</em>'
