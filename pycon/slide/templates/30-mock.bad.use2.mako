<%inherit file="./base/slide.mako"/>
<%namespace name="u" file="./base/utils.mako"/>

<%u:codebox_left>
class Tests(unittest.TestCase):
    def setUp(self):
        self.p1 = patch("target.depends.one")
        self.p1.start()
        self.p2 = patch("target.depends.two")
        self.p2.start()

    def tearDown(self):
        self.p1.stop()
        self.p2.stop()
</%u:codebox_left>

<%u:codebox_right>
class Tests(unittest.TestCase):
    def test_it(self):
        p3 = patch("target.depends.three")
        p3.start()
        self._callFUT() # raise Exception ?
        p3.stop()
</%u:codebox_right>

<%u:codebox_right>
class Tests(unittest.TestCase):
    def setUp(self):
        # ..snip
        do_something() # raise Exception ?
</%u:codebox_right>

<ul>
  <li>setUp以外のところで、patchが使われたら。。?</li>
  <li>setUpの途中で例外が発生したら。。？</li>
</ul>
