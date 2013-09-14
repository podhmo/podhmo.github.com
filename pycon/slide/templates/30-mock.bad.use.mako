<%inherit file="./base/slide.mako"/>
<%namespace name="u" file="./base/utils.mako"/>
<p>start(),stop()でmockの有効化,無効化できますが</p>
<%u:code>
<%include file="./codes/bad_use_mock.py"/>
</%u:code>

<p>テスト実行中にエラーが出たら、stop()呼ばれませんね</p>
