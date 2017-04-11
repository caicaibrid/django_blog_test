# coding:utf-8
# Author:caicai

import MySQLdb
import MySQLdb.cursors
from blog_caicai.settings import DATABASES

def dbconn(fn):
    def wrap(request,*args,**kwargs):
        print args
        conn = MySQLdb.connect(db=DATABASES["default"]["NAME"],
                               user=DATABASES["default"]["USER"],
                               passwd=DATABASES["default"]["PASSWORD"],
                               host=DATABASES["default"]["HOST"],
                               charset="utf8",
                               cursorclass=MySQLdb.cursors.DictCursor
                               )
        conn.cursor().execute('SET NAMES utf8mb4')
        conn.cursor().execute("SET CHARACTER SET utf8mb4")
        conn.cursor().execute("SET character_set_connection=utf8mb4")

        ret = fn(request, conn, *args, **kwargs)
        conn.close()
        return ret

    return wrap;

def db_query(conn, sql, params=None):
    # 查询数据库
    cursor = conn.cursor()
    if not params:
        try:
            cursor.execute(sql)
        except Exception as e:
            print "database query failed!", e
            return {"errno": 500, "errmsg": "sql_query error"}
    else:
        try:
            cursor.execute(sql, params)
        except Exception as e:
            print "database query failed!", e
            return {"errno": 500, "errmsg": "sql_query error"}
    res = cursor.fetchall()
    return {"errno":200, "result":res}


def db_update(conn, sql, params=None):
    # 插入或更新数据库
    cursor = conn.cursor()
    try:
        cursor.execute(sql)
        conn.commit()
    except Exception as e:
        print e, params
        return {"errno": 500, "errmsg": "sql_update error"}
    return {"errno": 200,"errmsg":"success"}