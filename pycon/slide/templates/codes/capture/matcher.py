# -*- coding:utf-8 -*-
def notify(obj, message):
    raise Exception

def notify_object(val):
    obj = Value(val)
    notify(obj, object())

class Value(object):
    def __init__(self, val):
        self.val = val

class Matcher(object):
    def __init__(self, o):
        self.o = o
    def __eq__(self, o):
        for k in ["__class__", "val"]:
            if getattr(self.o, k) != getattr(o, k):
                return False
        return True
