*** Settings ***
Library    SeleniumLibrary
Variables    ../Ressources/PageObjects/Locators.py
Resource    ../Ressources/keywords.robot


*** Test Cases ***
Test1PositiveLogIn 
    connect to practice site    ${site}    ${browser}
    log to site    ${user}    ${pass}
    logout to site    ${LogOut}
    
Test2Negativeusername
    connect to practice site    ${site}    ${browser}
    log with incorrectUser     ${incUser}    ${pass}

Test3NegativepassWord
    connect to practice site    ${site}    ${browser}
    log with incorrectPassword     ${user}    ${incPass}
       