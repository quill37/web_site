from django.contrib import admin
from news.models import Categrory,News
# Register your models here.
class CategoryAdmin(admin.ModelAdmin):
    list_display = ('id','name')

class NewsAdmin(admin.ModelAdmin):
    list_display = ('title','category','created_at')


admin.site.register(Categrory,CategoryAdmin)
admin.site.register(News,NewsAdmin)