# -*- coding:utf-8 -*-

import mock
from contextlib import nested

with nested(
        mock.patch("foo.bar.boo"), 
        mock.patch("foo.bar.booo"), 
        mock.patch("foo.bar.boooo"), 
        mock.patch("foo.bar.booooo")) as (m0, m1, m2, m3):
    do_something()
