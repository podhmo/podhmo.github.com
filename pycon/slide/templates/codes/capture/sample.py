# -*- coding:utf-8 -*-
import mock

m = mock.Mock()
m("I'm sleepy..", where="office?")

# ok.
m.assert_called_with("I'm sleepy..", where="office?")
# failure.

try:
    m.assert_called_with("good night", where="bed")
except AssertionError as e:
    assert "Actual call: mock(\"I'm sleepy..\", where='office?')" in str(e)
else:
    raise Exception

m1 = mock.Mock()
m1(1)(2).f(3).g(4)
m1.assert_called_with(1)
m1(1).assert_called_with(2)
m1(1)(2).f.assert_called_with(3)
