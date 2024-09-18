*** Settings ***
Documentation       Operations related to browser

Library             SeleniumLibrary


*** Keywords ***
Browser OPEN in (${type_of_browser}) with (${webserver_endpoint})
    Wait Until Keyword Succeeds    10    0.2    Open Browser    ${webserver_endpoint}    ${type_of_browser}
