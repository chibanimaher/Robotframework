*** Settings ***
Library    SeleniumLibrary  
Suite Setup    log     i am oin test suites setup
Suite Teardown     log   iam in tear down setup
Test Setup    log    i am in setup tescase
Test Teardown    log    i am in tear down casetest
Default Tags    sanity
*** Variables ***
${URL}    https://www.google.com    
@{newScalar}     autmation step by step     facbook.com  
*** Keywords ***
StartBrowser
     Open Browser    ${URL}    chrome
     Set Browser Implicit Wait    5
   
*** Test Cases ***   
first test
    
    log     Hello word
secodn test
    [Tags]    smoke
   StartBrowser
    Input Text    name=q    ${newScalar}[1]    
    Press Keys    name=q    ENTER    
    sleep    2
    Close Browser
    log    this test is executed by %{username} on %{os} 
Third test
    log     iam in third test

