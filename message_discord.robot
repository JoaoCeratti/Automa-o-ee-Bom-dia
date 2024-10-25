*** Settings ***
Library           SeleniumLibrary
Library           Collections
Library           OperatingSystem


*** Variables ***
${user}    id=uid_7
${password}    id=uid_9
${login}    //*[@id="app-mount"]/div[2]/div[1]/div[1]/div/div/div/div/form/div[2]/div/div[1]/div[2]/button[2]
${gif_button}    //button[@aria-label='Open GIF picker' and @type='button']
${searchbar}    //*[@id="gif-picker-tab-panel"]/div[1]/div/div/div/input


*** Keywords *** 
Open Discord and Login
    Open Browser    https://discord.com/login    chrome
    Maximize Browser Window 
    Input Text     ${user}    #yourusername
    Input Text    ${password}    #yourpassword
    Click Element   ${login} 
    Sleep    2
Choose and Send a Random GIF
    [Arguments]      ${search_term}
    Click Element    ${gif_button}
    Input Text    ${searchbar}    ${search_term}
    Maximize Browser Window 
    Sleep    1
    ${random_index}=    Get Random Index    1    5 
    ${gif_xpath}=    Create GIF Xpath    ${random_index}
    Wait Until Element Is Visible    ${gif_xpath}
    Click Element    ${gif_xpath}

Create GIF Xpath
    [Arguments]    ${index}
    ${xpath}=    Set Variable    //*[@id="gif-picker-tab-panel"]/div[2]/div[1]/div/div/div[${index}]/video 
    RETURN    ${xpath}

Get Random Index
    [Arguments]      ${min}    ${max}
    ${random_number}=   Evaluate    random.randint(${min}, ${max})
    RETURN        ${random_number}


send random good morning
    [Arguments]    ${url}    ${search_term}
    Go To    ${url}
    Sleep    1
    Maximize Browser Window
    Wait Until Element Is Visible    ${gif_button}
    Choose and Send a Random GIF    ${search_term}
#
    
    
    
*** Test Cases *** 

 cenario 1
 ...   Open Discord and Login
        send random good morning    https://discord.com/channels/@me/1085044914372489286   sonic good morning
        send random good morning    https://discord.com/channels/@me/758125616888414219    shadow sonic good morning
        send random good morning    https://discord.com/channels/@me/1264382843526840370   tales sonic good morning
        send random good morning    https://discord.com/channels/@me/1269350908261699687    knuckles good morning
       
