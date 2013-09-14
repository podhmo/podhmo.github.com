<%inherit file="./base/slide.mako"/>
<%namespace name="u" file="./base/utils.mako"/>

<%u:codebox_left>
<%include file="./codes/capture/mymock.py"/>
</%u:codebox_left>
<%u:codebox_right>
<%include file="./codes/capture/use_capture.py"/>
</%u:codebox_right>

<ul>
  <li>利用した時に渡された引数と異なればAssertionError</li>
  <li>ネストした呼び出しにも対応</li>
</ul>

