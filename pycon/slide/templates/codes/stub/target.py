# -*- coding:utf-8 -*-
from datetime import datetime

def is_holiday():
    return datetime.now().weekday() == 0

def visit_shop(name):
    if is_holiday():
        fmt = "{name} is close."
        return fmt.format(name=name)
    else:
        fmt = "{name} is open."
        return fmt.format(name=name)
