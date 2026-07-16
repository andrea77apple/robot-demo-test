*** Settings ***
Documentation    TC-001: Login con credenziali valide
Library          Browser

Suite Teardown   Close Browser    ALL

*** Variables ***
${URL}              https://example.com
${TITOLO_ATTESO}    Example
${XPATH_LINK}       xpath=/html[1]/body[1]/div[1]/p[2]/a[1]

*** Test Cases ***
TC-001 Login Con Credenziali Valide
    [Documentation]    Collegato a docs/test-cases/TC-001-login-valido.md
    ...                Verifica che il sito example.com sia raggiungibile e il titolo visibile e corretto.
    [Tags]    login    smoke    high
    New Browser    chromium    headless=true
    New Page    ${URL}
    ${titolo}=    Get Title
    Should Contain    ${titolo}    ${TITOLO_ATTESO}
    [Teardown]    Close Browser

TC-002 Verifica Presenza Link
    [Documentation]    Collegato a docs/test-cases/TC-002-verifica-link.md
    ...                Verifica che il link identificato dall'XPath sia presente nella pagina.
    [Tags]    link    smoke    medium
    New Browser    chromium    headless=true
    New Page    ${URL}
    Get Element    ${XPATH_LINK}
    [Teardown]    Close Browser

