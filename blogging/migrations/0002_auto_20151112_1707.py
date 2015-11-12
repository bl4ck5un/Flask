# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blogging', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='tag',
            name='article',
        ),
        migrations.AddField(
            model_name='article',
            name='is_draft',
            field=models.BooleanField(default=True),
        ),
        migrations.AddField(
            model_name='article',
            name='is_public',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='article',
            name='tags',
            field=models.ManyToManyField(to='blogging.Tag'),
        ),
    ]
