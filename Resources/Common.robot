*** Settings ***
Library             SeleniumLibrary


*** Keywords ***
Initialize Selenuim
    set selenium speed    .1s
    set selenium timeout    5s




End Web Test
    sleep                   3s
    close window
    log         ${website url}         # from global variables

