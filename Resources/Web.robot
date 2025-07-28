*** Settings ***
Library             SeleniumLibrary


*** Keywords ***
Sign In
    click link              Sign In     # or using id=SignIn/name=sign-in-link
    #click link              id:SignIn
    #click link              login.html
    #click link              css=#SignIn         #copy selector or copy xpath

    input text              id=email-id           admin@robotframe.com
    input text              id=password           qwerty
    click button            id:submit-id


    click link              id:new-customer
    input text              id=EmailAddress           helloworld@gmail.com
    input text              id=FirstName              Hello
    input text              id=LastName               World
    input text              id=City                   Detroit
    select from list by value           id=StateOrRegion             MI
    select radio button     gender         male
    select checkbox         name=promos-name
    click button            Submit

    wait until page contains     Success!
    log                     hello world!


Open CRM
    open browser            https://automationplayground.com/crm/       edge
    page should contain      Customers Are Priority One