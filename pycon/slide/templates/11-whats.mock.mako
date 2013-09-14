<%inherit file="./base/slide.mako"/>
<%namespace name="u" file="./base/utils.mako"/>

##todo: refine
<%block name="section_begin">
<section data-background-image="./images/test_double.png" data-background-repeat="no-repeat" data-background-size="60% 60%" data-background-position="55% 60%">
</%block>

<h2>what is mock?</h2>
<h4>mockではなくtest doubleと言う方が正しい</h4>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>

<%block name="in_section">
<div style="background-color:#afa; position:absolute; top:210px; left:20px; font-size:18pt">
テスト対象への入力を置き換える
</div>

<div style="background-color:#afa; position:absolute; top:480px; left:20px; font-size:18pt">
テスト対象からの出力を調査する
</div>
</%block>


<%u:reference>
<p>
  <small><a href="http://ja.wikipedia.org/wiki/%E3%83%86%E3%82%B9%E3%83%88%E3%83%80%E3%83%96%E3%83%AB">テストダブル - Wikipedia</a>,
<a href="http://en.wikipedia.org/wiki/Test_double">Test double - Wikipedia</a></small>
</p>
</%u:reference>

