# -*- coding:utf-8 -*-
import mock

with mock.patch("foo.bar.boo") as m:
    m.return_value = "mocked"
    do_something()

@mock.patch("foo.bar.boo")
def use_decorator(m):
    m.return_value = "mocked"
    do_something()

# don't use
p = mock.patch("foo.bar.boo")
m = p.start()
m.return_value = "mocked"
do_something()
p.end()
