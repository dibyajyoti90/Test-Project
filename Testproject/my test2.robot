*** Test Cases ***
FirstSeleniumTest
    Create Webdriver             Chrome    executable_path=C:\\Users\\e004427\\Downloads\\chromedriver.exe
   
    Set Browser Implicit Wait    5
  
 Open 
    Go to  http://robotframework.org   
    
   
   
    Maximize Browser Window
    Log To Console               Website navigated successfully 
     
    Wait Until Element Is Visible    //a[text()='robotframework.org/rpa']
    
    Click Element    //a[text()='robotframework.org/rpa']
    
    Comment    This is a new Window
    
    Select Window  Robot Framework
    
    ${url1}=  Get Location
    
    log to console  ${url1}
    
    Select Window  Robot Framework RPA 
    
     ${url2}=  Get Location
     
     log to console  ${url2}
     
     @{list1}  get window handles
     : FOR     ${win}  IN  @{list1}
     \    select window  ${win}
     \     ${url}=  Get Location
     \    log to console  ${url}
    
    
    
    
 *** Settings ***
 Documentation    A test suite with a single test for valid login google
Library           SeleniumLibrary
Library           OperatingSystem
