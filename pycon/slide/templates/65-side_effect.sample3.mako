<%inherit file="./base/slide.mako"/>
<%namespace name="u" file="./base/utils.mako"/>

<%u:codebox_left suffix="target.py">
<%include file="./codes/example/example3.py"/>
</%u:codebox_left>
<%u:codebox_right>
<%include file="./codes/example/example3.2.py"/>
</%u:codebox_right>

<ul>
  <li>autospec=Trueを追加しましょう</li>
  <li>実際のメソッドのシグネチャの通りに呼び出します</li>
  <li>selfが取れます</li>
</ul>
