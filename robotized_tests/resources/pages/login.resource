*** Settings ***
Documentation       Operations related to login page

Library             SeleniumLibrary
Resource            general/general_key.resource


*** Keywords ***
IS Login page (${visible/invisible})?
    [Arguments]    ${locator}
    Is webelement (${visible/invisible})?    ${locator}

IS Login page "Handle name" input field (${visible/invisible})?
    [Arguments]    ${locator}
    Is webelement (${visible/invisible})?    ${locator}

IS Login page "Password" input field (${visible/invisible})?
    [Arguments]    ${locator}
    Is webelement (${visible/invisible})?    ${locator}

IS Login page "Login" button (${enable/disable})?
    [Arguments]    ${locator}
    Is element (${enable/disable})?    ${locator}

Login page "Handle name" input field INSERT (${username})
    [Arguments]    ${locator}
    Insert text into input and verify    ${locator}    ${username}

Login page "Password" input field INSERT (${password})
    [Arguments]    ${locator}
    Insert password into input and verify    ${locator}    ${password}

Login page "Login" button CLICK on
    [Arguments]    ${locator}
    Click on button    ${locator}

IS Login page (${url}) location loaded correctly?
    Is (${url}) location loaded correctly?
