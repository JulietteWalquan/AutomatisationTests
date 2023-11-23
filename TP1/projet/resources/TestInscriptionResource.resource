*** Settings ***
Documentation    Ressources pour le TP1 BUT3 Projet : Test de l'inscription sur le site https://petstore.octoperf.com
Library          SeleniumLibrary
Library          FakerLibrary
Library          CSVLibrary
Resource         GeneralVariables.resource
Resource         FormVariables.resource


*** Variables ***
${csvPath}           TP1/projet/data/users.csv


*** Keywords ***
Cliquer sur le lien "Register Now!"
    Click Element    ${link-register}
    Sleep        2
    Page Should Contain   User Information

Renseigner les informations du formulaire
    ${password} =    FakerLibrary.Password
    ${first_name} =    FakerLibrary.Firstname
    ${last_name} =    FakerLibrary.Lastname
    ${userID} =    Catenate    ${first_name}.${last_name}
    ${email} =    Catenate    ${userID}@mail.com
    ${phone} =    FakerLibrary.PhoneNumber
    ${address} =    FakerLibrary.StreetAddress
    ${city} =    FakerLibrary.City
    ${state} =    FakerLibrary.Word
    ${zip} =    FakerLibrary.PostCode
    ${country} =    FakerLibrary.Country
    
    ${listCategories} =    Create List    FISH    DOGS    CATS    REPTILES    BIRDS
    ${favouriteCategory} =    FakerLibrary.RandomElement    ${listCategories}

    ${list} =    Create List   ${userID}    ${password}    ${first_name}    ${last_name}    ${email}    ${phone}    ${address}    ${city}    ${state}    ${zip}    ${country}    ${favouriteCategory}
    ${data} =    Create List    ${list}
    Append To Csv File    ${csvPath}    ${data}

    Input Text    ${input-userID}    ${userID}
    Sleep    2
    Input Text    ${input-password}    ${password}
    Sleep    2
    Input Text    ${input-repeatedPassword}    ${password}
    Sleep    2
    Input Text    ${input-firstName}    ${firstName}
    Sleep    2
    Input Text    ${input-lastName}    ${lastName}
    Sleep    2
    Input Text    ${input-email}    ${email}
    Sleep    2
    Input Text    ${input-phone}    ${phone}
    Sleep    2
    Input Text    ${input-address}    ${address}
    Sleep    2
    Input Text    ${input-city}    ${city}
    Sleep    2
    Input Text    ${input-state}    ${state}
    Sleep    2
    Input Text    ${input-zip}    ${zip}
    Sleep    2
    Input Text    ${input-country}    ${country}
    Sleep    2
    Select From List By Value    ${input-favouriteCategory}    ${favouriteCategory}
    Sleep    2
    Click Element    ${input-enableMyList}
    Sleep    2
    Click Element    ${input-enableMyBanner}
    Sleep    2

Cliquer sur le bouton "Save Account Information"
    Click Element    ${link-saveAccount}
    Sleep    2
    Page Should Contain Element    ${image-mainPage}