*** Settings ***
Documentation

Library        SeleniumLibrary
Library        BuiltIn
Library        DateTime

*** Keywords ***
Generic test setup
    ${date}=    Get Current Date
    Log To Console    Start:${date}

Generic test teardown
    Log To Console    End
    Close All Browsers
