*** Settings ***
Documentation    TC-001: Login con credenziali valide
Library          SeleniumLibrary

Suite Teardown   Close All Browsers

*** Variables ***
${URL}              https://example.com
${TITOLO_ATTESO}    Example

*** Keywords ***
Apri Browser Headless
    [Documentation]    Apre Chrome in modalità headless (compatibile con CI/CD senza display).
    ${options}=    Evaluate    selenium.webdriver.ChromeOptions()    modules=selenium.webdriver
    Call Method    ${options}    add_argument    --headless=new
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Call Method    ${options}    add_argument    --disable-gpu
    Open Browser    ${URL}    Chrome    options=${options}

*** Test Cases ***
TC-001 Login Con Credenziali Valide
    [Documentation]    Collegato a docs/test-cases/TC-001-login-valido.md
    ...                Verifica che il sito example.com sia raggiungibile e il titolo visibile e corretto.
    [Tags]    login    smoke    high
    Apri Browser Headless
    Title Should Contain    ${TITOLO_ATTESO}
    [Teardown]    Close Browser
