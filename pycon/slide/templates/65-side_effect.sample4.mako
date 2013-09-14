<%inherit file="./base/slide.mako"/>
<%namespace name="u" file="./base/utils.mako"/>

<%u:codebox_left suffix="write_io_mock.py">
import mock

def write_message(message, name="foo.txt"):
    with open(name, "a") as wf:
        wf.write(message)

with mock.patch("__builtin__.open") as m:
    io = mock.mock_open()
    m.side_effect = io
    write_message("foo")
    io.assert_called_once_with("foo.txt", "a")
    mwrite = io.return_value.write
    mwrite.assert_called_once_with("foo")
</%u:codebox_left>

<%u:codebox_right suffix="read_io_mock.py">
def load_data_from_file(name):
    with open(name) as rf:
        send_data(rf.read())

def send(data):
    raise Exception

with mock.patch("__builtin__.open") as m0:
    io = mock.mock_open(read_data="*data*")
    m0.side_effect = io
    with mock.patch("__main__.send") as m1:
        load_data_from_file("foo.txt")
        io.assert_called_once_with("foo.txt")
        m1.assert_called_once_with("*data*")
</%u:codebox_right>

<ul>
  <li>mock_openは、読み込み時にも、書き込み時にも便利</li>
  <li>with関連のめんどうなところを隠蔽してくれています</li>
  <li>..1つの関数内でopenをload,saveとして使う関数は？</li>
</ul>
