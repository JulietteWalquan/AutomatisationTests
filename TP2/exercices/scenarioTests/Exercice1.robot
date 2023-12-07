*** Settings ***
Documentation    TP2 BUT3 Exercice 1 : Ouverture d'un fichier PDF et compter le nombre de pages
Library          RPA.PDF
Library          OperatingSystem
Resource         ../resources/PathResources.resource

*** Variables ***
${nb_pages}
${text}


*** Test Cases ***
Ouvrir un fichier PDF et compter le nombre de pages
    Open PDF          ${pathPDF-cours1}
    ${nb_pages} =     Get Number Of Pages
    ${text} =         Convert To String    ${nb_pages}
    Log To Console    ${\n}Le fichier PDF a ${text} pages.
