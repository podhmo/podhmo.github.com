<%inherit file="./base/slide.mako"/>
<%namespace name="u" file="./base/utils.mako"/>

<%u:code>
<%include file="./codes/capture/sample.py"/>
</%u:code>

<ul>
  <li>利用した時に渡された引数と異なればAssertionError</li>
  <li>ネストした呼び出しにも対応</li>
</ul>
