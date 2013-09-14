<%inherit file="./base/slide.mako"/>
<%namespace name="u" file="./base/utils.mako"/>

<%u:codebox_left>
<%include file="./codes/mimic/mimic_isinstance.py"/>
</%u:codebox_left>

<% prefix = u"模倣していない場合" %>
<%u:codebox_right prefix="${prefix}">
<%include file="./codes/mimic/use_mimic_isinstance.py"/>
</%u:codebox_right>

<% prefix = u"Targetを模倣した場合" %>
<%u:codebox_right prefix="${prefix}">
<%include file="./codes/mimic/use_mimic_isinstance2.py"/>
</%u:codebox_right>

<ul>
  <li>isinstance()はオブジェクトの__class__を見る</li>
  <li>__class__をpropertyとして定義しておくとそちらを見る</li>
</ul>

<p><small>模倣後も依然としてFakeTargetのインスタンスでもある理由はわかりますか？</small></p>
