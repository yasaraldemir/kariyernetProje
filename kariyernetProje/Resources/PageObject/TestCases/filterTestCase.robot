*** Settings ***
Documentation    Kariyernet Filter
Library    SeleniumLibrary
Resource    ../Keywords/filterKeywords.robot
*** Keywords ***
kariyernet filter created
    filterKeywords.go to kariyernet
    filterKeywords.all filters fetch
    filterKeywords.click the country
    filterKeywords.selected the country
    filterKeywords.click the city
    filterKeywords.selected the city
    filterKeywords.click the district
    filterKeywords.selected the district
    filterKeywords.selected date
    filterKeywords.click the apply button
    sleep    3 second
    filterKeywords.get all filter count
    filterKeywords.filter remove
    filterKeywords.search filter fetch
    filterKeywords.check advert count comparsion
    filterKeywords.get close filter count
    filterKeywords.check filter count comparsion
    filterKeywords.close kariyernet

kariyernet cleaning the filter
    filterKeywords.go to kariyernet
    filterKeywords.all filters fetch
    filterKeywords.click the country
    filterKeywords.selected the country
    filterKeywords.click the city
    filterKeywords.selected the city
    filterKeywords.click the district
    filterKeywords.selected the district
    filterKeywords.selected date
    filterKeywords.click the apply button
    sleep    3 second
    filterKeywords.click filter clear
    sleep    3 second
    filterKeywords.check clear filter verify
    filterKeywords.close kariyernet
