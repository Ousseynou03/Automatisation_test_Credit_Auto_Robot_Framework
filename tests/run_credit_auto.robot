*** Settings ***
Library    SeleniumLibrary

Resource    ../core/selenium_utils.robot
Resource    ../pages/Authentification/page_connexion.robot
Resource    ../tests/resources/test_properties.robot


Test Setup   Ouvrir le navigateur    ${url}   ${browser}
Test Teardown     Fermer le navigateur

*** Test Cases ***
Connexion en tant que administrateur
    Accéder à Crédit Auto
    Se Connecter en tant que LDAP administrateur
    Se déconnecter de CREDIT AUTO