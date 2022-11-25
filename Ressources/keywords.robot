*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locators.py
*** Variables ***
${user}    student
${pass}    Password123
${site}    https://practicetestautomation.com/practice-test-login/
${browser}    gc
*** Keywords ***
connect to practice site
    [Arguments]    ${site}    ${browser}
    Open Browser    ${site}    ${browser}
    Maximize Browser Window
log to site
    [Arguments]    ${user}    ${pass}
    Sleep    2
    Input Text    ${userName}    ${user}
    Input Password    ${password}    ${pass}
    Click Element    ${btn_Submit}
logout to site
    [Arguments]    ${LogOut}
    Click Link    ${LogOut}
    Close Browser          
