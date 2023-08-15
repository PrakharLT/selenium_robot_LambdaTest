# selenium_robot_LambdaTest

step 1 - install the requiremtnts by the command - 
pip install -r requirements.txt

step 2 - put your LambdaTest Username and Acess key in Tests/webtest.robot file. They are to be inserted in place of 
<Username> and <Access_Key> respectively.

step 3 - run the command -
robot Tests/webtest.robot

Done.
_______________________________________________________________________________

Purpose of the prject - to show how to use LambdaTest passed- failed hook in robot framework. 
Setup a Library like shown in lib/LambdaTestStatusHook.py
Then, import the library in the way it is done in settings section of Tests/webtest.robot
The function to run passed or failed tags is called in teardown section of the robot file. We can get the status of a test only after a test is completed, hence the function is called 
in teardown. Its important to not close the broweser in the test itself and use teardown to close the browser, the reason being 
that the LambdaTest hook needs an active browser to work. 






