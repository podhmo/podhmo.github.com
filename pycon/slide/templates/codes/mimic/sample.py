# -*- coding:utf-8 -*-
import mock

def complex_query(qs, name):
    qs = qs.where(name=name).where(pemission_id=1)
    return qs.where(deleted_at=None).as_list()


m = mock.Mock()
m.where.return_value.where.return_value.where.return_value.as_list.return_value = ["Foo"]

complex_query(m, "Foo") # => ["Foo"]
