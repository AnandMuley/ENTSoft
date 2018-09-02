*** Settings ***
Library           Selenium2Library

*** Test Cases ***
Login
    Open Browser    https://localhost.o2.co.uk:9443/upgrade/store/phones    firefox
    Close All Browsers
