<%inherit file="./base/slide.mako"/>
<%namespace name="u" file="./base/utils.mako"/>

<%u:code>
<%include file="./codes/good_use_mock.py"/>
</%u:code>

<ul>
  <li>tearDown()を使わない</li>
  <li>addCleanup()にmockの無効化処理を追加する</li>
  <li>mock.stopall()を使うと便利かもしれない</li>
</ul>
<p><small>この辺りのことはドキュメントにも書いてあったりします<a href="http://docs.python.org/dev/library/unittest.mock#patch-methods-start-and-stop">26.4.3.5. patch methods: start and stop</a></small></p>
