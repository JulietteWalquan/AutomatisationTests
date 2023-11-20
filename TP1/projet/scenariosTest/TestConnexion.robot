*** Settings ***
Documentation    TP1 BUT3 Projet : Test de la connexion sur le site https://petstore.octoperf.com
Resource         ../resources/TestConnexionResource.resource
Resource         ../resources/GeneralKeywords.resource
Library          DataDriver    ../data/users.csv
Test Setup       Debut du test
Test Teardown    Fin du test


*** Keywords ***
Renseigner les informations de connexion
    [Arguments]    ${userID}    ${password}
    Input Text    id=username    ${userID}
    Input Text    id=password    ${password}


*** Test Cases ***
Test de la connexion
    Cliquer Sur Le Lien "Enter The Store"
    Cliquer Sur Le Lien "Sign In"
    Renseigner les informations de connexion
    Cliquer sur le bouton Login