# coding: utf-8
from django.shortcuts import render,redirect
from public.mysql_conn import dbconn,db_update,db_query
from public.loadFile import fileWrite
import hashlib
import types
import re



def md5(s):
    s = str(s)
    if type(s) is types.StringType:
        hash = hashlib.md5()
        hash.update(s)
        return hash.hexdigest()
    else:
        return ""

def isLogin(request):
    if request.session.has_key("user"):
        role = request.session["user"]["role"]
        if role == 3:
            return True
        else:
            return False
    else:
        return False

error = ""

@dbconn
def login(request,conn=None):
    global error
    if request.method == "GET":
        return render(request,"login.html",{
            "title":"登录",
            "error":error
        })
    else:
        email = request.POST.get("email","")
        password = request.POST.get("password","")
        code = request.POST.get("code","")

        if str(code).lower() != request.session.get("code", ""):
            error = "验证码输入有误!"
            return redirect("/login")

        sql = "select * from user where email='%s' " % email

        result = db_query(conn, sql)

        result = result["result"]

        if len(result):
            if md5(password) != result[0]["password"]:
                error = "输入的密码不正确!"
                return redirect("/login")

            # 将用户注册信息保存在session中 删除code的session

            del request.session["code"]
            request.session["user"] = {
                "username": result[0]["username"],
                "email": result[0]["email"],
                "img_url": result[0]["img_url"],
                "role":result[0]["role"],
                "id":result[0]["id"]
            }

            if result[0]["role"] == 3:
                return redirect("/index")
            return redirect("/")
        error = "没有这个用户!"
        return redirect("/login")

def logout(request):
    del request.session["user"]
    return redirect("/login")


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
        confirmPwd = request.POST.get("confirmPassword","")
        email = request.POST.get("email","")
        img_url = request.FILES.get("file","/static/image/load.jpg")
        code = request.POST.get("code","")
        role = request.POST.get("role","")

        if username and pwd and email and role:
            if not re.match(r'(\w)+\@[a-zA-Z0-9_-]+\.([a-zA-Z]+)*',email):
                error = "请输入正确的邮箱!"
                return redirect("/register")
            if pwd != confirmPwd:
                error = "两次输入密码不匹配!"
                return redirect("/register")
            if str(code).lower() != request.session.get("code",""):
                error = "验证码输入有误!"
                return redirect("/register")

            pwd = md5(pwd)
            img_url = fileWrite(img_url)
            # 注册语句
            sql = "insert into user (username, password, email, img_url, role) VALUES ('%s','%s','%s','%s',%d)" % (username,pwd,email,img_url,int(role))
            result = db_update(conn,sql)
            # 查询当前注册帐号的id
            sql = "select id from user where email='%s'"%email
            result = db_query(conn,sql)
            result = result["result"]
            # 将用户注册信息保存在session中 删除code的session
            del request.session["code"]
            request.session["user"] = {
                "username": username,
                "email": email,
                "img_url": img_url,
                "role": role,
                "id":result[0]["id"]
            }

            return redirect("/")
        else:
            error = "用户名 密码 邮箱 角色不能为空!"
            return redirect("/register")

@dbconn
def userList(request,conn=None):
    isRole = isLogin(request);
    if isRole:
        sql = "select * from user";
        result = db_query(conn,sql)
        result = result["result"]

        return render(request,"userList.html",{
            "title":"用户列表",
            "userList":result
        })
    else:
        return redirect("/")

@dbconn
def delUser(request,conn=None,id=""):
    isRole = isLogin(request);
    if isRole:
        id = int(id)
        sql = "delete from user where id=%d"%id
        result = db_update(conn,sql)

        return  redirect("/userList")

@dbconn
def updateUser(request,conn=None,id=""):
    global error
    if request.method == "GET":
        sql = "select * from user where id=%d"%int(id)
        result = db_query(conn,sql)
        result = result["result"]
        request.session["user"]["img_url"] = result[0]["img_url"]
        return render(request,"register.html",{
                    "title":"修改信息",
                    "id":int(id),
                    "userInfo":result,
                    "error":error
                })
    else:
        username = request.POST.get("username", "")
        pwd = request.POST.get("password", "")
        confirmPwd = request.POST.get("confirmPassword")
        email = request.POST.get("email", "")
        img_url = request.FILES.get("file",request.session["user"]["img_url"])
        code = request.POST.get("code", "")
        role = request.POST.get("role", "")

        id = int(id)

        if username and pwd and email and role:
            if not re.match(r'(\w)+\@[a-zA-Z0-9_-]+\.([a-zA-Z]+)*', email):
                error = "请输入正确的邮箱!"
                return redirect("/updateUser/%d"%id)
            if pwd != confirmPwd:
                error = "两次输入密码不匹配!"
                return redirect("/updateUser/%d"%id)
            if str(code).lower() != request.session.get("code", ""):
                error = "验证码输入有误!"
                return redirect("/updateUser/%d"%id)

            sql = "select * from user where email='%s' " % email
            result = db_query(conn, sql)
            result = result["result"]
            print result
            if len(result):
                pwd = md5(pwd)
                img_url = fileWrite(img_url)
                sql = "update user set username='%s', password='%s', email='%s', img_url='%s', role=%d where id=%d" % (username, pwd, email, img_url, int(role),id)

                result = db_update(conn, sql)
                request.session["user"]["img_url"] = img_url
                return redirect("/userList")
            else:
                error = "用户不存在!"
                return redirect("/updateUser/%d" % id)
        else:
            error = "用户名 密码 邮箱 角色不能为空!"
            return redirect("/updateUser/%d"%id)

@dbconn
def verifyUser(request,conn=None,id=""):
    isRole = isLogin(request)
    if isRole:
        if not id:
            sql = "select * from user where role=2"
            result = db_query(conn,sql)
            return render(request,"verifyUser.html",{
                "title":"审核用户",
                "verifyUserList":result["result"]
            })
        else:
            sql = "update user set role =3 where id=%d"%int(id)
            result = db_update(conn,sql)

            return redirect("/verifyUser")
    else:
        return redirect("/")