# -*- coding:utf-8 -*-

class Temporary(object):
    def __init__(self):
        self.patching = set()

    def patch(self, name, val):
        _name = "_"+name
        orig = getattr(self, name)
        setattr(self, _name, orig)
        setattr(self, name, val)
        self.patching.add(name)

    def release(self):
        for name in self.patching:
            _name = "_"+name
            orig = getattr(self, _name)
            setattr(self, name, orig)
            delattr(self, _name)
        self.patching = set()
