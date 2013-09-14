<%inherit file="./base/slide.mako"/>
<%namespace name="u" file="./base/utils.mako"/>

<%u:codebox_left suffix="target.py">
<%include file="./codes/false_positive/after.py"/>
</%u:codebox_left>
<%u:codebox_right suffix="tests.py">
<%include file="./codes/false_positive/after_tests.py"/>
</%u:codebox_right>

<p> Book.ppをBook.normalizeに変更。テスト対象は以前のまま</p>
<ul>
  <li>テスト対象: target.publish_pp</li>
  <li>依存オブジェクト: target.Book</li>
</ul>

<div style="background-color:#faa; position:absolute; top:80px; left:400px; font-size:18pt; padding:5px 5px">
Error
</div>

<div style="background-color:#afa; position:absolute; top:80px; right:0px; font-size:18pt; padding:5px 5px">
Test is Success?
</div>
