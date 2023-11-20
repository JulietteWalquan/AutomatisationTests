*** Settings ***
Documentation    TP2 BUT3 Exercice 2 : Déplacement d'un fichier PDF
Library          RPA.PDF
Library          OperatingSystem
Resource         ../resources/PathResources.resource


*** Variables ***
${pathToGo}    ../PDF/


*** Test Cases ***
Déplacer un fichier PDF
    Copy File      ${pathPDF-cours1}    ${pathToGo}
    Remove File    ${pathPDF-cours1}
