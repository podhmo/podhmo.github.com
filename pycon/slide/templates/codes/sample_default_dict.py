# -*- coding:utf-8 -*-

from collections import defaultdict
def dt():
    return defaultdict(dt)

## use this.
D = dt()
D["x"]["y"]["z"] = "aaaaa"

D["x"]["y"]["z"] # => "aaaaa"
D["x"]["x"] # => defaultdict([function dt at 0x10b073398], {})
