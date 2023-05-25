*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${TEAM_HEADER_LABEL} =          css=#team > div > div:nth-child(1) > div > h2


*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains Element   ${TEAM_HEADER_LABEL}

Verify Page Contents
    # This failed on Chrome, Edge, and Firefox as the label has been transformed
    # to OUR AMAZING TEAM via CSS
    #Element Text Should Be      ${TEAM_HEADER_LABEL}   Our Amazing Team
    ${ElementText} =  Get Text  ${TEAM_HEADER_LABEL}
    Should Be Equal As Strings  ${ElementText}    Our Amazing Team  ignore_case=True
