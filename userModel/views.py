# coding: utf-8
from django.shortcuts import render,redirect
from public.mysql_conn import dbconn,db_update,db_query
from public.loadFile import fileWrite

# Create your views here.
error = ""

def login(request,conn=None):
    if request.method == "GET":
        return render(request,"login.html",{
            "title":"登录"
        })
    else:
        username = request.POST.get("username","")
        password = request.POST.get("password","")
        code = request.POST.get("code","")


@dbconn
def register(request,conn=None):
    global error
    if request.method == "GET":
        return render(request,"register.html",{
            "title":"注册",
            "error": error
        })
    else:
        username = request.POST.get("username","")
        pwd = request.POST.get("password","")
        email = request.POST.get("email","")
        img_url = request.FILES.get("file","")
        code = request.POST.get("code","")

        img_url = fileWrite(img_url)

        if username and pwd and email:
            sql = "insert into user (username, password, email, img_url) VALUES ('%s','%s','%s','%s')" % (username,pwd,email,img_url)
            print sql
            result = db_update(conn,sql)
            return redirect("/")
        else:
            error = "用户名 密码 邮箱不能为空!"
            return redirect("/register")


