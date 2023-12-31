import os
from robot.libraries.BuiltIn import BuiltIn
from SeleniumLibrary import SeleniumLibrary

class LambdaTestStatusHook(object):
    ROBOT_LIBRARY_SCOPE = 'GLOBAL'

    def lambda_Status(self,tStatus):
        if tStatus == "PASS":
            
            selenium = BuiltIn().get_library_instance('SeleniumLibrary')
            selenium.execute_javascript("lambda-status=passed")
        else:
            
            selenium = BuiltIn().get_library_instance('SeleniumLibrary')
            selenium.execute_javascript("lambda-status=failed")
        return



