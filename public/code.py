# coding:utf-8
# Author : caicai

from django.http import HttpResponse

import Image,ImageDraw,ImageFilter,ImageFont

import random

import os

import io

BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

#随机字母
def rndChar():
    return chr(random.randint(65,90))

# 随机颜色1:
def rndColor():
    return (random.randint(64, 255), random.randint(64, 255), random.randint(64, 255))

# 随机颜色2:
def rndColor2():
    return (random.randint(32, 127), random.randint(32, 127), random.randint(32, 127))


def drawCode(request):
    width = 40 * 4
    height = 34

    image = Image.new('RGB',(width,height),(255,255,255))

    #创建font对象
    font = ImageFont.truetype(BASE_DIR+'/static/fonts/Soopafresh.ttf',20)

    #创建draw对象

    draw = ImageDraw.Draw(image)

    #填充每个像素
    for x in range(width):
        for y in range(height):
            draw.point((x,y),fill=rndColor())

    #输出文字
    code = []
    for t in range(4):
        s = rndChar()
        code.append(s)
        draw.text((40*t+10,5),s,font=font,fill=rndColor2())

    request.session["code"] = ''.join(code).lower()

    stream = io.BytesIO()


    image.save(stream,"png")

    return HttpResponse(stream.getvalue())