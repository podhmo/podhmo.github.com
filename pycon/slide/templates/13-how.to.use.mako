<%inherit file="./base/slide.mako"/>
<%namespace name="u" file="./base/utils.mako"/>

<p>実行時に、好きな値を返すようにしたり(stub)</p>

<%u:codebox_left suffix="target.py">
<%include file="./codes/stub/target.py"/>
</%u:codebox_left>
<%u:codebox_right suffix="tests.py">
<%include file="./codes/stub/tests.py"/>
</%u:codebox_right>
<ul>
  <li>テスト対象: visit_shop</li>
  <li>is_holiday()という入力値に依存</li>
</ul>

