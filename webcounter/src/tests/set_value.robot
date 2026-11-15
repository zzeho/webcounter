*** Settings ***
Resource    resource.robot
Suite Setup    Open And Configure Browser
Test Setup     Reset Counter To Zero
Suite Teardown    Close Browser

*** Test Cases ***
Setting counter value to 10
    Go To    ${HOME_URL}
    Fill Text    input[name="value"]    10
    Click    button >> text=aseta
    Get Text    body    *=    nappia painettu 10 kertaa