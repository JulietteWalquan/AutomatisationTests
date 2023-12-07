*** Settings ***
Documentation       TP1 BUT3 Exercice 4 : Acceder a un site web via un jeu de donnees d'un fichier xls
Library             SeleniumLibrary
Library             DataDriver    ../data/loginPassword.xlsx
Test Setup    Debut du test
Test Teardown    Fin du test
Resource        ../resources/ResourcesEx3&4.resource
Test Template    Tester l'acces au site via le jeu de donnees

*** Keywords ***
Tester l'acces au site via le jeu de donnees
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