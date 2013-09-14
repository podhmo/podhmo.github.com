<%inherit file="./base/slide.mako"/>
<%namespace name="u" file="./base/utils.mako"/>

<%u:codebox_left>
<%include file="./codes/false_positive/autospec_instance_variables.py"/>
</%u:codebox_left>
<%u:codebox_right>
<%include file="./codes/false_positive/autospec_instance_variables2.py"/>
</%u:codebox_right>

<p>__init__()が呼ばれて初めてインスタンス変数が束縛される</p>
<ul>
  <li>mockで見えるのはクラスオブジェクトまで</li>
  <li>サブクラスに同名のクラス変数を作れば回避可能だが</li>
</ul>
<p><small><a href="http://docs.python.org/dev/library/unittest.mock.html?highlight=autospec#autospeccing">26.4.5.8. Autospeccing</a></small></p>
