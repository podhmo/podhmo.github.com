# -*- coding:utf-8 -*-
import mock
import unittest

class Tests(unittest.TestCase):
    def test_side_effect_exception(self):      # call input() raise RunTimeError
        m = mock.Mock()
        m.side_effect = RuntimeError("uggg")
        with self.assertRaises(RuntimeError):
            input("input string") 

    def test_attribute_error(self):            # access .foo raise AttributeError
        m = mock.Mock()
        m.foo.bar.boo
        with self.assertRaises(AttributeError):
            del m.foo
            m.foo


