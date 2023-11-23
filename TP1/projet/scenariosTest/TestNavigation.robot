*** Settings ***
Documentation    TP1 BUT3 Projet : Test de navigation sur le site https://petstore.octoperf.com
Resource         ../resources/TestNavigationResource.resource
Resource         ../resources/GeneralKeywords.resource
Test Setup       Debut du test sur la page de connexion
Test Teardown    Fin du test


*** Test Cases ***
Test de navigation avec les liens en haut de page
    Connecter un utilisateur au site
    Aller sur la page des poissons
    Aller sur la page des chiens
    Aller sur la page des reptiles
    Aller sur la page des chats
    Aller sur la page des oiseaux
    Retourner sur la page d'accueil
