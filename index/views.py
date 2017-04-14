# coding:utf-8

from django.shortcuts import render,redirect

from public.mysql_conn import dbconn,db_query,db_update

import math

# Create your views here.

@dbconn
def index(request,conn=None,id=""):
    # 删除详情的error
    if request.session.has_key("error"):
        del request.session["error"]

    search = request.GET.get("search", "")
    # 分页
    pageNum = int(request.GET.get("page", 1))
    limit = int(request.GET.get("limit", 9))
    sql = 'select * from article WHERE title LIKE "%%%s%%" limit %d,%d' % (search,int(pageNum-1)*limit,limit)
    result = db_query(conn, sql)

    TotalPage = 0

    if not id:
        # 查询总数
        sql = 'select count(*) as TotalNum from article WHERE title LIKE "%%%s%%"' % search
        # 查询总共的条数
        TotalNum = db_query(conn, sql)
        print TotalNum
        TotalNum = TotalNum["result"][0]["TotalNum"]

        # 分类和对应条数的查询
        class_sql = "select a.className,a.id,count(b.id) as count from articleClass a left join article b on a.id=b.class_id group by a.className;"
        classList = db_query(conn,class_sql)
        TotalPage = (TotalNum/float(limit))

        return render(request,"index.html",dict({
            "title":"首页",
            "classList":classList["result"],
            "page":{
                "TotalPage":int(math.ceil(TotalPage)),
                "limit":limit,
                "pageNum":pageNum
            }
        },**result))
    else:
        # id存在 查询类别下边的所有数据
        class_sql = "select * from article where class_id=%d"%int(id)
        result = db_query(conn, class_sql)
        TotalNum = len(result["result"])
        TotalPage = (TotalNum/float(limit))
        return render(request, "index.html", dict({
            "title": "首页",
            "page":{
                "TotalPage":int(math.ceil(TotalPage)),
                "limit":limit,
                "pageNum":pageNum
            }
        }, **result))
error = ""



def home(request):

    if request.session.has_key("user") and request.session["user"]["role"] == 3:
        return  render(request,"home.html",{
            "title":"Home"
        })
    else:
        return redirect("/")

