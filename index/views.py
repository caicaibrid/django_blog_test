# coding:utf-8

from django.shortcuts import render,redirect


from public.mysql_conn import dbconn,db_query,db_update


# Create your views here.

@dbconn
def index(request,conn=None,id=""):
    search = request.GET.get("search", "")
    sql = 'select * from article WHERE title LIKE "%%%s%%"' % search
    result = db_query(conn, sql)

    if not id:
        class_sql = "select a.className,a.id,count(b.id) as count from articleClass a left join article b on a.id=b.class_id group by a.className;"
        classList = db_query(conn,class_sql)

        return render(request,"index.html",dict({
            "title":"首页",
            "classList":classList["result"]
        },**result))
    else:
        class_sql = "select * from article where class_id=%d"%int(id)
        result = db_query(conn, class_sql)

        return render(request, "index.html", dict({
            "title": "首页",
        }, **result))
error = ""



def home(request):

    if request.session.has_key("user") and request.session["user"]["role"] == 3:
        return  render(request,"home.html",{
            "title":"Home"
        })
    else:
        return redirect("/")

