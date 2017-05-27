*** Setting ***
Library  Selenium2Library
Test Setup    open endpoint IP in firefox along with credentials and login   
Test Teardown  logout and close Browser
Resource    ../Testdata.robot
*** Test Cases ***
Change Ringtone to Ascent
     Open Setup
     Open Personalization
     change ringtone to Ascent
     save the changes
     
Change Ringtone to Calculation
    Open Setup
     Open Personalization
     change ringtone to Calculation
     save the changes