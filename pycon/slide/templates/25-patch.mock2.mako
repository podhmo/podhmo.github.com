<%inherit file="./base/slide.mako"/>
<%namespace name="u" file="./base/utils.mako"/>

## todo: using base/utils.mako
<div class="code-box-left">
<pre class="language-python"><code data-trim class="highlight python">
<%include file="./codes/patch/loan_pattern.py"/>
</code></pre>
<pre class="language-python"><code data-trim class="highlight python">
<%include file="./codes/patch/loan_pattern2.py"/>
</code></pre>
</div>

<%u:codebox_right>
<%include file="./codes/patch/loan_pattern3.py"/>
</%u:codebox_right>

<ul>
  <li>資源を使ったら(open)、返す(close)。忘れずに</li>
  <li>with構文と一緒に使うcontext managerに</li>
  <li>関数decoratorはcontext managerがあれば
    <small>実際の定義(mock._patch.decorate_callable)は違ったりしますが。。</small></li>
</ul>
