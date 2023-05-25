*** Settings ***
Resource    ./PO/Landing.robot
Resource    ./PO/Team.robot
Resource    ./PO/TopNav.robot


*** Variables ***


*** Keywords ***
Go To Landing Page
    Landing.Navigate To
    Landing.Verify Page Loaded

Go To "Team" Page
    TopNav.Select "Team" Link
    Team.Verify Page Loaded

Validate "Team" Page
    Team.Verify Page Contents
