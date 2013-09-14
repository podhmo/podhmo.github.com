# -*- coding:utf-8 -*-
import mock
import unittest

class Tests(unittest.TestCase):
    def _callFUT(self, *args, **kwargs):
        from target import after_submit
        return after_submit(*args, **kwargs)

    @mock.patch("target.notify_message")
    @mock.patch("target.enqueue_data")
    def test_it(self, m0, m1):
        data = mock.sentinel.Data
        self._callFUT(data, "Foo")

        m0.assert_called_once_with(data)
        m1.assert_called_once_with("Foo")
