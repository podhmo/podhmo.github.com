<%def name="reference()">
<div class="reference">
${caller.body()}
</div>
</%def>

<%def name="code(lang='python',prefix='',suffix='')">
${prefix or ""}<pre class="language-${lang}"><code data-trim class="highlight ${lang}">
${caller.body()}
</code>${suffix or ""}</pre>
</%def>

<%def name="codebox_left(lang='python',prefix='',suffix='')">
<div class="code-box-left">
${prefix or ""}<pre class="language-${lang}"><code data-trim class="highlight ${lang}">
${caller.body()}
</code>${suffix or ""}</pre>
</div>
</%def>

<%def name="codebox_right(lang='python',prefix='',suffix='')">
<div class="code-box-right">
${prefix or ""}<pre class="language-${lang}"><code data-trim class="highlight ${lang}">
${caller.body()}
</code>${suffix or ""}</pre>
</div>
</%def>
