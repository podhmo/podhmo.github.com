<%inherit file="./base/slide.mako"/>
<%namespace name="u" file="./base/utils.mako"/>


<p>実行後に、どのように使われたか確認したり(spy)</p>

<%u:codebox_left suffix="target.py">
<%include file="./codes/spy/target.py"/>
</%u:codebox_left>
<%u:codebox_right suffix="tests.py">
<%include file="./codes/spy/tests.py"/>
</%u:codebox_right>
<ul>
  <li>テスト対象: after_submit</li>
  <li>enqueue_data,notify_messageへの出力を調査</li>
</ul>

