# -*- coding:utf-8 -*-
import mock
import inspect

def foo(x, y=10):
    return (x, y)

inspect.getargspec(foo)
# => ArgSpec(args=['x', 'y'], varargs=None, keywords=None, defaults=(10,))

with mock.patch("__main__.foo") as m:
    m.return_value = "nospec"
    m() # => "nospec"

with mock.patch("__main__.foo", autospec=True) as m:
    m.return_value = "hasspec"
    m()
    # TypeError: [lambda]() takes at least 1 argument (0 given)

