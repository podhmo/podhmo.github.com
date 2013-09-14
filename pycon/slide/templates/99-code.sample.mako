<%inherit file="./base/slide.mako"/>
<div class="code-box-left">
ここに文字列
                <pre><code data-trim contenteditable>
class After(object):
    def __init__(self, x):
        self.x = x

    def g(self):
        return self.x*self.x

class Event(object):
    def __init__(self):
        self.events = []

    def notify(self, v):
        self.events.append(v)

def use_f(event):
    o = After(10) #change: before -> after
    event.notify(o.f()) #g()?
                </code></pre>
説明!
</div>
<div class="code-box-right">
こちらに文字列
                <pre><code data-trim contenteditable>
f = (lambda x: return 1 if x <= 0 else x * f(x-1))
1 + 10

class Counter(object):
    def __init__(self,c):
        self.c = c

    def inc(self):
        self.c += 1
                </code></pre>
説明
</div>
test
heh
