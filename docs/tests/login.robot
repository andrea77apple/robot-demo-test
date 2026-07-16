*** Test Cases ***
*** Settings ***
Documentation    TC-001: Verifica che il sito example.com sia raggiungibile

*** Test Cases ***
Verifica Sito Raggiungibile
    [Documentation]    Collegato a docs/test-cases/TC-001-login-valido.md
    ${response}=    Evaluate    1 + 1
    Should Be Equal As Integers    ${response}    2