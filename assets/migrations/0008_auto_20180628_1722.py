# Generated by Django 2.0.6 on 2018-06-28 09:22

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('assets', '0007_delete_groupinfo'),
    ]

    operations = [
        migrations.CreateModel(
            name='ProjectInfo',
            fields=[
                ('ProjectID', models.AutoField(primary_key=True, serialize=False, verbose_name='项目ID')),
                ('ProjectName', models.CharField(blank=True, max_length=100, null=True, verbose_name='名称')),
                ('Group', models.CharField(blank=True, max_length=100, null=True, verbose_name='分组')),
                ('Notes', models.CharField(blank=True, max_length=100, null=True, verbose_name='备注')),
            ],
        ),
        migrations.AlterField(
            model_name='hostinfo',
            name='account',
            field=models.CharField(blank=True, default='root', max_length=100, null=True, verbose_name='账号'),
        ),
        migrations.AlterField(
            model_name='hostinfo',
            name='password',
            field=models.CharField(blank=True, default='Passw0rd', max_length=100, null=True, verbose_name='密码'),
        ),
        migrations.AlterField(
            model_name='hostinfo',
            name='port',
            field=models.CharField(blank=True, default='22', max_length=100, null=True, verbose_name='端口'),
        ),
        migrations.AlterField(
            model_name='hostinfo',
            name='system',
            field=models.CharField(blank=True, default='Cent OS 6.9 x64', max_length=100, null=True, verbose_name='操作系统'),
        ),
        migrations.AddField(
            model_name='projectinfo',
            name='ProjectHost',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='assets.HostInfo', verbose_name='Host'),
        ),
    ]