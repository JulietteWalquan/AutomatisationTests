*** Settings ***
Documentation       TP1 BUT3 Exercice 2.2 : Recherche d'article sur site de e-commerce
Library             SeleniumLibrary


*** Variables ***
${CDISCOUNTURL}    https://www.cdiscount.com/
${BROWSER}      ff


*** Test Cases ***
Ouvrir Cdiscount avec le navigateur Firefox
    Open Browser    ${CDISCOUNTURL}    ${BROWSER}
    sleep    2
    Click Element    //*[@id="footer_tc_privacy_button_2"]
    sleep    2

Saisir un mot-clé dans la page de recherche
    Input Text    id=search    Lenovo IdeaPad Slim 3 Chrome
    sleep    2
    Click Element    //*[@class="btn btn--reset form-icon js-search__icon"]
    sleep    2

Vérifier que la page s'affiche correctement
    Click Element    //*[@id="footer_tc_privacy_button_2"]
    sleep    2
    Page Should Contain    Meilleures ventes
    sleep    2

Vérifier que les résultats de recherche contiennent l'article
    Execute Javascript    window.scrollTo(0, 700)
    sleep    2
    Page Should Contain    Lenovo IdeaPad Slim 3 Chrome
    sleep    2
Fermer le navigateur
    Close Browser