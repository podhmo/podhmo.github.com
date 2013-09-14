# -*- coding:utf-8 -*-
from mock import patch
from target import whattime_is_it, notify

def greeting(name):
    hour = whattime_is_it()
    if 0 <= hour <= 4:
        fmt = "{name}, Goto Bed!!"
        notify(fmt.format(name=name))

@patch("__main__.notify") #patch
@patch("__main__.whattime_is_it") #patch
def test(m0,m1):
    m0.return_value = 1 #mimic(fake)
    greeting("Foo")
    m1.assert_called_with("Foo, Goto Bed!!") # captured

