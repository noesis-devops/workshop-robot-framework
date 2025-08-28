*** Settings ***
Documentation    This file stores the default variables and values for the project


*** Variables ***
${BROWSER}        Chrome     # Chrome/Firefox/Edge
${DEFAULT_URL}    http://10.255.0.150:32022/


# API related variables
${BASE_URL}           https://api.restful-api.dev
${OBJ_ENDPOINT}       /objects
${TIMEOUT}            10
${OBJ_ENDPOINT_ID}    7

# Minimal expected fields
@{REQUIRED_FIELDS}    id    name
