from django.db import models
from ckeditor.fields import RichTextField
from ckeditor_uploader.fields import RichTextUploadingField
# Create your models here.

class Categrory(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField('分类长度',max_length=20)

    class Meta:
        db_table = 'categrory'
        verbose_name = '分类管理'
        verbose_name_plural = '分类管理'

    def __str__(self):
        return self.name

class News(models.Model):
    id = models.AutoField(primary_key=True)
    title = models.CharField('标题',max_length=100)
    content = RichTextUploadingField()
    cover = models.ImageField('封面',upload_to='news',blank=True,null=True,help_text='最佳尺寸：480*270')
    created_at = models.DateTimeField('创建时间',auto_now_add=True,editable=True)       #创建日期
    updated_at = models.DateTimeField('修改日期',auto_now_add=True,editable=True)
    category = models.ForeignKey(Categrory,on_delete=models.CASCADE)

    class Meta:
        db_table = 'news'
        verbose_name = '新闻管理'
        verbose_name_plural = '新闻管理'

    def __str__(self):
        return self.title