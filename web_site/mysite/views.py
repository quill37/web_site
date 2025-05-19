from django.shortcuts import render
from slide.models import Slide
from team.models import Team
from news.models import News
# Create your views here.
def index(request):
    # 获取Slide表中的所有数据
    slides = Slide.objects.all()

    #获取全部成员
    team = Team.objects.all().order_by('-rank')

    #获取资讯中心新闻
    # news = News.objects.filter(categrory_id = 1).order_by('-created_at')[:3]

    return render(request,'index.html',{
        'slides':slides,
        'team' :team,
        # 'news':news,
                                        })
