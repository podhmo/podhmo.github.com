# -*- coding:utf-8 -*-
# as function decorator

def with_open(filename):
    def _with_open(use):
        with open(filename) as rf:
            use(rf)
    return _with_open

@with_open("anything.txt")
def use_rf(rf):
    return do_something(rf)

