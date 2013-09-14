<%inherit file="./base/slide.mako"/>
<%namespace name="u" file="./base/utils.mako"/>

<%u:code>
<%include file="./codes/example/example2.py"/>
</%u:code>

<ul>
  <li>関数以外にiterableなオブジェクトも渡せる</li>
  <li>呼び出す度に１個ずつ消費される</li>
</ul>
