*** Settings ***
Library    SeleniumLibrary
Library    String

*** Keywords ***

create session
    [Arguments]    ${URL}
    open browser    ${URL}  chrome
    Maximize Browser Window

click
    [Arguments]    ${LOCATER}
    Wait Until Page Contains Element    ${LOCATER}
    click element   ${LOCATER}

scroll
    Execute JavaScript    window.scrollTo(0,1000)

close session
    close browser

get advert data
    [Arguments]    ${LOCATER}
    Wait Until Page Contains Element    ${LOCATER}
    ${SIZE} =    Get Text    ${LOCATER}
    [Return]    ${SIZE}

get advert fetch
    [Arguments]    ${ADVERT}
    ${advert1}=    utils.get advert data    ${ADVERT}
    ${result}=    Fetch From Left    ${advert1}    \n
    log to console    ${result}
    [Return]    ${result}

get filter element count
    ${element_count}=    get element count    css:div[class="chips-wrapper"] > div
    log to console    ${element_count}
    [Return]    ${element_count}
