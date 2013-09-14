# -*- coding:utf-8 -*-
from mymock import MyMock

m = MyMock()
m("I'm sleepy..", where="office?")

# ok.
called_with = m.assert_called_with
called_with("I'm sleepy..", where="office?")
# failure.

try:
    called_with("good night", where="bed")
except AssertionError as e:
    print "it's not real"
else:
    raise Exception

m1 = MyMock()
m1(1)(2).f(3).g(4)
m1.assert_called_with(1)
m1(1).assert_called_with(2)
m1(1)(2).f.assert_called_with(3)
