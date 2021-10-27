*** Settings ***
Documentation    Kariyernet Filter
Library    SeleniumLibrary
Library    String
Resource    Utils/utils.robot

*** Variables ***
${URL}    https://www.kariyer.net/is-ilanlari
${COUNTRY_DROPDOWN}    css:[data-test='country-title']
${SELECTED_COUNTRY_TURKEY}    id:10
${CITY_DROPDOWN}    css:[data-test='city-title']
${SELECTED_CITY_IZMIR}    css:label[for="__BVID__60"]
${SELECTED_CITY_ANKARA}    css:label[for="__BVID__58"]
${SELECTED_CITY_ISTANBUL_AVR}    css:label[for="__BVID__54"]
${SELECTED_CITY_CLOSE_BUTTON}    css:[data-test='close-icon']
${DISTRICT_DROPDOWN}    css:[data-test='districtModal']
${SELECTED_DISTICT_ALIAGA}    css: div #__BVID__219___BV_modal_body_ > div > div > div
${SELECTED_DISTICT_CLOSE_BUTTON}    css: div #__BVID__219___BV_modal_content_ > header > div > span
${SELECTED_DATE_15}    css: div #__BVID__228 > div > div > div > div > div:nth-of-type(7)
${APPLY_BUTTON}    css:[data-test='apply-button']
${LIGHTBOX_CLOSE_BUTTON}    id:img_lightbox_close
${ADVERT}    css:div[class="t-6 text-secondary mb-3 search-result-section"]
${ADVERT1}    css:.mb-3.search-result-section.t-6.text-secondary
${FILTER_REMOVE_1}    css:div[class="chips-wrapper"] > div:nth-of-type(6) > i
${FILTER_REMOVE_2}    css:div[class="chips-wrapper"] > div:nth-of-type(5) > i
${FILTER_CLEAR}    css:h3[class="filter-title"] > a
${CLEAR_ELEMENT}    css:h3[class="filter-title"]

*** Keywords ***

go to kariyernet
    utils.create session    ${URL}

click the country
    utils.click    ${COUNTRY_DROPDOWN}

selected the country
    utils.click    ${SELECTED_COUNTRY_TURKEY}

click the city
    utils.click    ${CITY_DROPDOWN}

selected the city
    utils.click    ${SELECTED_CITY_IZMIR}
    utils.click    ${SELECTED_CITY_ANKARA}
    utils.click    ${SELECTED_CITY_ISTANBUL_AVR}
    utils.click    ${SELECTED_CITY_CLOSE_BUTTON}

click the district
    utils.click    ${DISTRICT_DROPDOWN}

selected the district
    utils.click    ${SELECTED_DISTICT_ALIAGA}
    utils.click    ${SELECTED_DISTICT_CLOSE_BUTTON}
selected date
    utils.click    ${SELECTED_DATE_15}

click the apply button
    utils.click  ${APPLY_BUTTON}

click lightbox close button
    utils.click    ${LIGHTBOX_CLOSE_BUTTON}

all filters fetch
    ${ADVERT_DATA_1}=    utils.get advert fetch    ${ADVERT}
    Set Global Variable    ${ADVERT_DATA_1}

search filter fetch
    ${ADVERT_DATA_2}=    utils.get advert fetch    ${ADVERT}
    Set Global Variable    ${ADVERT_DATA_2}

check advert count comparsion
    should be true    ${ADVERT_DATA_1} > ${ADVERT_DATA_2}
    element should not be visible    ${FILTER_REMOVE_1}
    element should not be visible    ${FILTER_REMOVE_2}

filter remove
    utils.click    ${FILTER_REMOVE_1}
    utils.click    ${FILTER_REMOVE_2}

get all filter count
    ${ALL_ELEMENT_COUNT} =    utils.get filter element count
    Set Global Variable   ${ALL_ELEMENT_COUNT}

get close filter count
    ${CLOSE_ELEMENT_COUNT} =    utils.get filter element count
    Set Global Variable   ${CLOSE_ELEMENT_COUNT}
check filter count comparsion
    should be true    ${ALL_ELEMENT_COUNT} > ${CLOSE_ELEMENT_COUNT}

click filter clear
    utils.click    ${FILTER_CLEAR}

check clear filter verify
    element should not be visible    ${CLEAR_ELEMENT}

close kariyernet
    utils.close session




