# Generated by Django 2.0.6 on 2018-06-22 06:42

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('assets', '0005_auto_20180622_1437'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='hostinfo',
            name='group',
        ),
        migrations.AddField(
            model_name='hostinfo',
            name='group',
            field=models.CharField(blank=True, max_length=300, null=True, verbose_name='所属组'),
        ),
    ]
