*** Settings ***
Documentation       Public page, user sned text message in public chat, display date and time are correct according to the local time.
Metadata            Requirements    https://github.com/eliskakucerova/iresoft/blob/main/docs/requirements.md#req_0016

Library             SeleniumLibrary
Resource            general/manual_step.resource
Resource            setup/setup_teardown.resource


*** Tasks ***
test_0037
    [Tags]    profile_page
    Perform manually    Open chat application
    Perform manually    Insert valid username and password
    Verify manually     Is public chat page displayed correctly?
    Perform manually    Write message into text field
    Verify manually     Is "Send" button active and enable?
    Perform manually    Click on button "Send"
    Verify manually     Is the date and time displayed next to the message?
    Verify manually     Is the date and time correct according to local time and date? 
