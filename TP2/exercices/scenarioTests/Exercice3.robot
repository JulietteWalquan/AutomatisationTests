*** Settings ***
Documentation    TP2 BUT3 Exercice 3 : Ouverture d'un fichier PDF et verification des metadonnees
Library          RPA.PDF
Resource         ../resources/PathResources.resource

*** Variables ***
${auteur_attendu}    'Author': 'Juliette Walquan'
${metadonnees_pdf}


*** Test Cases ***
Ouvrir un fichier PDF et verifier les metadonnees
    ${metadonnees_pdf} =    Get PDF Info    ${pathPDF-random}
    Should Contain    ${metadonnees_pdf}    ${auteur_attendu}