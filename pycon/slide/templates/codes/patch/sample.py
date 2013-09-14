# -*- coding:utf-8 -*-
import mock

def use_mockcontext_manager():
    with mock.patch("foo.bar.Boo.method") as m: #methodを置き換える
        m.return_value = "mocked"
        use_boo()

@mock.patch("foo.bar.Boo") #classを置き換える
def use_mockdecorator(m):
    m.x = 10
    use_boo()

mock.patch.TEST_PREFIX = "use_mock"
@mock.patch("foo.bar.Boo.__iter__") #そういえば、iteratorを置き換えるのは？
class Tests(object):
    def use_mock_class_decorator(self, m):
        m.return_value = iter([1, 2])
        use_boo()


