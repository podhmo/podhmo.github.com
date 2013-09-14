<%page args="title='',subtitle=''"/>

<%block name="section_begin">
<section>
</%block>
%if title:
<h2>${title}</h2>
%endif
%if subtitle:
<h3>${subtitle}</h3>
%endif

${next.body()}
</section>
