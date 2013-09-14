<%inherit file="./base/slide.mako"/>
<%namespace name="u" file="./base/utils.mako"/>

<%u:code>
<%include file="./codes/patch/sample5.py"/>
</%u:code>

<ul>
  <li>patch.object: オブジェクトの属性を差し替える</li>
  <li>patch.dict: 辞書の値を差し替える
    <small>sys.modulesでモジュールの差し替えをすることがほとんど</small></li>
</ul>
