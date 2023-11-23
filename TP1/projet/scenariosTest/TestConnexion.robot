*** Settings ***
Documentation    TP1 BUT3 Projet : Test de la connexion sur le site https://petstore.octoperf.com
Resource         ../resources/TestConnexionResource.resource
Resource         ../resources/GeneralKeywords.resource
Test Setup       Debut du test
Test Teardown    Fin du test


*** Test Cases ***
Test de la connexion avec un utilisateur valide
    Cliquer Sur Le Lien "Enter The Store"
    Cliquer Sur Le Lien "Sign In"
    Renseigner les informations de connexion
    Cliquer sur le bouton Login
