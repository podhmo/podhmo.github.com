<%inherit file="./base/slide.mako"/>
<%namespace name="u" file="./base/utils.mako"/>

<%u:code>
<%include file="./codes/example/example1.py"/>
</%u:code>

<ul>
<li>例外オブジェクトを設定。呼び出し時に指定の例外発生</li>
<li>属性をdelで消す。アクセス時にAttributeError発生</li>
<li>アクセス時に、指定の例外を発生させるには??</li>
</ul>
