<%inherit file="./base/slide.mako"/>
<%namespace name="u" file="./base/utils.mako"/>
<%u:codebox_left>
<%include file="./codes/mimic/callable_object.txt"/>
</%u:codebox_left>
<%u:codebox_right>
<%include file="./codes/mimic/function_is_function.txt"/>
</%u:codebox_right>

<ul>
  <li>callableなものとは、__call__を持つもの</li>
  <li>オブジェクトも__call__を持てば、callableに</li>
</ul>
<p>実行したら、return_valueを返すオブジェクトを作れば良い</p>
