# django blog


# django python mysql


hashlib

超级管理员
liuxin
liuxin = 4b91719a6e0b1ec03508d3d41490b5f2



# 1. 实验环境
ubuntu14.4 + django1.10.6

# 2. 问题描述
在配置完数据库mysite/settings.py后，通常需要运行

python manage.py syncdb

为数据库中每个应用建立一个数据库表。
然而如果你安装的Django Version >= 1.9，那么会出现如下问题：

gzxultra@gzxultraPC:~/django_try/mysite$ python manage.py syncdbUnknown command: 'syncdb'Type 'manage.py help' for usage.gzxultra@gzxultraPC:~/django_try/mysite$ python manage.py syncdbpython manage.py syncdbUnknown command: 'syncdbpython'Type 'manage.py help' for usage.

# 3. 解决方法
在stackoverflow上找到原因和解决方法：
syncdb is deprecated because of the migration system.
Now you can log your changes using makemigrations. This transforms your model changes into python code to make them deployable to another databases.
After you created the migrations you have to apply them: migrate.
So instead of using syncdb you should use makemigrations and then migrate.

简言之：在Django 1.9及未来的版本种使用migrate代替syscdb.

python manage.py migrate