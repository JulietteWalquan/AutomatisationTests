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