<%inherit file="./base/slide.mako"/>
<%namespace name="u" file="./base/utils.mako"/>
<%u:codebox_left>
<%include file="./codes/patch/release.py"/>
</%u:codebox_left>
<%u:codebox_right>
<%include file="./codes/patch/use_release.py"/>
</%u:codebox_right>

<ul>
  <li>どこにでも属性付加できる。一時退避して元に戻すだけ</li>
  <li>patch(),release()をcontext managerの機能に
    <p><small>context managerなら中で例外が発生した場合にもしっかり__exit__してくれますね</small></p>
  </li>

</ul>
