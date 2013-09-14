<%inherit file="./base/slide.mako"/>
<%namespace name="u" file="./base/utils.mako"/>

<%u:code>
<%include file="./codes/patch/sample.py"/>
</%u:code>

<ul>
  <li>パッチ対象を文字列で指定して、mockに置き換える</li>
  <li>パッチ対象は モジュール, 関数, クラス, メソッド</li>
  <li>context manager,decoratorとして使える</li>
</ul>
