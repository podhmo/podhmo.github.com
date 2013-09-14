<%inherit file="./base/slide.mako"/>
<%namespace name="u" file="./base/utils.mako"/>
<%u:codebox_left>
<%include file="./codes/mimic/set_value.txt"/>
</%u:codebox_left>
<%u:codebox_right>
<%include file="./codes/mimic/function_is_object.txt"/>
</%u:codebox_right>

<ul>
  <li>オブジェクトは__dict__という属性を持つ。__dict__は辞書</li>
  <li>a.x -> getattr(a, "x") -> a.__dict__["x"]</li>
  <li>a.x = x -> setattr(a, "x", x) -> a.__dict__["x"] = x</li>
</ul>
<p>いつでもオブジェクトにテキトウな属性を設定できる。</p>
<p><small>属性を設定できないオブジェクトもあります。何でしょう？</small></p>
