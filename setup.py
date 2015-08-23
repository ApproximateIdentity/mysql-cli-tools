#!/usr/bin/env python

import os
from distutils.core import setup

scripts = [os.path.join('scripts', s) for s in os.listdir('scripts')]

setup(name='mysql-cli-tools',
      version='0.1',
      description='mysql cli utilities',
      author='Thomas Nyberg',
      author_email='tomnyberg@gmail.com',
      url='https://github.com/ApproximateIdentity/mysql-cli-tools/',
      scripts=scripts)
