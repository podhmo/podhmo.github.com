<%inherit file="./base/slide.mako"/>
<%namespace name="u" file="./base/utils.mako"/>

<%u:codebox_left suffix="target.py">
def file_copy(src, dst):
    with open(src) as rf:
        with open(dst, "w") as wf:
            wf.write(rf.read())

@contextlib.contextmanager
def temporary_file():
    import tempfile
    import os
    _, filename = tempfile.mkstemp()
    yield filename
    os.remove(filename)
</%u:codebox_left>
<%u:codebox_right suffix="tests.py">
from target import temporary_file
from target import file_copy

with temporary_file() as writename:
    with temporary_file() as readname:
        with open(readname, "w") as wf :
            wf.write("*content of file**")

        file_copy(readname,writename)

    with open(writename) as rf:
        assert rf.read() == "*content of file**"

</%u:codebox_right>

<p>実際にファイル作って調べても良いじゃないですかね？</p>
<p><small>そもそも、テスト対象と依存オブジェクトを何で分離したかったんですかね？</small></p>
