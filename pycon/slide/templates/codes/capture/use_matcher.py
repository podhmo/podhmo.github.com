# -*- coding:utf-8 -*-
import mock
import unittest
from matcher import Matcher
from matcher import notify_object, Value

class Tests(unittest.TestCase):
    @mock.patch("matcher.notify")
    def test_check_with_eq(self, m):
        v = mock.sentinel.value
        notify_object(v)
        with self.assertRaises(AssertionError):
            m.assert_called_with(Value(v),
                                      mock.ANY)

    @mock.patch("matcher.notify")
    def test_check_with_equal(self, m):
        v = mock.sentinel.value
        notify_object(v)
        m.assert_called_with(Matcher(Value(v)),
                             mock.ANY)
