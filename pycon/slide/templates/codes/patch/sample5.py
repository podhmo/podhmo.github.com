# -*- coding:utf-8 -*-
import mock
from collections import Counter

#mock.patch.object
with mock.patch.object(Counter, "__getitem__") as m:
    m.return_value = mock.sentinel.cnt
    c = Counter()
    c[0] = 10000000000000000
    assert c[0] == mock.sentinel.cnt


#mock.patch.dict
D = {"key": "value"}
with mock.patch.dict(D, k="v"):
    assert D["k"] == "v"
assert D.get("k", None) is None

m = mock.Mock()
m.boo.return_value = "boo!"
with mock.patch.dict("sys.modules", foo=m):
    import foo
    assert foo.boo() == "boo!"

