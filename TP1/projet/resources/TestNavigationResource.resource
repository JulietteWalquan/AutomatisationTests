*** Settings ***
Documentation    Ressources pour le TP1 BUT3 Projet : Test de la connecion sur le site https://petstore.octoperf.com
Resource         ../resources/FormVariables.resource
Resource         ../resources/GeneralVariables.resource
Library          SeleniumLibrary
Resource         FormVariables.resource


*** Keywords ***
Connecter un utilisateur au site
    ${userID}    Set Variable    Nathalie.Arnaud
    ${password}    Set Variable    n*4pQ%71@n
    Input Text    ${input-userID}    ${userID}
    Sleep    2
    Input Text    ${input-password}    ${password}
    Sleep    2
    Click Button    ${link-signon}
    Sleep    2
    Page Should Contain    Welcome Nathalie!

Aller sur la page des poissons
    Click Element    ${link-fish}
    Sleep    2
    Page Should Contain    Fish

Aller sur la page des chiens
    Click Element    ${link-dogs}
    Sleep    2
    Page Should Contain    Dogs

Aller sur la page des reptiles
    Click Element    ${link-reptiles}
    Sleep    2
    Page Should Contain    Reptiles

Aller sur la page des chats
    Click Element    ${link-cats}
    Sleep    2
    Page Should Contain    Cats

Aller sur la page des oiseaux
    Click Element    ${link-birds}
    Sleep    2
    Page Should Contain    Birds

Retourner sur la page d'accueil
    Click Element    ${link-home}
    Sleep    2
    Page Should Contain Element    ${image-mainPage}