# -*- coding:utf-8 -*-
import mock
import unittest

class Tests(unittest.TestCase):
    def test_property_access_exception(self):
        """obj.foo => we must raise RuntimeError!"""
        m = mock.Mock()                            
        type(m).foo = mock.PropertyMock(side_effect=RuntimeError("hmm"))
        with self.assertRaisesRegexp(RuntimeError, "hmm"):
            m.foo

    def test_this_is_Important(self):
        self.assertNotEqual(mock.Mock(), mock.Mock())
        self.assertNotEqual(type(mock.Mock()), type(mock.Mock()))

        # ordinary, type(object()) == type(object()) is True
