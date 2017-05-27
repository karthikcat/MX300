*** Setting ***
Library  Selenium2Library
*** Variable ***
${Username}    xpath=.//*[@id='username']
${Password}    xpath=.//*[@id='root']/div/div/div/form/div[1]/div/div[2]/div/input
${Login}    xpath=.//*[@id='root']/div/div/div/form/div[2]/button
${Webpage}    http://10.78.239.95/web/signin
${Admin}    xpath=.//*[@id='menu-toplevel-admin']/a
${Logout}    xpath=.//*[@id='menu-item-signin-signout']/a
${name}   admin
${Status}   xpath=.//*[@id='root']/div/div[3]/div/div/div[2]/div[2]/div[2]/div/dl/dd[1]
${SetUp}    xpath=.//*[@id='menu-toplevel-setup']/a
${Personalization}   xpath=.//*[@id='menu-item-personalization']/a
${Autoimage}        xpath=.//*[@id='root']/div/div[3]/div/div/div[1]/div/ul/li[2]/a/img
${NonE}             xpath=html/body/div[1]/div/div[3]/div/div/div[1]/div/ul/li[1]/a
${ringtone}         xpath=.//*[@id='root']/div/div[3]/div/div/div[2]/div[2]/div[1]/select
${Volume}           xpath=.//*[@id='root']/div/div[3]/div/div/div[2]/div[2]/div[2]/div/div[1]/div
${Save_the_ringtone}  xpath=.//*[@id='root']/div/div[3]/div/div/div[2]/div[2]/div[1]/span/button
*** Keyword ***
change ringtone to Calculation
    Set Browser Implicit Wait    55  
    Select From List    ${ringtone}     Calculation    
    Sleep    20
    
save the changes
    Set Browser Implicit Wait    55
    Click Button    ${Save_the_ringtone}
    Sleep     5
    
Change the volume
    Set Browser Implicit Wait    55
    Double Click Element    ${Volume}
    Sleep    5    
    
change ringtone to Ascent
    Set Browser Implicit Wait    55  
    Select From List    ${ringtone}     Ascent    
    Sleep    20     
    
Select Auto
    Set Browser Implicit Wait    55
    Click Image    ${Autoimage}
    Sleep    5
    
Select None
    Set Browser Implicit Wait    55    
    Click Image    ${NonE}
    Sleep    5         

Open Setup
    Set Browser Implicit Wait    55
    Click Link    ${SetUp}
    
Open Personalization
    Set Browser Implicit Wait    55
    Click Link    ${Personalization}    

logout and close Browser
    Click Link    ${Admin}
    Set Browser Implicit Wait    55
    Click Link    ${Logout} 
    Sleep    5
    Close Browser
    
open endpoint IP in firefox along with credentials and login
    Open Browser    ${Webpage}      ff   
    Set Browser Implicit Wait    55
    Input Text    ${Username}    ${name} 
    Set Browser Implicit Wait    55
    Click Button    ${Login}
    Sleep    10

status details
    ${a}  Get Text    ${Status} 
    Log    ${a}
        

                           
    