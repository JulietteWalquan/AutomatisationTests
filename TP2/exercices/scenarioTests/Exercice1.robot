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
    Open PDF          ${pathPDF-cours2}
    ${nb_pages} =     Get Number Of Pages
    ${text} =         Convert To String    ${nb_pages}
    Log To Console    ${\n}Le fichier PDF a ${text} pages.

    #Compter le nombre de fichier PDF dans le dossier
    @{list-files} =    List Directory    ${pathDirectory-downloaded}    *.pdf
    FOR    ${i}    IN    @{list-files}
        ${file} =    Get File    ${pathDirectory-downloaded}${i}
        ${file-content} =     Get Text From PDF    ${pathDirectory-downloaded}${i}
        ${file-content-text} =    Convert To String    ${file-content}

        ${match} =    Run Keyword And Return Status    Should Contain    ${file-content-text}    Java
        IF    ${match}    Should Contain    Java
            Log To Console    ${\n}Le CV ${i} contient le mot Java.
            Move File    ${file}    ${pathDirectory-accepted}
        ELSE
            Log To Console    ${\n}Le CV ${i} ne contient pas le mot Java.
            Move File    ${file}    ${pathDirectory-refused}
        END
    END
