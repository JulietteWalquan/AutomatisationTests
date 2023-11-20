*** Settings ***
Documentation    Ressources pour le TP1 BUT3 Exercice 3 & 4 : Accéder à un site web via un jeu de données d'un fichier csv ou xlsx
Library       SeleniumLibrary

*** Variables ***
${SAUCEDEMOURL}    https://www.saucedemo.com/
${BROWSER}      ff
${input-username}    //*[@id="user-name"]
${input-password}    //*[@id="password"]
${button-login}      //*[@id="login-button"]


*** Keywords ***
Debut du test
    Open Browser    ${SAUCEDEMOURL}    ${BROWSER}
    sleep    2
Fin du test
    Close Browser