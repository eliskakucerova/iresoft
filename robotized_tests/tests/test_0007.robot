*** Settings ***
Documentation    Succesfull connection from login page into chat application, username and password valid
Metadata         Requirements    https://github.com/eliskakucerova/iresoft/blob/main/docs/requirements.md#req_0006

Library        SeleniumLibrary
Library        BuiltIn
Resource       ../resources/general/browser.resource 
Resource       ../resources/setup/setup_teardown.resource
Resource       ../resources/pages/login.resource
Resource       ../resources/pages/public_chat.resource
Variables      ../constants/urls.yaml
Variables      ../constants/xpaths.yaml
Variables      ../constants/defaults.yaml

Test Setup          Generic test setup
Test Teardown       Generic test teardown

*** Tasks ***
test_0007
    Browser OPEN in (Chrome) with (${HTTPS_URL})
    Sleep    5
    IS Login page (${LOGIN_URL}) location loaded correctly?
    IS Login page (visible)?    ${LOGIN_PAGE_HEADER_TEXT}
    IS Login page "Handle name" input field (visible)?    ${LOGIN_PAGE_HANDLENAME_INPUT}
    IS Login page "Password" input field (visible)?    ${LOGIN_PAGE_PASSWORD_INPUT}
    # TODO_IRE: check the login button is disable
    Login page "Handle name" input field INSERT (${VALID_USERNAME})    ${LOGIN_PAGE_HANDLENAME_INPUT}
    Login page "Password" input field INSERT (${VALID_PASSWORD})    ${LOGIN_PAGE_PASSWORD_INPUT}
    IS Login page "Login" button (enable)?    ${LOGIN_PAGE_LOGIN_BUTTON}
    Login page "Login" button CLICK on    ${LOGIN_PAGE_LOGIN_BUTTON}
    IS (${PUBLIC_CHAT_URL}) page location loaded correctly from (${LOGIN_URL}) page?
    IS Public chat loaded correctly?    ${PUBLIC_CHAT_PAGE_CONFIRMATION_MSG}
