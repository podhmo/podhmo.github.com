# -*- coding:utf-8 -*-
import mock

m = mock.Mock(spec=["foo"])
assert "foo" in m._mock_methods
assert not "fbar" in m._mock_methods

m.foo
# m.bar #AttributeError

from target import Book
mBook = mock.Mock(spec=Book)

mBook.normalize
# mBook.pp
