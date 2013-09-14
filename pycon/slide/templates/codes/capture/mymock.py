# -*- coding:utf-8 -*-
class MyMock(object):
    def __init__(self, name='*'):
        self.name, self.call_args = name, None

    def __getattr__(self, k):
        c = self.__class__(name=k)
        setattr(self, k, c)
        return c

    def __call__(self, *args, **kw):
        if hasattr(self, "return_value"):
            self.call_args = (args, kw)
            return self.return_value
        raise Exception("not callable")

    def assert_called_with(self, *args, **kw):
        vls = self.call_args
        if vls is None:
            raise AssertionError("not called")
        if vls != (args, kw):
            raise AssertionError("! {}".format(vls))
