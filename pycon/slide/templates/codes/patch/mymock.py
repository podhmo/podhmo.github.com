# -*- coding:utf-8 -*-
class MyMock(object):
    def __init__(self, name='*'):
        self.name = name

    def __getattr__(self, k):
        c = self.__class__(name=k)
        setattr(self, k, c)
        return c

    def __call__(self, *args, **kw):
        if hasattr(self, "return_value"):
            return self.return_value
        raise Exception("not callable")
