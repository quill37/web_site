# Generated by Django 5.1.7 on 2025-03-12 11:52

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Categrory',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('name', models.CharField(max_length=20, verbose_name='分类长度')),
            ],
            options={
                'verbose_name': '分类管理',
                'verbose_name_plural': '分类管理',
                'db_table': 'categrory',
            },
        ),
        migrations.CreateModel(
            name='News',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('title', models.CharField(max_length=100, verbose_name='标题')),
                ('content', models.TextField(verbose_name='新闻内容')),
                ('cover', models.ImageField(blank=True, help_text='最佳尺寸：480*270', null=True, upload_to='news', verbose_name='封面')),
                ('created_at', models.DateTimeField(auto_now_add=True, verbose_name='创建时间')),
                ('updated_at', models.DateTimeField(auto_now_add=True, verbose_name='修改日期')),
                ('category', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='news.categrory')),
            ],
            options={
                'verbose_name': '新闻管理',
                'verbose_name_plural': '新闻管理',
                'db_table': 'news',
            },
        ),
    ]
