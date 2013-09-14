<%inherit file="./base/slide.mako"/>
<%namespace name="u" file="./base/utils.mako"/>

<%u:code suffix="mock.py">
<%include file="./codes/start_stop_implementation.py"/>
</%u:code>

<ul>
  <li>self.xは[get(instance,"x") or get(class,"x"), ...]の略
    <small>正確に言うとmro(method resolution order)の順序で調べていくという感じですね</small>
  </li>
  <li>関数に属性追加できますし</li>
</ul>

