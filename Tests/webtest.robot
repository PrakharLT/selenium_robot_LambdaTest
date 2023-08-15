
*** Settings ***
Library    SeleniumLibrary
Library  ../lib/LambdaTestStatusHook.py
Test Teardown    Run Keywords  lambda Status  ${Test Status}  AND   Close Browser

*** Test Cases ***


Search On Google Using Firefox
    ${desired_capabilities}=    Create Dictionary
    ...    browserName=firefox
    ...    version=latest
    ...    platform=WIN10
    Open Browser    https://www.google.com    remote_url=https://<Username>:<Access_Key>@hub.lambdatest.com/wd/hub    browser=firefox    desired_capabilities=${desired_capabilities}
    Input Text      name=q      Robot Framework
    Click Button    name=btnK
    Capture Page Screenshot

    
Search On Google Using firefox
    ${desired_capabilities}=    Create Dictionary
    ...    browserName=firefox
    ...    version=latest
    ...    platform=WIN10
    Open Browser    https://www.google.com    remote_url=https://<Username>:<Access_Key>@hub.lambdatest.com/wd/hub    browser=firefox    desired_capabilities=${desired_capabilities}
    Input Text      name=q      Robot Framework
    Click Button    name=btnK
    Capture Page Screenshot
    doom
