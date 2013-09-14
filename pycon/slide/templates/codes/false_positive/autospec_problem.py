# -*- coding:utf-8 -*-
import mock

class Foo(object):
    def foo(self):
        return "foo"


# test
with mock.patch("__main__.Foo", 
                autospec=True) as m:
    m.return_value.foo.return_value = 10
    assert Foo().foo() == 10

# real application
assert Foo().foo() == "foo"

