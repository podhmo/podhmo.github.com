<%inherit file="./base/slide.mako"/>
<%namespace name="u" file="./base/utils.mako"/>

<%u:codebox_left>
<%include file="./codes/patch/sample3.py"/>
</%u:codebox_left>
<%u:codebox_right>
<%include file="./codes/patch/sample4.py"/>
</%u:codebox_right>

<ul>
  <li>コンテキストマネージャ</li>
  <li>start(),stop()を陽に使う</li>
  <li>デコレータ(関数デコレータ,クラスデコレータ)
    <small>mock.patch.TEST_PREFIXでmockを取り付けるメソッドを変更できます</small>
  </li>
</ul>

