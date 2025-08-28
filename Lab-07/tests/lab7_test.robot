*** Settings ***
Library           RequestsLibrary
Library           Collections
Library           JSONLibrary

Resource    ../resources/api/objects_keyword.resource

Suite Setup       Create API Session
Suite Teardown    Close API Session

*** Test Cases ***
GET /objects returns 200 and valid JSON
    [Documentation]    Validates that GET /objects returns status 200 and valid JSON response.
    [Tags]    api    objects    smoke

    ${resp}=    GET /objects
    Validate OK Response and JSON    ${resp}
    ${json}=    Call Method    ${resp}    json
    Validate List and Required Fields    ${json}


GET /objects/ID returns 200 and valid JSON
    [Documentation]    Validates that GET /objects/ID returns status 200 and valid JSON response.
    [Tags]    api    objects    id    smoke        

    ${resp}=    GET /objects/ID    ${OBJ_ENDPOINT_ID}
    Validate OK Response and JSON    ${resp}
    
    # Load actual JSON from file
    ${body}=    Convert To String    ${resp.text}
    ${actual}=    Convert String to JSON    ${resp.text}

    # Load expected JSON from file
    ${expected}=    Load JSON From File    ${CURDIR}${/}..${/}data${/}get_result.json
    # Compare both
    Dictionaries Should Be Equal    ${actual}    ${expected}

