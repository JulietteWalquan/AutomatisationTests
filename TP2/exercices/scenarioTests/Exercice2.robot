*** Settings ***
Documentation    TP2 BUT3 Exercice 2 : Deplacement d'un fichier PDF
Library          RPA.PDF
Library          OperatingSystem
Resource         ../resources/PathResources.resource


*** Variables ***
${pathToGo}    TP2/exercices/resources/PDF/


*** Test Cases ***
Deplacer un fichier PDF
    Copy File      ${pathPDF-cours2}    ${pathToGo}
    Remove File    ${pathPDF-cours2}
