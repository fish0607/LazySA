# Generated by Django 2.0.6 on 2018-07-04 06:54

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('assets', '0009_auto_20180628_1725'),
    ]

    operations = [
        migrations.AlterField(
            model_name='projectinfo',
            name='ProjectService',
            field=models.CharField(blank=True, max_length=100, null=True, verbose_name='服务名称'),
        ),
    ]
