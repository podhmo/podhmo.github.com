<%inherit file="./base/slide.mako"/>
<%namespace name="u" file="./base/utils.mako"/>


##todo: refine
<%block name="section_begin">
<section data-background-image="./images/wrapping.png" data-background-repeat="no-repeat" data-background-size="45% 50%" data-background-position="50% 50%">
</%block>

<br/><br/><br/><br/><br/><br/><br/><br/><br/>
<p>テスト対象とテストコードの意図が揃えばテストは成功してしまう</p>

<%block name="in_section">
<div style="background-color:#77f; position:absolute; top:210px; left:80px; font-size:18pt; color:white; padding:5px 5px">
Book.ppを期待
</div>

<div style="background-color:#5b5; position:absolute; top:410px; right:80px; font-size:18pt; color:white; padding:5px 5px">
Book.normalizeを提供
</div>
</%block>

<p><small>(実はpatch("target.Book")ではなくpatch("target.Book.pp"),patch.object(Book,"pp")ならばエラー)</small></p>
