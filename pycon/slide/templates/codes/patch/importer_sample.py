# -*- coding:utf-8 -*-
import mock

Bee = mock._importer("foo.bar.boo.Bee")
import foo.bar.boo
foo.bar.boo.Bee == Bee # => True

Bee = mock._importer("foo.baar.boo.Bee")
import foo
foo.baar.boo.Bee == Bee # => True
