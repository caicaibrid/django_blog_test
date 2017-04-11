# coding:utf-8

from datetime import datetime

from django.shortcuts import render,redirect

from public.loadFile import fileWrite
from public.mysql_conn import dbconn,db_query,db_update


# Create your views here.

@dbconn
def index(request,conn=None):
    search = request.GET.get("search","")
    sql = 'select * from article WHERE title LIKE "%%%s%%"'%search
    result = db_query(conn,sql)
    print result
    return render(request,"index.html",dict({
        "title":"文章列表"},**result))

error = {}

def addActicle(request):
    global error
    return render(request, "addActicle.html",{
        "title":"添加文章",
        "error":error
    })

@dbconn
def apiAddActicle(request,conn=None):
    global error
    title = request.POST.get("title",False)
    content = request.POST.get('content',False)
    imgStrem = request.FILES.get("file",None)
    dates = datetime.now().strftime('%Y-%m-%d %H:%M:%S')

    img_url = fileWrite(imgStrem)

    if title and content :
        sql = "insert into article (title, content, create_time, image_url) VALUES ('%s','%s','%s','%s')"%(title, content, dates,img_url)
        result = db_update(conn, sql)
        return redirect("/")
    else:
        error = {
                "title":"不能为空",
                "content":"不能为空"
            }
        return redirect("/addArticle")

@dbconn
def articleDetail(request,conn=None,_id=None):
    if _id:
        _id = int(_id)
    print _id
    sql = "select * from article WHERE id=%d"%_id
    result = db_query(conn, sql)
    print result
    return render(request, "articleDetail.html", dict({
        "title": "文章详情"}, **result))


