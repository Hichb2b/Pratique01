*** Settings ***
Library    SeleniumLibrary
Library    Screenshot
Variables    ./PageObjects/Locators.py
*** Variables ***
${user}    student
${incUser}    students
${pass}    Password123
${incPass}    Password321
${site}    https://practicetestautomation.com/practice-test-login/
${pageLoggin}    https://practicetestautomation.com/logged-in-successfully/
${browser}    gc
*** Keywords ***
connect to practice site
    [Arguments]    ${site}    ${browser}
    Open Browser    ${site}    ${browser}
    Maximize Browser Window
log to site
    [Documentation]    Se connecter avec le bon username et passeord
    [Arguments]    ${user}    ${pass}
    Sleep    2
    Input Text    ${userName}    ${user}
    Input Password    ${password}    ${pass}
    Click Element    ${btn_Submit}
    Location Should Contain    ${pageLoggin} 
    Page Should Contain    Congratulations student. You successfully logged in!
log with incorrectUser 
    [Documentation]    Se connecter avec un mauvais  username et  uu bon passeord
    [Arguments]    ${incUser}    ${pass}
    Sleep    2
    Input Text    ${userName}    ${incUser}
    Input Password    ${password}    ${pass}
    Click Element    ${btn_Submit}
    Capture Element Screenshot    //div[text()='Your username is invalid!']    ./Screenshot/IncorrectUser.png    
    Page Should Contain    Your username is invalid!
    
log with incorrectPassword 
    [Documentation]    Se connecter avec un bon  username et  un mauvais passeord
    [Arguments]    ${user}    ${incPass}
    Sleep    2
    Input Text    ${userName}    ${user}
    Input Password    ${password}    ${incPass}
    Click Element    ${btn_Submit}
    Capture Element Screenshot    //div[text()='Your password is invalid!']    ./Screenshot/IncorrectPassword.png    
    Page Should Contain    Your password is invalid!
logout to site
    [Arguments]    ${LogOut}
    Click Link    ${LogOut}
    Close Browser          
