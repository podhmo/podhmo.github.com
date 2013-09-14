# -*- coding:utf-8 -*-
import mock

with mock.patch("target.get_random") as m:
    import target
    assert target.__dict__["get_random"] == m
    print target.myrandom.get_random
    # [function get_random at 0x1014aa050]
