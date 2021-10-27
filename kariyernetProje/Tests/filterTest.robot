*** Settings ***
Resource    ../Resources/PageObject/TestCases/filterTestCase.robot
Resource    ../Resources/PageObject/Keywords/Utils/utils.robot

*** Test Cases ***
kariyernet filter
    filterTestCase.kariyernet filter created

kariyernet filter cleaning
    filterTestCase.kariyernet cleaning the filter