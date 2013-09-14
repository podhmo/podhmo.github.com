# -*- coding:utf-8 -*-

def enqueue_data(data):
    # using external resource! (e.g. MQ)
    message = "Enqueue Messaging Queue!"
    raise Exception(data, message)

def notify_message(name):
    # using external resource! (e.g. mail)
    fmt = "{name} submitted!"
    raise Exception(fmt.format(name=name))

def after_submit(data, name):
    enqueue_data(data)
    notify_message(name)

