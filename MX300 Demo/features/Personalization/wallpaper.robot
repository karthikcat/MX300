*** Setting ***
Library  Selenium2Library
Test Setup    open endpoint IP in firefox along with credentials and login   
Test Teardown  logout and close Browser
Resource    ../Testdata.robot
*** Test Cases ***
Change wallpaper to Auto
     Open Setup
     Open Personalization
     Select Auto

Change Volume
    Open Setup
     Open Personalization
     Change the volume
     

     