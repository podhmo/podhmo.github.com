<%inherit file="./base/slide.mako"/>
<%namespace name="u" file="./base/utils.mako"/>

<div class="code-box-left">
<pre class="language-python"><code data-trim class="highlight python">
<%include file="./codes/namespace/myrandom.py"/>
</code>myrandom.py</pre>
<pre class="language-python"><code data-trim class="highlight python">
<%include file="./codes/namespace/target.py"/>
</code>target.py</pre>
</div>

<%u:codebox_right>
<%include file="./codes/namespace/sample.py"/>
</%u:codebox_right>

<ul>
  <li>use_random1にはpatch("target.get_random")</li>
  <li>use_random2にはpatch("myrandom.get_random")</li>
</ul>
<p><small><a href="http://docs.python.org/dev/library/unittest.mock#where-to-patch">26.4.3.8. Where to patch</a></small></p>


