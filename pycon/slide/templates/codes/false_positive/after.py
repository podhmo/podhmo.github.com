# -*- coding:utf-8 -*-

class Book(object):
    def __init__(self, content):
        self.content = content

    def normalize(self): #dont provide pp
        return self.content #do_something()

class Event(object):
    def __init__(self):
        self.events = []

    def publish(self, v):
        self.events.append(("publish", v))

def publish_pp(event): #expected pp
    book = Book("user.get_book()")
    event.publish(book.pp())
