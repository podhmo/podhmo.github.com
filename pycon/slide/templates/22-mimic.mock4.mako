<%inherit file="./base/slide.mako"/>
<%namespace name="u" file="./base/utils.mako"/>
<%u:codebox_left>
<%include file="./codes/mimic/mymock.py"/>
</%u:codebox_left>
<%u:codebox_right>
<%include file="./codes/mimic/use_mymock.py"/>
</%u:codebox_right>

<ul>
  <li>return_valueで呼ばれた際の戻り値を設定</li>
  <li>実行する前に返される値を設定しておく</li>
</ul>
<!-- <p>__call__を持たない<a href="http://docs.python.org/dev/library/unittest.mock#the-mock-class">mock.NonCallableMock</a>もあります</p> -->


