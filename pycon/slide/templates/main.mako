<%inherit file="./base/main.mako" />

<%def name="slide(title)">
  <section>
    <h2>${title}</h2>
  </section>
</%def>


<%block name="slides">
<%include file="./0-title.mako"/>
<%include file='./1-who.am.i.mako' args='title=u"おまえだれよ"'/>
<%include file='./1-i.like.this.mako' args='title=u"collections.defaultdictが好きです"'/>　
##${slide(u"こういうの良いですね")}
##${slide(u"ところで")}
## ${slide(u"pythonでコード書いてますか？")}
## ${slide(u"pythonでテスト書いてますか？")}
<%include file='./10-whats.mock.python.mako' args='title=u"What is mock? python"'/>　
<%include file='./11-whats.mock.mako'/>　
<%include file='./11-whats.mock2.mako'/>　
<%include file='./11-whats.mock3.mako'/>
${slide(u"テスト時に都合の良いように、依存先を置き換える")}
${slide(u"微妙に言葉の定義が違ったりします")}
<%include file='./12-definition.mock.mako' args='title=u"ここでは"'/>
<%include file='./13-how.to.use.mako' args='title=u"How to use? stub"'/>　
<%include file='./13-how.to.use2.mako' args='title=u"How to use? spy"'/>　
${slide(u"基本的には、mock.patch()を使っていれば良いです")}
${slide(u"中身に興味は？")}
## 全部dict的な表現を入れたい
## 中を理解するには実装してみるのが良い
<%include file='./20-components.of.mock.mako' args='title=u"mockに必要なもの"'/>
${slide(u"模倣(mimic,fake)")}
<%include file='./22-mimic.mock.mako' args='title=u"模倣(mimic,fake)"'/>
<%include file='./22-mimic.mock2.mako' args='title=u"a.x? a.x=x?, a.__dict__"'/>
<%include file='./22-mimic.mock3.mako' args='title=u"callable(f)?, f.__call__"'/>
<%include file='./1-i.like.this.mako' args='title=u"collections.defaultdictが好きです"'/>　
${slide(u"これ位なら作れそうですね")}
<%include file='./22-mimic.mock4.mako' args='title=u"MyMock"'/>
${slide(u"ところで、isinstance(mock, A)はどうやって模倣しますか？")}
<%include file='./23-mimic.isinstance.mako' args='title=u"isinstance() using mock.__class__"'/>
${slide(u"置き換え(patch)")}
<%include file='./27-patch.and.release.mako' args='title=u"置き換え(patch)"'/>
<% title = u"patch('foo.bar.boo')で起きる事" %>
<%include file='./26-what.happen.patch.mako' args='title=title'/>
<%include file='./26-what.happen.patch2.mako' args='title=u"foo.bar.boo is 何?"'/>
<%include file='./26-what.happen.patch3.mako' args='title=u"結局、moduleかそれ以外か"'/>
${slide(u"ところで")}
<%include file='./30-mock.bad.use.mako' args='subtitle=u"危険なので止めましょう"'/>　
<%include file='./30-mock.bad.use2.mako' args='subtitle=u"適切に使えば問題無い?"'/>　
<%include file='./30-mock.bad.use3.mako' args='subtitle=u"まじめに対応するのはめんどう？"'/>　
<%include file='./30-mock.bad.use4.mako' args='subtitle=u"start(),stop()の実装"'/>　
${slide(u"個人的にはstart(),stop()要らないと思っています")}
<%include file='./25-patch.mock2.mako' args='title=u"必要だったのはcontext manager?"'/>
<%include file='./25-patch.mock3.mako' args='title=u"ネストしたcontext manager"'/>
<%include file='./27-patch.and.release.mako' args='title=u"patch & release"'/>
<%include file='./27-patch.and.release2.mako' args='title=u"setattr?,delattr?"'/>
${slide(u"モックへの差し替えもそろそろ実装できそうですね")}
<%include file='./27-patch.and.release3.mako' args='title=u"MyMock"'/>
${slide(u"patchにどんな文字列渡せば良いんでしょう?")}
<%include file='./29-patch.namespace.mako' args='title=u"patchに渡す文字列"'/>
<%include file='./40-capture.sample.mako' args='title=u"記録(capture)"'/>
<%include file='./40-capture.sample2.mako' args='title=u"MyMock"'/>
<%include file='./50-mymock.mako' args='title=u"MyMockここまで来ました"'/>

<%include file='./60-mock.features.mako' args='title=u"mock.difference(mymock)"'/>
##<%include file='./60-side_effect.mako' args='title=u"mock.Mock.side_effect"'/>
<%include file='./65-matcher.sample.mako' args='subtitle=u"等値性の評価を変えてみる"'/>
<%include file='./65-patch.sample1.mako' args='subtitle=u"patch1 色々な使い方"'/>
<%include file='./65-patch.sample2.mako' args='subtitle=u"patch2 色々な亜種"'/>
<%include file='./65-side_effect.sample0.mako' args='subtitle=u"side_effect 戻り値を関数で指定する"'/>
<%include file='./65-side_effect.sample1.mako' args='subtitle=u"side_effect1 望んだ例外を発生させる"'/>
<%include file='./65-side_effect.sample1.2.mako' args='subtitle=u"side_effect1 望んだ例外を発生させる"'/>
<%include file='./65-side_effect.sample2.mako' args='subtitle=u"side_effect2 呼び出す度に違う値を"'/>
<%include file='./65-side_effect.sample3.mako' args='subtitle=u"side_effect3 selfの属性を触りたい"'/>
<%include file='./65-side_effect.sample4.mako' args='subtitle=u"side_effect4 ファイルIOのかわり"'/>
<%include file='./65-side_effect.sample5.mako' args='subtitle=u"side_effect5 ファイルコピーなら"'/>
<%include file='./65-side_effect.sample5.2.mako' args='subtitle=u"side_effect5.2 ファイルコピーなら"'/>
<%include file='./65-side_effect.sample5.3.mako' args='subtitle=u"side_effect5.3 ファイルコピーなら"'/>

${slide(u"今は正しいコード。これからも正しいコード？")}
##${slide(u"つくられた秩序が崩壊するとき")}
<%include file='./70-test.is.mako' args='subtitle=u"そもそもテストってどういう扱い?"'/>
<%include file='./72-false.test.mako' args='subtitle=u"失敗しているテスト"'/>
${slide(u"false positive")}
${slide(u"テストは成功しているのに、実際にはエラーで落ちるとか最悪ですね")}
${slide(u"実際ありえます")}
<%include file='./74-false.positive.mechanism.mako' args='subtitle=u"mockを使ったテストの仕組み"'/>
<%include file='./74-false.positive.mechanism2.mako' args='subtitle=u"最初は正しい動作でした"'/>
<%include file='./74-false.positive.mechanism3.mako' args='subtitle=u"リファクタリング後、バグ修正後"'/>
<%include file='./74-false.positive.mechanism4.mako' args='subtitle=u"テスト対象と依存オブジェクトを切り離す"'/>
${slide(u"同じことは引数で依存オブジェクトを渡す形式にしてても起きます")}
${slide(u"味方に後ろから銃で撃たれるような感覚になります")}
${slide(u"つらい")}
${slide(u"と怒るのも良いですが。mock頑張ってます。")}
${slide(u"specを付けましょう")}
<%include file='./76-mock.effort.mako' args='subtitle=u"mock.patch(.., spec=[Target Class])"'/>
<%include file='./76-mock.effort2.mako' args='subtitle=u"specオプションの意味"'/>
${slide(u"引数の数も気になりませんか？")}
${slide(u"autospecを付けましょう")}
<%include file='./76-mock.effort3.mako' args='subtitle=u"mock.patch(.., autospec=True)"'/>
<%include file='./76-mock.effort4.mako' args='subtitle=u"autospecオプションの意味"'/>
${slide(u"autospec素晴らしいですね")}
${slide(u"残念なお知らせです")}
${slide(u"autospecの問題")}
${slide(u"プロパティとメソッドの区別が難しい")}
<%include file='./76-mock.effort5.mako' args='subtitle=u"プロパティとメソッドの区別が難しい"'/>
${slide(u"インスタンス変数を関知しない")}
<%include file='./76-mock.effort6.mako' args='subtitle=u"インスタンス変数を関知しない"'/>
${slide(u"テスト書いても、オブジェクト間のインターフェイスの変更に弱い")}
<%include file='./78-strict.code.mako' args='subtitle=u"もうちょっと制限された自由がほしい"'/>
<%include file='./80-summary.mako' args='title=u"summary"'/>

</%block>

<%block name="head_tail">
<style type="text/css">

.code-box-left{
  float:left;
  width: 50%;
}
.code-box-right{
  float:left;
  width: 50%;
}
.code-box-right:after{
  content: "";
  clear: both;
  display: block;
}
.reveal pre {
  margin-left: 0px;
  margin-right: 0px;
  width: 99%;
  line-height: 1.1em;
  font-size: 21px;
}
.reveal pre code{
  max-height: 520px;
}
.reveal h1,
.reveal h2,
.reveal h3,
.reveal h4,
.reveal h5,
.reveal h6 {
  /* text-transform: capitalize; */
  text-transform: none;
}

.reveal li {
  line-height: 1.2em;
}
.reveal ul.top > li {
  line-height: 1.5em;
}
</style>
</%block>
