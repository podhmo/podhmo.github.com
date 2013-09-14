<%inherit file="./base/slide.mako"/>
<%namespace name="u" file="./base/utils.mako"/>

<%u:codebox_left suffix="matcher.py">
<%include file='./codes/capture/matcher.py'/>
</%u:codebox_left>
<%u:codebox_right>
<%include file='./codes/capture/use_matcher.py'/>
</%u:codebox_right>


<ul>
  <li>1 == 1 is True? and [1] == [1] is True?</li>
  <li>Value(1) == Value(1) is True?</li>
</ul>
<p><small><a href="http://docs.python.org/dev/library/unittest.mock-examples.html#more-complex-argument-matching">26.5. unittest.mock — getting started — Python v3.4.0a2 documentation</a></small></p>
