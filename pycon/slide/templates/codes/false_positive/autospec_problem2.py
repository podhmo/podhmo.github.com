# -*- coding:utf-8 -*-
import mock

class Boo(object):
    @property
    def boo(self):
        return "boo"

# test
with mock.patch("__main__.Boo", 
                autospec=True) as m:
    m.return_value.boo.return_value = 10
    assert Boo().boo() == 10 #false positive

# real application
assert Boo().boo() # TypeError
