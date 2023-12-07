*** Settings ***
Documentation    Ressources pour le TP1 BUT3 Projet : Test de la recherche sur le site https://petstore.octoperf.com
Resource         ../resources/FormVariables.resource
Library          SeleniumLibrary


*** Keywords ***
Recherche Cats
    Input Text    ${input-search}    Cats
    Sleep    2
    Click Button    ${button-search}
    Sleep    2
    Page Should Not Contain    Cats

Recherche Manx
    Input Text    ${input-search}    Manx
    Sleep    2
    Click Button    ${button-search}
    Sleep    2
    Page Should Contain    Manx