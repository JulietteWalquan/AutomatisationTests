*** Settings ***
Library    OperatingSystem
Library    RPA.PDF
Resource    ../resources/PathResources.resource


*** Keywords ***
Ouvrir les pdf
    [Arguments]    ${file1}
    ${file_content}    Get text from PDF    ${file1}
    ${text} =    Convert To String    ${file_content}
    ${match} =    Run Keyword And Return Status    Should Contain    ${text}    Java
    [Return]    ${match}


*** Test Cases ***
Trier les CV
    @{PDFs} =    List Directory    ${pathDirectory-downloaded}    *.pdf
    FOR    ${file1}    IN    @{PDFs}
        ${match} =    Ouvrir les pdf    ${pathDirectory-downloaded}${file1}
        Close PDF
        
        IF    ${match}
            Move File    ${pathDirectory-downloaded}${file1}    ${pathDirectory-accepted}${file1}
        ELSE
            Move File    ${pathDirectory-downloaded}${file1}    ${pathDirectory-refused}${file1}
        END
    END

Compter le nombre de fichier PDF dans le dossier
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