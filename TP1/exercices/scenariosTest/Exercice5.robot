*** Settings ***
Documentation    TP1 BUT3 Exercice 5 : Générer des données aléatoires avec la librairie Faker
Library    FakerLibrary    locale=fr
Library    CSVLibrary
Library    SeleniumLibrary
Test Template    Faker_profile1


*** Variables ***
${csvPath}    exercices/data/users.csv


*** Keywords ***
Faker_profile1
    [Arguments]    ${user_number}

    FOR    ${i}    IN RANGE    ${user_number}
        ${first_name} =    FakerLibrary.Firstname
        ${last_name} =    FakerLibrary.Lastname
        ${email} =    Catenate    ${first_name}.${last_name}@gmail.com
        ${birth} =    FakerLibrary.Date_of_birth    tzinfo=None    minimum_age=18    maximum_age=50
        ${login} =    FakerLibrary.Username
        ${password} =    FakerLibrary.Password
        ${profile} =  catenate
        ...             ${\n}=======================================
        ...             ${\n}first_name: ${first_name}
        ...             ${\n}last_name: ${last_name}
        ...             ${\n}email_perso: ${email}
        ...             ${\n}date_birth: ${birth}
        ...             ${\n}login: ${login}
        ...             ${\n}password: ${password}
        ...             ${\n}=======================================
        log to console  ${profile}
        ${list} =    Create List   ${first_name}    ${last_name}    ${email}    ${birth}    ${login}    ${password}
        ${data} =    Create List    ${list}
        Append To Csv File    ${csvPath}    ${data}
    END


*** Test Cases ***
Set de 10 utilisateurs    10