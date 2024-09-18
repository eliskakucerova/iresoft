*** Settings ***
Documentation       Operations related to public chat page

Library             SeleniumLibrary
Resource            general/general_key.resource


*** Keywords ***
IS Public chat loaded correctly?
    [Arguments]    ${locator}
    IS connection to chat set up succesfully?    ${locator}
