# -*- coding:utf-8 -*-
from importer import _importer
from mymock import MyMock

class Patch(object):
    def __init__(self, target, new, attr):
        self.target, self.attr = target, attr
        self.new = new

    def __enter__(self):
        self._orig = getattr(self.target, self.attr)
        new = self.new(name=self.attr)
        setattr(self.target, self.attr, new)
        return new

    def __exit__(self, type, val, tb):
        setattr(self.target, self.attr, self._orig)
        del self._orig

def patch(namespace, new=MyMock):
    target, attr = namespace.rsplit(".", 1)
    return Patch(_importer(target), new, attr)
