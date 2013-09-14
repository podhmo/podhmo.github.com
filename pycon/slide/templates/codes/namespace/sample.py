# -*- coding:utf-8 -*-
import mock

def _getTargetModule():
    import target
    return target

# use random_1
with mock.patch("target.get_random") as m:
    m.return_value = 1
    target = _getTargetModule()
    result = target.use_random1()
    assert result == 2

# use random_2
with mock.patch("target.get_random") as m:
    m.return_value = 1
    target = _getTargetModule()
    result = target.use_random2()
    """AssertionError: 1.054692676442476 != 2"""
    assert result == 2
