# -*- coding:utf-8 -*-

fake = FakeTarget(Target)
fake.f() # => "g"
isinstance(fake, Target) # => True
isinstance(fake, FakeTarget) # => True
