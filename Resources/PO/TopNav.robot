*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${NAVBAR_TEAM} =                Team


*** Keywords ***
Select "Team" Link
    Click Link                  ${NAVBAR_TEAM}
