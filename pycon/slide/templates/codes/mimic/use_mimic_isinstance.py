# -*- coding:utf-8 -*-

fake = FakeTarget()
fake.f() # => "g"
isinstance(fake, Target) # => False
isinstance(fake, FakeTarget) # => True

