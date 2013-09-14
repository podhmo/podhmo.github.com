<%inherit file="./base/slide.mako"/>
<%namespace name="u" file="./base/utils.mako"/>

<%u:code>
<%include file="./codes/example/example1.2.py"/>
</%u:code>

<ul>
<li>アクセス時に、指定の例外を発生させるには??</li>
<li>mock.PropertyMockを使うのが楽です</li>
<li>type()を使ってください。各objectのtypeは独立してます</li>
</ul>

<div style="margin-top:10px;">
<p><small>中でちょっと気の効いた事してますが。単純です。<br/>
プロパティがディスクリプタでできる事が知っていればなるほどと思うでしょう。</small></p>
</div>
