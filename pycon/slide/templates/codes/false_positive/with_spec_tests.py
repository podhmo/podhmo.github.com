# -*- coding:utf-8 -*-

import unittest
from mock import patch

class Tests(unittest.TestCase):
    def _callFUT(self, *args, **kwargs):
        from target import publish_pp 
        return publish_pp(*args, **kwargs)

    def test_it(self): #expected pp
        from target import Book
        with patch("target.Book",spec=Book) as m:
            m.return_value.pp.return_value = "mk"
            from target import Event
            ev = Event()
            self._callFUT(ev)
            expected = ("publish", "mock")
            self.assertEquals(ev.events[0], expected)
            m.return_value.pp.assert_called_with()
