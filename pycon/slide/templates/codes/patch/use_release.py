# -*- coding:utf-8 -*-
from release import Temporary
from mymock import MyMock

tmp = Temporary()
tmp.x = 10
tmp.x # => 10

tmp.patch("x", MyMock())
tmp.x # => [mymock.MyMock object at 0x10c74a510]
#>>> tmp.__dict__ 
#{'patching': set(['x']), '_x': 10, 'x': [mymock.MyMock object at 0x10c74a510]}

tmp.release()
tmp.x # => 10
#>>> tmp.__dict__ 
#{'x': 20, 'patching': set()}


