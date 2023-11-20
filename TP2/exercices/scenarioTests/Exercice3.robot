*** Settings ***
Documentation    TP2 BUT3 Exercice 3 : Ouverture d'un fichier PDF et v�rification des m�tadonn�es
Library          RPA.PDF
Resource         ../resources/PathResources.resource

*** Variables ***
${metadonnees_attendues}    {'Author': 'Juliette Walquan', 'Creator': 'Microsoft Word pour Microsoft', 'Producer': 'Microsoft Word pour Microsoft', 'Subject': None, 'Title': None, 'Pages': 1, 'Encrypted': False, 'Fields': False}
${metadonnees_pdf}


*** Test Cases ***
Ouvrir un fichier PDF et v�rifier les m�tadonn�es
    ${metadonnees_pdf} =    Get PDF Info    ${pathPDF-random}
    Log To Console          ${\n}${metadonnees_pdf}
    Should Be Equal As Strings    ${metadonnees_pdf}    ${metadonnees_attendues}