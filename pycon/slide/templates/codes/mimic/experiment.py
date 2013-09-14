# -*- coding:utf-8 -*-

"""
TODO: a reason isinstance return True of both classes,  Target, FakeTarget
"""
class Target(object):
    def f(self):
        return "f"

class FakeTarget(object):
    def __init__(self, spec_class=None):
        self.spec_class = spec_class

    def f(self):
        return "g"
    @property
    def __class__(self):
        return self.spec_class or type(self)

fake = FakeTarget()

print(isinstance(fake, Target)) # => True
print(isinstance(fake, FakeTarget)) # => True

fake = FakeTarget(Target)
print(isinstance(fake, Target)) # => True
print(isinstance(fake, FakeTarget)) # => True

