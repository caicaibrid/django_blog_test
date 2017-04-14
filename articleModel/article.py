# coding:utf-8
# Author : caicai

from django.shortcuts import render,redirect
from public.mysql_conn import dbconn,db_query,db_update
from userModel.views import isLogin
from datetime import datetime
from public.loadFile import fileWrite
from comment.views import commentList
import math
error = ""


@dbconn
def addActicle(request,conn,id=""):
    global error
    isRole = isLogin(request)
    if isRole:
        article = {
            "result":[]
        }
        sql = "select * from articleClass"
        result = db_query(conn, sql)
        if id:
            sql = "select * from article where id=%d"%int(id)
            article = db_query(conn, sql)

        return render(request, "addActicle.html",{
            "title":"添加文章",
            "error":error,
            "articleClassList":result["result"],
            "article":article["result"]
        })
    else:
        return redirect("/")
@dbconn
def addArticleClass(request,conn=None,id=""):
    global error
    isRole = isLogin(request)
    if isRole:
        if request.method == "GET":
            result = {
                "result":[]
            }
            if id:
                sql = "select * from articleClass where id=%d" % int(id)
                result = db_query(conn, sql)
            return render(request,"addActicleClass.html",{
                "title":"文章分类",
                "error":error,
                "articleClass":result["result"]
            })
        else:
            className = request.POST.get("className")
            if not id:
                if not className:
                    error = "类别不能为空!"
                    return  redirect("/addArticleClass")

                query_sql = "select * from articleClass where className='%s'"% className

                result = db_query(conn,query_sql)

                result = result["result"]

                if not len(result):
                    insert_sql = "insert into articleClass (className) values ('%s')"% className
                    print insert_sql
                    result = db_update(conn,insert_sql)
                    return redirect("/")
                else:
                    error = "类别已存在!"
                    return redirect("/addArticleClass")
            else:
                sql = "update articleClass set className='%s' where id=%d"%(className,int(id))
                print sql
                result = db_update(conn,sql)
                return  redirect("/ArticleClassList")

    else:
        return redirect("/")

@dbconn
def ArticleClassList(request,conn=None):
    isRole = isLogin(request)
    if isRole:
        sql = "select * from articleClass"
        result = db_query(conn,sql)

        return render(request,"ArticleClassList.html",{
            "title":"分类列表",
            "ArticleClassList":result["result"]
        })
    else:
        return redirect("/")

@dbconn
def articleList(request,conn=None):

    isRole = isLogin(request)
    pageNum = int(request.GET.get("page", 1))
    limit = int(request.GET.get("limit", 9))

    if isRole:
        sql = "select * from article limit %d,%d" % (int(pageNum-1)*limit,limit)
        result = db_query(conn, sql)
        # 查询总共的条数
        sql = 'select count(*) as TotalNum from article'
        TotalNum = db_query(conn, sql)
        TotalNum = TotalNum["result"][0]["TotalNum"]
        TotalPage = (TotalNum / float(limit))

        return render(request, "ArticleList.html", {
            "title": "文章列表",
            "ArticleList": result["result"],
            "page": {
                "TotalPage": int(math.ceil(TotalPage)),
                "limit": limit,
                "pageNum": pageNum
            }
        })
    else:
        return redirect("/")

@dbconn
def delArticleClass(request,conn=None,id=""):
    isRole = isLogin(request)
    if isRole:
        sql = "delete from articleClass where id=%d"%int(id)
        result = db_update(conn,sql)

        return redirect("/ArticleClassList")
    else:
        return redirect("/")


@dbconn
def delArticle(request,conn=None,id=""):
    isRole = isLogin(request)
    if isRole:
        sql = "delete from article where id=%d"%int(id)
        result = db_update(conn,sql)

        return redirect("/articleList")
    else:
        return redirect("/")



@dbconn
def apiAddActicle(request,conn=None,id=""):
    global error
    isRole = isLogin(request)
    if isRole:
        title = request.POST.get("title",False)
        content = request.POST.get('content',False)
        imgStrem = request.FILES.get("file",None)
        dates = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
        class_id = request.POST.get("class_id",False)
        img_url = fileWrite(imgStrem)
        if title and content and class_id:
            pass
        else:
            error = "文章标题 类别 分类 不能为空!"
            return redirect("/addArticle")

        if not id:
            sql = "insert into article (title, content, create_time, image_url,class_id) VALUES ('%s','%s','%s','%s',%d)"%(title, content, dates,img_url,int(class_id))
            result = db_update(conn, sql)
            return redirect("/")
        else:
            sql = "update article set title='%s',content='%s',create_time='%s',image_url='%s',class_id=%d where id=%d"%(title, content, dates,img_url,int(class_id),int(id))
            print sql
            result = db_update(conn,sql)
            return redirect("/articleList")
    else:
        return redirect("/")


@dbconn
def articleDetail(request,conn=None,_id=None):

    if _id:
        _id = int(_id)

    sql = "select * from article WHERE id=%d"%_id
    result = db_query(conn, sql)

    #查询评论列表
    commList = commentList(request,conn,_id)

    print commList
    return render(request, "articleDetail.html", dict({
        "title": "文章详情",
        "commList":commList["result"]
    }, **result))