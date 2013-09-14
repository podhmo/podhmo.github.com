# -*- coding:utf-8 -*-

import unittest
import mock

class Tests(unittest.TestCase):
    def _callFUT(self, *args, **kwargs):
        from target import publish_pp 
        return publish_pp(*args, **kwargs)

    @mock.patch("target.Book")
    def test_it(self, m): #expected pp
        m.return_value.pp.return_value = "mock"
        from target import Event
        ev = Event()
        self._callFUT(ev)
        expected = ("publish", "mock")
        self.assertEquals(ev.events[0], expected)
        m.return_value.pp.assert_called_with()

