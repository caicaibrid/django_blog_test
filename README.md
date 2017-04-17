# django blog


# django python mysql


hashlib

超级管理员
email :admin@newborn-town.com
password :liuxin
加密 liuxin = 4b91719a6e0b1ec03508d3d41490b5f2



## 1. 实验环境
ubuntu14.4 + django1.10.6 + python2.7.6

## 2. 问题描述
在配置完数据库mysite/settings.py后，通常需要运行

python manage.py syncdb

为数据库中每个应用建立一个数据库表。
然而如果你安装的Django Version >= 1.9，那么会出现如下问题：

gzxultra@gzxultraPC:~/django_try/mysite$ python manage.py syncdbUnknown command: 'syncdb'Type 'manage.py help' for usage.gzxultra@gzxultraPC:~/django_try/mysite$ python manage.py syncdbpython manage.py syncdbUnknown command: 'syncdbpython'Type 'manage.py help' for usage.

## 3. 解决方法
在stackoverflow上找到原因和解决方法：
syncdb is deprecated because of the migration system.
Now you can log your changes using makemigrations. This transforms your model changes into python code to make them deployable to another databases.
After you created the migrations you have to apply them: migrate.
So instead of using syncdb you should use makemigrations and then migrate.

简言之：在Django 1.9及未来的版本种使用migrate代替syscdb.

python manage.py migrate


# django 模板过滤器

一、形式：小写：  {{ name | lower }}

二、串联：先转义文本到HTML，再转换每行到 <p> 标签： {{ my_text|escape|linebreaks }}

三、过滤器的参数

显示前30个字：{{ bio | truncatewords:"30" }}

格式化：{{ pub_date | date:"F j, Y" }}

过滤器列表：{{ 123|add:"5" }} 给value加上一个数值

{{ "AB'CD"|addslashes }}： 单引号加上转义号，一般用于输出到javascript中

{{ "abcd"|capfirst }}： 第一个字母大写

{{ "abcd"|center:"50" }}： 输出指定长度的字符串，并把值对中

{{ "123spam456spam789"|cut:"spam" }}： 查找删除指定字符串

{{ value|date:"F j, Y" }}： 格式化日期

{{ value|default:"(N/A)" }}： 值不存在，使用指定值

{{ value|default_if_none:"(N/A)" }}： 值是None，使用指定值

{{ 列表变量|dictsort:"数字" }} ：排序从小到大

{{ 列表变量|dictsortreversed:"数字" }} ：排序从大到小

{% if 92|divisibleby:"2" %} ：判断是否整除指定数字

{{ string|escape }} ：转换为html实体

{{ 21984124|filesizeformat }} ：以1024为基数，计算最大值，保留1位小数，增加可读性

{{ list|first }} ：返回列表第一个元素

{{ "ik23hr&jqwh"|fix_ampersands }}： &转为&amp;

{{ 13.414121241|floatformat }} ：保留1位小数，可为负数，几种形式

{{ 13.414121241|floatformat:"2" }}： 保留2位小数

{{ 23456 |get_digit:"1" }} ：从个位数开始截取指定位置的1个数字

{{ list|join:", " }} ：用指定分隔符连接列表

{{ list|length }} ：返回列表个数

{% if 列表|length_is:"3" %} ：列表个数是否指定数值

{{ "ABCD"|linebreaks }}： 用新行用<p> 、 <br /> 标记包裹

{{ "ABCD"|linebreaksbr }}： 用新行用<br /> 标记包裹

{{ 变量|linenumbers }}： 为变量中每一行加上行号

{{ "abcd"|ljust:"50" }}： 把字符串在指定宽度中对左，其它用空格填充

{{ "ABCD"|lower }}： 小写

{% for i in "1abc1"|make_list %}ABCDE,{% endfor %}： 把字符串或数字的字符个数作为一个列表

{{ "abcdefghijklmnopqrstuvwxyz"|phone2numeric }}： 把字符转为可以对应的数字？？

{{ 列表或数字|pluralize }}： 单词的复数形式，如列表字符串个数大于1，返回s，否则返回空串

{{ 列表或数字|pluralize:"es" }}： 指定es

{{ 列表或数字|pluralize:"y,ies" }}： 指定ies替换为y

{{ object|pprint }}： 显示一个对象的值

{{ 列表|random }}： 返回列表的随机一项

{{ string|removetags:"br p div" }}： 删除字符串中指定html标记

{{ string|rjust:"50" }}： 把字符串在指定宽度中对右，其它用空格填充

{{ 列表|slice:":2" }}： 切片

{{ string|slugify }}： 字符串中留下减号和下划线，其它符号删除，空格用减号替换

{{ 3|stringformat:"02i" }}： 字符串格式，使用Python的字符串格式语法

{{ "E<A>A</A>B<C>C</C>D"|striptags }}： 剥去[X]HTML语法标记

{{ 时间变量|time:"P" }}： 日期的时间部分格式

{{ datetime|timesince }}： 给定日期到现在过去了多少时间

{{ datetime|timesince:"other_datetime" }}： 两日期间过去了多少时间

{{ datetime|timeuntil }}： 给定日期到现在过去了多少时间，与上面的区别在于2日期的前后位置。

{{ datetime|timeuntil:"other_datetime" }}： 两日期间过去了多少时间

{{ "abdsadf"|title }}： 首字母大写

{{ "A B C D E F"|truncatewords:"3" }}： 截取指定个数的单词

{{ "<a>1<a>1<a>1</a></a></a>22<a>1</a>"|truncatewords_html:"2" }}： 截取指定个数的html标记，并补完整

{{ list|unordered_list }}：//ul 多重嵌套列表展现为html的无序列表

{{ string|upper }} ：全部大写

<a href="{{ link|urlencode }}">linkage</a>： url编码

{{ string|urlize }}： 将URLs由纯文本变为可点击的链接。（没有实验成功）

{{ string|urlizetrunc:"30" }}： 同上，多个截取字符数。（同样没有实验成功）

{{ "B C D E F"|wordcount }}： 单词数

{{ "a b c d e f g h i j k"|wordwrap:"5" }}： 每指定数量的字符就插入回车符

{{ boolean|yesno:"Yes,No,Perhaps" }}： 对三种值的返回字符串，对应是 非空,空,None

加法
{{value|add:10}}
note:value=5,则结果返回15

减法
{{value|add:-10}}
note:value=5,则结果返回-5，加一个负数就是减法了

乘法
{% widthratio 5 1 100%}
note:等同于：(5 / 1) * 100 ，结果返回500，withratio需要三个参数，它会使用参数1/参数2*参数3的方式进行运算，进行乘法运算，使「参数2」=1

除法
{% widthratio 5 100 1%}
note:等同于：(5 / 100) * 1,则结果返回0.05,和乘法一样，使「参数3」= 1就是除法了。

### 关闭自动转义
{% autoescape off %}
    {{ ele.content |truncatewords_html:"2" }}
{% endautoescape %}
