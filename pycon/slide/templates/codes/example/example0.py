# -*- coding:utf-8 -*-
import mock

m = mock.Mock()
m.foo.return_value = 10

assert m.foo(10) == 10 #指定した値しか返せない
assert m.foo(10) == 10 

def even_true(v):
    return [True, False][v % 2]
m.bar.side_effect = odd_true #side_effectで関数を登録すると

assert m.bar(10) is True #呼び出した際に、登録した関数が使われる
assert m.bar(9) is False

