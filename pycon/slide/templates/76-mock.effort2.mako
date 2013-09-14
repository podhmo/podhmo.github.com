<%inherit file="./base/slide.mako"/>
<%namespace name="u" file="./base/utils.mako"/>

<p>作られるMockが利用できる属性を制限する</p>

<%u:code suffix="target.py">
<%include file="./codes/false_positive/spec_sample.py"/>
</%u:code>

<ul>
  <li>文字列のリストを渡す: 渡された属性のみが許可</li>
  <li>クラスを渡す: クラスが持つ属性のみが許可</li>
</ul>
<p>実装上は、_mock_methodsに属性名が無いか調べている</p>
