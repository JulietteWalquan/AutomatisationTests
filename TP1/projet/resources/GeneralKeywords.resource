*** Settings ***
Documentation    Ressources pour le TP1 BUT3 Projet
Library          SeleniumLibrary
Resource         GeneralVariables.resource


*** Variables ***
${PETSTORE-URL}              https://petstore.octoperf.com
${PETSTORE-URL-CONNEXION}    https://petstore.octoperf.com/actions/Account.action?signonForm=
${BROWSER}                   ff


*** Keywords ***
Debut du test
    Open Browser    ${PETSTORE-URL}    ${BROWSER}
    Sleep    2
    Page Should Contain    Welcome to JPetStore 6

Debut du test sur la page de connexion
    Open Browser    ${PETSTORE-URL-CONNEXION}    ${BROWSER}
    Sleep    2

Cliquer sur le lien "Enter the Store"
    Click Element    ${link-enter}
    Sleep        2
    Page Should Contain Element    ${image-mainPage}

Cliquer sur le lien "Sign In"
    Click Element    ${link-signIn}
    Sleep        2
    Page Should Contain    Please enter your username and password.

Fin du test
    Close Browser