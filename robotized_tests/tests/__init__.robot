*** Settings ***
Documentation       Global initialization

Resource            setup/setup_teardown.Resource
Variables           defaults.yaml

Suite Setup         Turn on device
Suite Teardown      Turn off device
Test Setup          Generic test setup
Test Teardown       Generic test teardown


*** Keywords ***
Turn on device
    Log To Console    Start test suite
    Log    FW version: ${FW_VERSION}

Turn off device
    Log To Console    End test suite
