*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Wait until element is ready then click element
    [Arguments]    ${locator}
    Wait until keyword succeeds     2x     2s   Click Element  ${locator}

Wait until element is ready then input text
    [Arguments]    ${locator}    ${text}
    Wait until keyword succeeds     5x    2s   Input Text  ${locator}  ${text}

Wait until element is ready then tick element
    [Arguments]    ${locator}
    Wait until keyword succeeds     5x    2s   Select checkbox  ${locator}

Wait until page contains element then verify text
    [Arguments]    ${expected_text}
    Wait until keyword Succeeds    5x     2s   Page Should Contain        ${expected_text}

