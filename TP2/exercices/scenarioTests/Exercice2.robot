*** Settings ***
Documentation    TP2 BUT3 Exercice 2 : D�placement d'un fichier PDF
Library          RPA.PDF
Library          OperatingSystem
Resource         ../resources/PathResources.resource


*** Variables ***
${pathToGo}    ../PDF/


*** Test Cases ***
D�placer un fichier PDF
    Copy File      ${pathPDF-cours1}    ${pathToGo}
    Remove File    ${pathPDF-cours1}
