# -*- coding:utf-8 -*-
import mock
import unittest

class Tests(unittest.TestCase):
    def _callFUT(self, *args, **kwargs):
        from target import visit_shop #2.x
        return visit_shop(*args, **kwargs)

    @mock.patch("target.is_holiday")
    def test_it(self, m):
        m.return_value = True
        result = self._callFUT("Shop")

        expected = "Shop is close."
        self.assertEqual(result, expected)
