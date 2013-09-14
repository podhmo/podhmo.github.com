# -*- coding:utf-8 -*-
import unittest
import mock

class Tests(unittest.TestCase):
    def _callFUT(self, *args, **kwargs):
        from target import fn
        return fn(*args, **kwargs)

    def test_it(self):
        m = mock.patch("target.depndents.one")
        m.return_value = 10
        m.start() #mockを有効化
        self._callFUT()
        m.stop() #mockを無効化
