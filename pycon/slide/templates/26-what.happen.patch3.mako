<%inherit file="./base/slide.mako"/>
<%namespace name="u" file="./base/utils.mako"/>

<%u:codebox_left suffix="mock.py">
<%include file="./codes/patch/importer.py"/>
</%u:codebox_left>
<%u:codebox_right prefix="patch('mako.lookup.TemplateLookup')">
>>> import mako
>>> hasattr(mako,"lookup")
False
>>> import mako.lookup
>>> hasattr(mako,"lookup")
True
>>> mako.lookup
[module 'mako.lookup' from '~/venvs/pycon/lib/python2.7/site-packages/mako/lookup.pyc']
>>> mako.lookup.TemplateLookup
[class 'mako.lookup.TemplateLookup']
</%u:codebox_right>

<ul>
  <li>モジュールもオブジェクト</li>
  <li>import foo.barすればfooからbarが辿れる</li>
  <li>辿れないならモジュールなのでは？</li>
</ul>
