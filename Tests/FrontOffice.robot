*** Settings ***
Resource        ../Resources/CommonWeb.robot
Resource        ../Resources/FrontOfficeApp.robot

Test Setup      Begin Web Test
Test Teardown   End Web Test

# robot -d results tests/FrontOffice.robot

*** Variables ***
${URL}          https://automationplayground.com/front-office/
${BROWSER}      chrome

*** Test Cases ***
Should be able to access "Team" page
    [Documentation]     This is test 1
    [Tags]              test1
    Log    Executing test 1
    Sleep  2s

"Team" page should match requirements
    [Documentation]     This is test 2
    [Tags]              test2
    Log    Executing test 2
    Sleep  2s
