*** Settings ***
Documentation    Ressources pour le TP1 BUT3 Projet : Test de la connecion sur le site https://petstore.octoperf.com
Resource         ../resources/FormVariables.resource
Resource         ../resources/GeneralVariables.resource
Library          SeleniumLibrary
Library          CSVLibrary
Library          FakerLibrary
Library          DataDriver    ../data/users.csv
Resource         FormVariables.resource

