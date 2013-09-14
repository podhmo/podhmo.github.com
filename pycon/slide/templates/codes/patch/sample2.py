# -*- coding:utf-8 -*-
import mock

with mock.patch("__builtin__.open") as m:
    m.return_value.read.return_value = "data"
    result = open("test.txt").read()
    assert result == "data"

def now():
    "属性が設定できないのはC拡張のtypeでした"
    from datetime import datetime
    return datetime.now()

with mock.patch("__main__.now") as m:
    m.return_value = "now!"
    result = now()
    assert result == "now!"
now() # => 2013-09-08 11:30:15.572884

