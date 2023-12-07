*** Settings ***
Documentation       TP1 BUT3 Exercice 1 : Connexion a l'ENT
Library             SeleniumLibrary


*** Variables ***
${LOGINURL}     https://google.fr
${BROWSER}      ff


*** Test Cases ***
Ouvrir Google avec le navigateur Firefox
    Open Browser    ${LOGINURL}    ${BROWSER}
    sleep    2
    Click Element    //*[@id="L2AGLb"]

Test Chercher le site de l'universite
    Click element    //*[@id="APjFqb"]
    Input Text    name=q    Le Mans Universite
    Press keys    name=q    RETURN
    sleep    2

Aller sur l'ENT de l'universite
    Click Element    //*[contains(text(), "ENT etudiant")]
    sleep    2

Aller sur la page d'activation d'un compte
    sleep    2
    Click element    //*[@id="header-a1"]

Activation de compte pour un etudiant
    sleep    2
    Click element    //*[@href="?act=etu" and contains(text(), "Activation de compte pour un etudiant")]
    sleep    2

Fermer le navigateur
    sleep    2
    close browser