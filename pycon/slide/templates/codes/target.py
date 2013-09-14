# -*- coding:utf-8 -*-
def whattime_is_it():
    from datetime import datetime
    return datetime.now()

def notify(message):
    raise Exception(message)

