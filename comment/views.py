# coding:utf-8
# Author : caicai

from django.shortcuts import render,redirect
from public.mysql_conn import dbconn,db_query,db_update
from datetime import datetime

error = ""

@dbconn
def addComment(request,conn=None):
    global error

    if request.method == "POST":
        content = request.POST.get("content")
        print request.POST.get("user_id",0),"------"
        user_id = int(request.POST.get("user_id")) if request.POST.get("user_id") else 0
        article_id = int(request.POST.get("article_id")) if request.POST.get("article_id") else 0
        create_time = dates = datetime.now().strftime('%Y-%m-%d %H:%M:%S')

        if user_id:
            if content:
                sql = "insert into comment (content,user_id,article_id,create_time) values ('%s',%d,%d,'%s')" % (content,user_id,article_id,create_time)
                result = db_update(conn,sql)
            else:
                error = "请输入评论内容!"
        else:
            error = "请登录!"
        request.session["error"] = error
        return redirect("/articleDetail/%d" % article_id)

    else:
        pass


def commentList(request,conn=None,id=""):

    article_id = int(id)

    sql = "select u.img_url,u.username,c.content,c.article_id,c.id,c.create_time  from comment c,user u where c.article_id = %d and u.id = c.user_id " % article_id

    return db_query(conn,sql)