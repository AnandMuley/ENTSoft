*** Settings ***
Library           Selenium2Library

*** Test Cases ***
Login
    Open Browser    http://localhost:8091/ENTSoft/index    firefox
    Input Text    id=inputForename    Andie
