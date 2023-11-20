*** Settings ***
Documentation    TP1 BUT3 Projet : Test de l'inscription sur le site https://petstore.octoperf.com
Library          SeleniumLibrary
Resource         ../resources/GeneralKeywords.resource
Resource         ../resources/TestInscriptionResource.resource
Test Setup       Debut du test
Test Teardown    Fin du test


*** Test Cases ***
Test de l'inscription
    Cliquer sur le lien "Enter the Store"
    Cliquer sur le lien "Sign In"
    Cliquer sur le lien "Register Now!"
    Renseigner les informations du formulaire
    Cliquer sur le bouton "Save Account Information"
