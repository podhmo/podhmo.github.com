# -*- coding:utf-8 -*-
from __future__ import print_function
import unittest
import mock

class Tests(unittest.TestCase):
    ## tearDownではsetUp時の例外に対応できません
    def setUp(self):
        self.addCleanup(lambda : print("cleanup"))
        self.addCleanup(mock.stopall)
        do_something() #raise Exception?

    def tearDown(self):
        print("teardown")

    def test_it(self):
        do_something2() #raise Exception?
