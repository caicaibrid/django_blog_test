# coding:utf-8

from django.conf.urls import url
from django.contrib import admin

from index.views import index,home
from userModel.views import login,register,logout,userList,delUser,updateUser,verifyUser
from public.code import drawCode
from articleModel.article import addArticleClass,ArticleClassList,delArticleClass,articleList,delArticle,addActicle,apiAddActicle,articleDetail
from comment.views import addComment,commentList

urlpatterns = [
    url(r'^$', index),
    url(r'^(\d+)/$', index), #分类
    url(r'^addArticle/(\d*)',addActicle),
    # url(r'^admin/', admin.site.urls), #django默认后台登录入口
    url(r'^api/addArticle/(\d*)', apiAddActicle),
    url(r'^articleDetail/(\d+)$',articleDetail),
    url(r'^login/$',login),
    url(r'^register/$',register),
    url(r'^api/code/',drawCode),
    url(r'^logout/$',logout),
    url(r'^addArticleClass/(\d*)$',addArticleClass),
    url(r'^index/$',home),
    url(r'^userList/$',userList),
    url(r'^delUser/(\d+)/$',delUser),
    url(r'^updateUser/(\d+)/$',updateUser),
    url(r'verifyUser/(\d*)$',verifyUser),
    url(r'ArticleClassList/$',ArticleClassList),
    url(r'delArticleClass/(\d+)/$',delArticleClass),
    url(r'delArticle/(\d+)/$',delArticle),
    url(r'^articleList/$',articleList),
    url(r'^addComment/$',addComment),
    url(r'^commentList/$',commentList)
]
