*** Settings ***
Documentation       This is some basic info about the whole sutie
Resource            ../Resources/Common.robot
Resource            ../Resources/Web.robot
# Run the script:
#robot -d results tests/hello.robot
#Test Setup          Initialize Selenuim
#Test Teardown        Common.End Web Test
*** Variables ***
${website url}=    hello world
@{browser} =    chrome    ie    fuck u



*** Test Cases ***
Should be able to add new customer
    [Documentation]         This is some basic info about the Test
    [Tags]                  101    Smoke
    Initialize Selenuim
    Web.Open CRM
    Sign In
    Common.End Web Test

Set Variables Testing
    ${website url} =    set variable  fuck u
    @{browser} =    create list    fuck u    ie    chrome

    log     ${website url}
    log     ${browser}[2]

Variables Testing
    log     ${website url}
    log     ${browser}[2]

