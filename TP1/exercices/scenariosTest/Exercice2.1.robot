*** Settings ***
Documentation       TP1 BUT3 Exercice 2.1 : Recherche d'article sur site de e-commerce
Library             SeleniumLibrary


*** Variables ***
${AMAZONURL}    https://www.amazon.fr/
${BROWSER}      ff


*** Test Cases ***
Ouvrir Amazon avec le navigateur Firefox
    Open Browser    ${AMAZONURL}    ${BROWSER}
    sleep    2
    Click Element    //*[@id="sp-cc-accept"]

Saisir un mot-cle dans la page de recherche
    Input Text    id=twotabsearchtextbox    Lenovo IdeaPad Slim 3 Chrome
    sleep    2
    Click Element    //*[@id="nav-search-submit-button"]
    sleep    2

Verifier que la page s'affiche correctement
    Page Should Contain    resultats pour
    sleep    2

Verifier que les resultats de recherche contiennent l'article
    Page Should Contain    Lenovo IdeaPad Slim 3 Chrome
    sleep    2
Fermer le navigateur
    Close Browser