*** Settings ***
Library     SeleniumLibrary
Resource    ../keywords/SignUpPageKeywords.robot
Variables   ../resources/config/config.yaml
Variables   ../resources/testdata/testdata.yaml
Suite Setup     open Browser    ${baseUrl}    chrome
Suite Teardown  close Browser


*** Test Cases ***
As a user, I want to sign up with valid credential
    When user sign up to future skill platform with ${email} and ${firstname} and ${lastname} and ${phoneNumber} and ${password} and ${confirmPassword}
    Then future skill should display OTP page and display message as "ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์"