<%inherit file="./base/slide.mako"/>
<%namespace name="u" file="./base/utils.mako"/>

<%u:codebox_left prefix="foo.py">
class bar(object):
    def boo(self):
        return "boo"
</%u:codebox_left>
<%u:codebox_right prefix="foo.py">
class bar(object):
    class boo(object):
        pass
</%u:codebox_right>
<%u:codebox_left prefix="foo.py">
class bar(object):
    pass
bar.boo = classmethod(lambda c: c.__name__)
</%u:codebox_left>
<%u:codebox_right prefix="foo.py">
class bar(object):
    @property
    def boo(self):
        return "boo"
</%u:codebox_right>
<%u:codebox_left prefix="foo.py">
def bar():
    return "bar"
class Boo(object):
    pass
bar.boo = Boo()
</%u:codebox_left>
<%u:codebox_right prefix="foo/bar.py">
def boo():
    return "boo"
</%u:codebox_right>

<p>fooモジュールから辿れれば何でも</p>
