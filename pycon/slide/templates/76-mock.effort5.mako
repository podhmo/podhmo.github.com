<%inherit file="./base/slide.mako"/>
<%namespace name="u" file="./base/utils.mako"/>

<p>リファクタリングでメソッドをプロパティに変更した</p>

<%u:codebox_left suffix="method_to_method.py">
<%include file="./codes/false_positive/autospec_problem.py"/>
</%u:codebox_left>
<%u:codebox_right suffix="method_to_property.py">
<%include file="./codes/false_positive/autospec_problem2.py"/>
</%u:codebox_right>

<ul>
  <li>application: method, test: method => OK</li>
  <li>application: property, test: method => TOOOOOOO BAD</li>
</ul>

<div style="background-color:#ffa; position:absolute; top:130px; right:0px; font-size:18pt; padding:5px 5px">
false positive
</div>
