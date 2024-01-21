from cdktf import TerraformStack
from constructs import Construct


class HelloWorldStack(TerraformStack):
    def __init__(self, scope: Construct, id: str):
        super().__init__(scope, id)

        # define resources here