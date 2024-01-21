#!/usr/bin/env python
from cdktf import App

from src.project.environment import Environment
from src.project.stage import Stage

app = App()

Stage(app, Environment.STAGING)
Stage(app, Environment.PRODUCTION)

app.synth()
