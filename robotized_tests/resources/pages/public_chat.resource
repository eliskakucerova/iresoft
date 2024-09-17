*** Settings ***
Documentation

Library    SeleniumLibrary
Resource    ../general/general_key.resource

*** Keywords ***
IS Public chat loaded correctly?
    [Arguments]    ${locator}
    IS connection to chat set up succesfully?    ${locator}
