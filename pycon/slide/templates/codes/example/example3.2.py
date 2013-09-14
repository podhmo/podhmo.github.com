# -*- coding:utf-8 -*-
from target import Model, create_model
import mock
from mock import patch

# 通常のpatchだと、selfに触れない。
with patch.object(Model, "save") as m:
    m.side_effect = lambda self: None
    create_model(mock.sentinel.value)
    "TypeError: [lambda]() takes exactly 1 argument (0 given)"

with patch.object(Model, "save", autospec=True) as m:
    def assertion_when_save(self):
        assert self.value == mock.sentinel.value
        assert self.actions == ["create"]
    m.side_effect = assertion_when_save
    create_model(mock.sentinel.value)
