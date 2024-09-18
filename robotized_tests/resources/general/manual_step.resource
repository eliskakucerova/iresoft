*** Settings ***
Documentation       Helper for opening dialog window

Library             Collections
Library             Dialogs


*** Keywords ***
Verify manually
    [Arguments]    @{text}
    Execute Manual Step    @{text}

Perform manually
    [Arguments]    ${text}
    Execute Manual Step    Please perform "${text}" and press "Pass"
