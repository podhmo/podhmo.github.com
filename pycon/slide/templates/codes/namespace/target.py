# -*- coding:utf-8 -*-
from myrandom import get_random
import myrandom

def use_random1():
    return get_random() + get_random()

def use_random2():
    x = myrandom.get_random()
    y = myrandom.get_random()
    return x + y
