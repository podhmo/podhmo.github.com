# -*- coding:utf-8 -*-
class Model(object):
    def __init__(self, value):
        self.value = value
        self.actions = []

    def save(self):
        raise Exception

def create_model(value):
    model = Model(value)
    model.actions.append("create")
    model.save()
    #return model がない
