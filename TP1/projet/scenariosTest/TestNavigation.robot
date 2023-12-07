*** Settings ***
Documentation    TP1 BUT3 Projet : Test de navigation sur le site https://petstore.octoperf.com
Resource         ../resources/TestNavigationResource.resource
Resource         ../resources/GeneralKeywords.resource
Test Setup       Debut du test sur la page de connexion
Test Teardown    Fin du test


*** Test Cases ***
Test de navigation avec les liens en haut de page
    Connecter un utilisateur au site
    Aller sur la page des poissons avec le lien en haut de page
    Aller sur la page des chiens avec le lien en haut de page
    Aller sur la page des reptiles avec le lien en haut de page
    Aller sur la page des chats avec le lien en haut de page
    Aller sur la page des oiseaux avec le lien en haut de page
    Retourner sur la page d'accueil

Test de navigation avec les liens de gauche
    Connecter un utilisateur au site
    Aller sur la page des poissons avec le lien de gauche
    Aller sur la page des chiens avec le lien de gauche
    Aller sur la page des chats avec le lien de gauche
    Aller sur la page des reptiles avec le lien de gauche
    Aller sur la page des oiseaux avec le lien de gauche
    Retourner sur la page d'accueil