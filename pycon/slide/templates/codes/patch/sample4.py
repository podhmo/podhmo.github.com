# -*- coding:utf-8 -*-
import mock

mock.patch.TEST_PREFIX = "use_"

@mock.patch("foo.bar.Boo.__iter__") 
class Tests(object):
    def use__class_decorator(self, m):
        m.return_value = iter([1, 2])
        do_something()

    def use__class_decorator2(self, m):
        m.return_value = iter([True])
        do_something()

