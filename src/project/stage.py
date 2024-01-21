from constructs import Construct

from src.project.environment import Environment
from src.stacks.hello_world.hello_world_stack import HelloWorldStack


class Stage(Construct):

    def __init__(self, scope: Construct, environment: Environment):
        super().__init__(scope, environment.value)

        HelloWorldStack(self, f"{environment.value}-hello-world-stack")
