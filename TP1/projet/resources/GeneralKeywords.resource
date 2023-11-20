*** Settings ***
Documentation    Ressources pour le TP1 BUT3 Projet
Library          SeleniumLibrary
Resource         GeneralVariables.resource


*** Variables ***
${PETSTORE-URL}      https://petstore.octoperf.com
${BROWSER}           ff


*** Keywords ***
Debut du test
    Open Browser    ${PETSTORE-URL}    ${BROWSER}
    Sleep    1
    Page Should Contain    Welcome to JPetStore 6

Cliquer sur le lien "Enter the Store"
    Click Element    ${link-enter}
    Sleep        1
    Page Should Contain Element    ${image-mainPage}

Cliquer sur le lien "Sign In"
    Click Element    ${link-signIn}
    Sleep        1
    Page Should Contain    Please enter your username and password.

Fin du test
    Close Browser