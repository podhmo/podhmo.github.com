<%inherit file="./base/slide.mako"/>
<%namespace name="u" file="./base/utils.mako"/>

<%block name="section_begin">
<section data-background-image="./images/difference.png" data-background-repeat="no-repeat" data-background-size="40% 45%"  data-background-position="5% 85%">
</%block>
<ul style="margin-bottom:100px;">
  <li>記録(capture) -- 等値性の変更, assertionの種類, Any, Call</li>
  <li>置き換え(patch) -- patchの種類, patchの亜種, patchの引数</li>
  <li>模倣(mimic,fake) -- 例外送出, 引数を利用して値を返す </li>
</ul>
<p>欲しい機能は結構あります</p>
