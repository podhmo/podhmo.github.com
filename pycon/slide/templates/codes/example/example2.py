# -*- coding:utf-8 -*-
import mock
import random

original = random.random
with mock.patch.object(random, "random") as m:
    m.side_effect = lambda : original > 0.5
    assert random.random() in [True, False]
    assert random.random() in [True, False]

m = mock.Mock()
with mock.patch.dict("sys.modules", random=m):
    m.random.side_effect = [10, 20]
    import random
    assert random.random() == 10
    assert random.random() == 20
