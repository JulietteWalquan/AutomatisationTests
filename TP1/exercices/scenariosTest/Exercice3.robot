*** Settings ***
Documentation       TP1 BUT3 Exercice 3 : Accéder à un site web via un jeu de données d'un fichier csv
Library             SeleniumLibrary
Library             DataDriver    ../data/loginPassword.csv
Test Setup    Debut du test
Test Teardown    Fin du test
Resource        ../resources/ResourcesEx3&4.resource
Test Template    Tester l'accès au site via le jeu de données


*** Keywords ***
Tester l'accès au site via le jeu de données
    [Arguments]    ${login}    ${password}    ${errorMessage}
    Input Text    ${input-username}    ${login}
    sleep    2
    Input Text    ${input-password}    ${password}
    sleep    2
    Click Button    ${button-login}
    sleep    2
    Page Should Contain    ${errorMessage}


*** Test Cases ***
Tests de la connexion avec des identifiants invalides    ${login}    ${password}    ${errorMessage}