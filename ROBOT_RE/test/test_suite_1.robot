*** Settings ***
Library    SeleniumLibrary    
Suite Setup    Log    I am inside suite setup
Suite Teardown    Log    Iam inside suite teardown    
Test Setup    Log    I am inside test case setup    
Test Teardown    Log    I am inside test case teardown

Default Tags    sanity
*** Test Cases ***
MyfirstCase
    [Tags]    smoke
    Log    Hello World first .... 
    
MysecondCase
    [Tags]    regression
    Log    Hello World second .... 

MythirdCase
    
    Log    Hello World third.... 
MysanityCase
    
    Log    Hello World sanity .... 
    
# MySeleniumTestcase
    # Open Browser   https://ca.indeed.com/?r=us    chrome 
    # # Set Browser Implicit Wait    5
    # Input Text    name=q    QA Analyst  
    # Sleep    2
    # Press Keys    name=q    ENTER
    # Sleep    2
    # # Click Button    class=icl-Button    
    # Close Browser
    # Log    Test Successfully completed
    
# MyLoginTest
    # [Documentation]    Sample login test
    # ...    description
    # Open Browser    ${URL}    chrome
    # Set Browser Implicit Wait    5
    # LoginKW
    # Click Element    id=welcome     
    # Click Element    link=Logout   
    # Log    Test completed    
    # Log    the code is executed by %{username} on %{os}
    # Close Browser     


# *** Variables ***
# ${URL}    https://opensource-demo.orangehrmlive.com/
# @{CREDENTIALS}    Admin    Admin123
# &{LOGINDATA}    username=Admin    password=admin123


# *** Keywords ***
# LoginKW
    # Input Text    name=txtUsername    @{CREDENTIALS}[0]
    # Input Password    name=txtPassword    &{LOGINDATA}[password]
    # Click Button    name=Submit   
