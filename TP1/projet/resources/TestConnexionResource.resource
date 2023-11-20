*** Settings ***
Documentation    Ressources pour le TP1 BUT3 Projet : Test de la connecion sur le site https://petstore.octoperf.com
Resource         ../resources/FormVariables.resource
Resource         ../resources/GeneralVariables.resource
Library          SeleniumLibrary
Library          CSVLibrary
Library          FakerLibrary
Library          DataDriver    ../data/users.csv
Resource         FormVariables.resource

*** Keywords ***
Renseigner les informations de connexion
    ${users}    Read Csv File To List    /../data/users.csv
    ${userID}    Set Variable    FakerLibrary.RandomElement    ${users}
    Input Text    ${input-userID}    ${userID}
    Sleep    2
    Input Text    ${input-password}    ${password}
    Sleep    2
Cliquer sur le bouton Login
    Click Button    ${link-signon}
    Sleep    2
    Page Should Contain    My Account