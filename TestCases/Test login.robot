*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locators.py


Resource    ../Ressources/keywords.robot

*** Variables ***


*** Test Cases ***
Test Practice01
    connect to practice site    ${site}    ${browser}
    log to site    ${user}    ${pass}
    logout to site    ${LogOut}
    
