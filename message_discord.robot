*** Settings ***
Library           SeleniumLibrary


*** Variables ***
${user}    id=uid_7
${password}    id=uid_9
${login}    //*[@id="app-mount"]/div[2]/div[1]/div[1]/div/div/div/div/form/div[2]/div/div[1]/div[2]/button[2]
${gif}    //button[@aria-label='Open GIF picker' and @type='button']
${searchbar}    //*[@id="gif-picker-tab-panel"]/div[1]/div/div/div/input
${mario}    //*[@id="gif-picker-tab-panel"]/div[2]/div[1]/div/div/div[2]/video
${sonic}    //*[@id="gif-picker-tab-panel"]/div[2]/div[1]/div/div/div[1]/video
${luigi}    //*[@id="gif-picker-tab-panel"]/div[2]/div[1]/div/div/div[5]/video    


*** Keywords *** 
Open Discord and Login
    Open Browser    https://discord.com/login    chrome
    Maximize Browser Window 
    Input Text     ${user}    #youremail
    Input Text    ${password}    #password
    Click Element   ${login} 
    Sleep    2
Send Good Morning to Alan
    Go To      https://discord.com/channels/@me/758125616888414219 
    Maximize Browser Window 
    Wait Until Element Is Visible    ${gif}
    Click Element    ${gif}
    Input Text    ${searchbar}    mario good morning
    Sleep    1
    Wait Until Element Is Visible    ${mario}
    Click Element    ${mario}
    Sleep     1
Send Good Morning to Willian
    Go To    https://discord.com/channels/@me/1269350908261699687
    Maximize Browser Window 
    Wait Until Element Is Visible    ${gif}
    Click Element    ${gif}
    Input Text    ${searchbar}    sonic good morning
    Sleep     1
    Wait Until Element Is Visible    ${sonic}
    Click Element    ${sonic}
    Sleep     1
Send Good Morning to Carlos
    Go To    https://discord.com/channels/@me/1085044914372489286
    Maximize Browser Window 
    Wait Until Element Is Visible    ${gif}
    Click Element    ${gif}
    Input Text    ${searchbar}    luigis good morning
    Sleep     1
    Wait Until Element Is Visible    ${luigi}
    Click Element    ${luigi}
    Sleep     1
    
    
*** Test Cases *** 

 cenario 1
 ...   Open Discord and Login
    Send Good Morning to Alan
    Send Good Morning to Willian
    Send Good Morning to Carlos

