# -*- coding:utf-8 -*-
from patch import patch
from target import whattime_is_it, notify

def greeting(name):
    hour = whattime_is_it()
    if 0 <= hour <= 4:
        fmt = "{name}, Goto Bed!!"
        notify(fmt.format(name=name))

# hmm.. not decorator
with patch("__main__.whattime_is_it") as m0:
    m0.return_value = 1
    with patch("__main__.notify") as m1:
        greeting("Foo")
        m1.assert_called_with("Foo, Goto Bed!!")
