# -*- coding:utf-8 -*-
from mymock import MyMock

def complex_query(qs, name):
    qs = qs.where(name=name)
    qs = qs.where(pemission_id=1)
    qs = qs.where(deleted_at=None)
    return qs.as_list()

## not mock.Mock()
m = MyMock()
expected = ["Foo"]
m.where.return_value.where.return_value.where.return_value.as_list.return_value = expected

complex_query(m, "Foo") # => ["Foo"]
