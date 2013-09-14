<%inherit file="./base/slide.mako"/>
<%namespace name="u" file="./base/utils.mako"/>

<%u:code>
<%include file="./codes/nested/use_nested.py"/>
</%u:code>
<%u:code>
<%include file="./codes/nested/use_exit_stack.py"/>
</%u:code>

<ul>
  <li>2.x系ならcontextlib.nested</li>
  <li>3.x系ならcontextlib.stack</li>
</ul>
<p>
  <small>
    <a href="http://www.gembook.org/mockhakoushi-e.html">mockはこう使え</a>,
    <a href="http://www.gembook.org/python-33-karano-with-wen.html">Python 3.3 からの with 文</a>
</small></p>


