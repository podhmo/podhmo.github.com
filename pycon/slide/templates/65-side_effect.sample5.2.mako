<%inherit file="./base/slide.mako"/>
<%namespace name="u" file="./base/utils.mako"/>

<%u:code>
def file_copy(src, dst):
    with open(src) as rf:
        with open(dst, "w") as wf:
            wf.write(rf.read())

with mock.patch("__builtin__.open") as m:
    load = mock.mock_open(read_data="*content of file**")
    save = mock.mock_open()
    buf = [load, save]
    def dummy_open(name, flag="r"):
        return save(name, flag) if flag == "w" else load(name, flag)
    m.side_effect = dummy_open

    file_copy("input.txt", "output.txt")
    ## open arguments
    load.assert_called_once_with("input.txt", "r")
    save.assert_called_once_with("output.txt", "w")

    ## read, write
    assert load.return_value.read() ==  "*content of file**"
    save.return_value.write.assert_called_once_with("*content of file**")    
</%u:code>

<ul>
  <li>..1つの関数内でopenをload,saveとして使う関数は？</li>
  <li>side_effectに渡すのを関数にする</li>
  <li>テストコード複雑ですね。。</li>
</ul>
