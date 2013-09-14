<%inherit file="./base/slide.mako"/>
<%namespace name="u" file="./base/utils.mako"/>

<%u:codebox_left  suffix="use_mock.py" suffix="mock.py">
<%include file="./codes/greeting.py"/>
</%u:codebox_left>
<%u:codebox_right  suffix="use_mymock.py">
<%include file="./codes/capture/use_all.py"/>
</%u:codebox_right>

</p>今まででてきたmymock,patch,(importer)の組み合わせ</p>
<p>意外とコアの部分はシンプル.</p>
<p><small>まとめたコードは<a href="https://gist.github.com/podhmo/6497807">https://gist.github.com/podhmo/6497807</a>にあります</small></p>
