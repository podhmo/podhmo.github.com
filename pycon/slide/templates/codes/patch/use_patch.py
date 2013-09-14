# -*- coding:utf-8 -*-
from patch import patch

with patch("__builtin__.open") as m:
    m.return_value.read.return_value = "data"
    result = open("test.txt").read()
    assert result == "data"

def now():
    "属性が設定できないのはC拡張のtypeでした"
    from datetime import datetime
    return datetime.now()

try:
    with patch("__main__.now") as m:
        m.return_value = "now!"
        result = now()
        assert result == "now!"
        raise Exception
except:
    pass
now() # => 2013-09-08 11:30:15.572884
