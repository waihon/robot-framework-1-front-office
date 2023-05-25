*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${LANDING_HEADER_LABEL}            Welcome To Our Studio!


*** Keywords ***
Navigate To
    Go To                       ${URL}

Verify Page Loaded
    Wait Until Page Contains    ${LANDING_HEADER_LABEL}