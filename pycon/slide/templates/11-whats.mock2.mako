<%inherit file="./11-whats.mock.mako"/>

<%block name="in_section">
<div style="background-color:#afa; position:absolute; top:210px; left:20px; font-size:18pt">
テスト対象への入力を置き換える
</div>

<div style="background-color:#ffa; position:absolute; top:210px; left:750px; font-size:18pt">
<p>「今日」という時刻に依存した処理。</p>
<p>「今日」を「2000/01/01」にとしてテストしたい</p>
<p> date.today()を「2000/01/01」を返すように置き換える。</p>
</div>
</%block>
