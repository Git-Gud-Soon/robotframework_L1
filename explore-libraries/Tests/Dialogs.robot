*** Settings ***
Documentation  These are some web tests
Library  Dialogs
Library    BuiltIn
Resource  ../Resources/Web/Common.robot
Resource  ../Resources/Web/AmazonApp.robot
#Test Setup  Common.Begin Web Test
#Test Teardown  Common.End Web Test

# robot -d results/dialogs tests/dialogs.robot

*** Variables ***
${BROWSER} =  chrome
${START_URL} =  https://www.amazon.com
${SEARCH_TERM} =  Ferrari 458
${PREVIOUS_ROW_COUNT}
${hello} =          ${SEARCH_TERM}

*** Test Cases ***
#Logged out user can search for products
#    [Tags]  Web
#    ${new_browser} =  Get Selection From User  Which browser?  chrome  ie  firefox
#    Set Global Variable  ${BROWSER}  ${new_browser}
#    AmazonApp.Search for Products
#
#Logged out user can add product to cart
#    [Tags]  Web
#    AmazonApp.Search for Products
#    Execute Manual Step  Do something manually!  It failed!
#    AmazonApp.Select Product from Search Results
#    Pause Execution
#    AmazonApp.Add Product to Cart

#Pick Some
#    ${options} =    Create List    Apple    Banana    Cherry    Guva    Zoopia
#    log To Console    Fruit1: ${options[0]}
#    ${selected} =   Get Selections From User    Please select:    @{options}
#    Log To Console    You selected: ${selected}
#    log to console    why u ${selected}[0]

Variable Should Be Increase By One
    Set Suite Variable    ${PREVIOUS_ROW_COUNT}    5
    log to console    ${PREVIOUS_ROW_COUNT}
    ${new} =    evaluate    ${PREVIOUS_ROW_COUNT} + 1
    log to console    ${new}
    Should Be Equal As Numbers    ${new}    6

Check None
    ${fuck}=    set variable    ${None}
    log to console              ${fuck}
    log to console              ${hello}
