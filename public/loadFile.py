# coding: utf-8
import os

BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

def fileWrite(imgStrem):
    if imgStrem and type(imgStrem) != str and type(imgStrem) != unicode:
        url = os.path.join(BASE_DIR+"/static/upload/",imgStrem.name)
        with open(url,"wb+") as f :
            for line in imgStrem.chunks():
                f.write(line)

        return "/static/upload/" + imgStrem.name
    else:
        return imgStrem
