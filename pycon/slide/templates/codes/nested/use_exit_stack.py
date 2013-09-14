# -*- coding:utf-8 -*-
import mock
from contextlib import ExitStack

with ExitStack() as st:
    m0 = st.enter_context(mock.patch("foo.bar.boo"))
    m1 = st.enter_context(mock.patch("foo.bar.booo"))
    m2 = st.enter_context(mock.patch("foo.bar.boooo"))
    m3 = st.enter_context(mock.patch("foo.bar.booooo"))

    do_something()
