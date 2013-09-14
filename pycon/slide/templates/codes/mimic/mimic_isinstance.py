# -*- coding:utf-8 -*-
class Target(object):
    def f(self):
        return "f"

class FakeTarget(object):
    def __init__(self, spec_class=None):
        self.spec_class = spec_class

    def f(self):
        return "g"
    @property
    def __class__(self):
        return self.spec_class or type(self)
