<%inherit file="./base/slide.mako"/>
<%namespace name="u" file="./base/utils.mako"/>
<%u:code>
<%include file="./codes/mimic/sample.py"/>
</%u:code>

<ul>
  <li>return_valueで呼ばれた際の戻り値を設定</li>
  <li>実行する前に返される値を設定しておく</li>
</ul>

<p>.アクセスを模倣したい。関数呼び出しを模倣したい。</p>
