# -*- coding:utf-8 -*-
import os
from mako.lookup import TemplateLookup
import mako.runtime
mako.runtime.UNDEFINED = u""

HERE = os.path.abspath(os.path.dirname(__file__))

def main():
    template_dir = os.path.join(HERE, "templates")
    lookup = TemplateLookup(directories=[template_dir], 
                            input_encoding="utf-8", output_encoding="utf-8")
    template = lookup.get_template("main.mako")
    with open("index.html", "w") as wf:
        wf.write(template.render(lang="ja", page_title=u"about mock"))

if __name__ == "__main__":
    main()
