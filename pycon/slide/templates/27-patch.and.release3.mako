<%inherit file="./base/slide.mako"/>
<%namespace name="u" file="./base/utils.mako"/>
<%u:codebox_left>
<%include file="./codes/patch/patch.py"/>
</%u:codebox_left>
<%u:codebox_right>
<%include file="./codes/patch/use_patch.py"/>
</%u:codebox_right>

<ul>
  <li>context managerで処理の前後でmockに置き換え</li>
</ul>
<p><small>実際の所、mockはself._tmp_originalに退避させてます</small></p>
