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

Deconnecter l'utilisateur du site
    Click Button    ${link-signout}
    Sleep    2
    Page Should Not Contain    Walcome Nathalie!

Retourner sur la page d'accueil
    Click Element    ${link-home}
    Sleep    2
    Page Should Contain Element    ${image-mainPage}

Aller sur la page des poissons avec le lien en haut de page
    Click Element    ${link-fish-top}
    Sleep    2
    Page Should Contain    Fish

Aller sur la page des poissons avec le lien de gauche
    Click Element    ${link-fish-left}
    Sleep    2
    Page Should Contain    Fish
    Retourner sur la page d'accueil

Aller sur la page des chiens avec le lien en haut de page
    Click Element    ${link-dogs-top}
    Sleep    2
    Page Should Contain    Dogs

Aller sur la page des chiens avec le lien de gauche
    Click Element    ${link-dogs-left}
    Sleep    2
    Page Should Contain    Dogs
    Retourner sur la page d'accueil

Aller sur la page des reptiles avec le lien en haut de page
    Click Element    ${link-reptiles-top}
    Sleep    2
    Page Should Contain    Reptiles

Aller sur la page des reptiles avec le lien de gauche
    Click Element    ${link-reptiles-left}
    Sleep    2
    Page Should Contain    Reptiles
    Retourner sur la page d'accueil

Aller sur la page des chats avec le lien en haut de page
    Click Element    ${link-cats-top}
    Sleep    2
    Page Should Contain    Cats

Aller sur la page des chats avec le lien de gauche
    Click Element    ${link-cats-left}
    Sleep    2
    Page Should Contain    Cats
    Retourner sur la page d'accueil

Aller sur la page des oiseaux avec le lien en haut de page
    Click Element    ${link-birds-top}
    Sleep    2
    Page Should Contain    Birds

Aller sur la page des oiseaux avec le lien de gauche
    Click Element    ${link-birds-left}
    Sleep    2
    Page Should Contain    Birds
    Retourner sur la page d'accueil