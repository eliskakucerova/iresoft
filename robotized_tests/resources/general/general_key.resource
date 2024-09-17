*** Settings ***
Documentation

Library    SeleniumLibrary

*** Keyword ***
Is webelement (${visible/invible})?
    [Arguments]    ${locator}
    IF    '${visible/invible}' == 'visible'
        Wait Until Page Contains Element    ${locator}
        Wait Until Element Is Visible    ${locator}    20
    ELSE IF    '${visible/invible}' == 'invisible'
        Wait Until Element Is Not Visible    ${locator}    20
    END

Is element (${enable/disable})?
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}
    IF    '${enable/disable}' == 'enable'
        Wait Until Element Is Enabled   ${locator}    20
    ELSE IF    '${enable/disable}' == 'disable'
        Wait Until Keyword Succeeds    5    0.2    Element Should Be Disabled    ${locator}
    END

Insert text into input and verify
    [Arguments]    ${locator}    ${ver_text}
    Wait Until Element Is Enabled    ${locator}
    Input Text    ${locator}    ${ver_text}    True
    ${text}=    Get Value    ${locator}
    Should Be Equal As Strings    ${text}    ${ver_text}

Insert password into input and verify
    [Arguments]    ${locator}    ${ver_text}
    Wait Until Element Is Enabled    ${locator}
    Input Password    ${locator}    ${ver_text}    True
    ${text}=    Get Value    ${locator}
    Should Be Equal   ${text}    ${ver_text}

Click on button
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}
    Wait Until Keyword Succeeds    10    0.2   Click Button    ${locator}

Is (${url}) location loaded correctly?
    Wait Until Location Contains    ${url}    20

IS (${curr_url}) page location loaded correctly from (${prev_url}) page?
    Wait Until Location Is Not    ${prev_url}    20
    Wait Until Location Is    ${curr_url}    10

IS connection to chat set up succesfully?
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}
    ${message}=    Get Text    ${locator}
    Should Contain    ${message}    Successfully connected.
    # TODO_IRE: Wait Until Element Is Not Visible    ${locator}