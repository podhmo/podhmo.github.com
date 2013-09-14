<%inherit file="./base/slide.mako"/>
<%namespace name="u" file="./base/utils.mako"/>

##${slide(u"autospecの強化=>袋小路,ABCMeta=>メタクラスあまり良くない。既存のオブジェクトにメタクラス注入？,Interface=>まぁ。頑張れば,それ以外")}
<blockquote>
<ul>
  <li>autospecの強化
    <ul>
      <li>袋小路</li>
    </ul>
  </li>
  <li>abc.ABCMeta
    <ul>
      <li>metaclassの合成..</li>
    </ul>
  </li>
  <li>Interface的なアノテーション
    <ul>
      <li>悪くはない。</li>
    </ul>
  </li>
</ul>
</blockquote>

<p style="margin-top:20px;">考えていること</p>
<ol>
  <li>テストから利用したsignatureを取り出し</li>
  <li>パッチ対象が必要な要素を持っているか調べる</li>
</ol>
<p>何と何を置き換えたか把握できるのが、mock(stub)の利点</p>
