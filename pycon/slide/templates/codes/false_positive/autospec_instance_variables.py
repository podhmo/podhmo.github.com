# -*- coding:utf-8 -*-
import mock

class Foo(object):
    def __init__(self, x, y):
        self.x = x
        self.y = y

with mock.patch("__main__.Foo", 
                autospec=True) as m:
    try:
        Foo(10, 20).x 
    except AttributeError:
        "AttributeError: no attribute 'x'"
    else:
        raise Exception
