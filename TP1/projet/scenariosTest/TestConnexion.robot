*** Settings ***
Documentation    TP1 BUT3 Projet : Test de la connexion sur le site https://petstore.octoperf.com
Resource         ../resources/TestConnexionResource.resource
Resource         ../resources/GeneralKeywords.resource
Library          DataDriver    TP1/projet/data/users.csv
Test Setup       Debut du test
Test Template    Renseigner Les Informations De Connexion
Test Teardown    Fin du test


*** Keywords ***
Renseigner les informations de connexion
    ${users}    Read Csv File To List    TP1/projet/data/users.csv
    ${userID}    Set Variable    FakerLibrary.RandomElement    ${users}
    ${password}    Set Variable    FakerLibrary.RandomElement    ${users}
    Input Text    ${input-userID}    ${userID}
    Sleep    2
    Input Text    ${input-password}    ${password}
    Sleep    2

Cliquer sur le bouton Login
    Click Button    ${link-signon}
    Sleep    2
    Page Should Contain    My Account


*** Test Cases ***
Test de la connexion : Accéder à la page de connexion
    Cliquer Sur Le Lien "Enter The Store"
    Cliquer Sur Le Lien "Sign In"

Test de la connexion : Se connecter avec un compte valide
    Renseigner les informations de connexion
    Cliquer sur le bouton Login