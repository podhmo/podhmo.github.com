<%inherit file="./base/slide.mako"/>
<%namespace name="u" file="./base/utils.mako"/>

<p>mockの引数を実際の引数に合わせる</p>

<%u:code suffix="target.py">
<%include file="./codes/false_positive/autospec_sample.py"/>
</%u:code>

<ul>
  <li>パッチ対象のsignatureを自動で設定</li>
  <li>__init__,__call__の引数もチェックしてくれます。</li>
</ul>
<p>実装は、「<code>eval("lambda %s: None" % signature)</code>」</p>
