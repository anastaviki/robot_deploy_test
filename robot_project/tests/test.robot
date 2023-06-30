*** Settings ***
Documentation    Contains Test Cases from file TestCasesRF.xlsx

Resource    ../resources/variables.robot



*** Test Cases ***
Verify the count of records in [Person].[Address] table
     [Tags]     Table Person.Address
     [Documentation]
     ...  | *Setup*:
     ...  | 0.Connect To Database AdventureWorks2012 via pymsql
     ...  |
     ...  | *Test Steps*
     ...  | 0.Query row count for Table Person.Address
     ...  |
     ...  | *Expected result:*
     ...  | 0.Result is not empty
     ...  | 1.The value with the total number of records in the [Person].[Address] table is the same as expected
    Set Test Variable    ${test}
    ${result}    Set Variable    ${test}
    Log    "Num value is ${result}"    console=True
    Should Not Be Empty    ${result}
    Should Be Equal    ${expected}     ${result}

