# -*- coding:utf-8 -*-
import mock

class Foo(object):
    def __init__(self, x, y):
        self.x = x
        self.y = y

class FooForTest(Foo):
    x = mock.DEFAULT
    y = mock.DEFAULT

with mock.patch("__main__.Foo", 
                autospec=FooForTest) as m:

    assert Foo(10, 20).x == mock.DEFAULT
