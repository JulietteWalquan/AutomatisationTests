*** Settings ***
Documentation    Ressources pour le TP1 BUT3 Exercice 3 & 4 : Acceder a un site web via un jeu de donnees d'un fichier csv ou xlsx
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