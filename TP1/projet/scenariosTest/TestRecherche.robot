*** Settings ***
Documentation    TP1 BUT3 Projet : Test de navigation sur le site https://petstore.octoperf.com
Resource         ../resources/TestRechercheResource.resource
Resource         ../resources/GeneralKeywords.resource
Test Setup       Debut Du Test Sur Le Catalogue
Test Teardown    Fin du test


*** Test Cases ***
Test de recherche d'une categorie
    Recherche Cats

Test de recherche d'un produit
    Recherche Manx