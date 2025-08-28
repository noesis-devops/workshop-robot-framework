*** Settings ***
Documentation    This file contains the API Keywords

Library           RequestsLibrary
Library           Collections
Library           JSONLibrary

Resource    ../../variables/common_variables.resource


*** Keywords ***
Create API Session
    Create Session    api    ${BASE_URL}    verify=${True}

Close API Session
    Delete All Sessions

GET /objects
    [Documentation]   Executes GET request to /objects and returns the response object.
    ${resp}=    Get On Session    api    ${OBJ_ENDPOINT}    timeout=${TIMEOUT}
    RETURN    ${resp}

Validate OK Response and JSON
    [Documentation]    Validates that the response has status code 200 and response time < 3000 ms.
    [Arguments]    ${resp}

    Should Be Equal As Integers    ${resp.status_code}    200
    # ${ct}=    Get From Dictionary    ${resp.headers}    Content-Type
    # Should Start With    ${ct}    application/json
    ${elapsed_ms}=    Evaluate    ${resp.elapsed.total_seconds()}*1000
    Should Be True    ${elapsed_ms} < 3000    msg=Response took too long: ${elapsed_ms} ms

Validate List and Required Fields
    [Arguments]    ${json}
    Should Be True    ${json} != None
    Should Be True    isinstance(${json}, list)    msg=Expected a list of objects
    Should Not Be Empty    ${json}    msg=Expected a non-empty list
    # Validate required fields in the first element
    ${first}=    Get From List    ${json}    0
    FOR    ${field}    IN    @{REQUIRED_FIELDS}
        Dictionary Should Contain Key    ${first}    ${field}
    END
    # Check sample of 5 elements for "id"
    ${n}=    Evaluate    min(5, len(${json}))
    FOR    ${i}    IN RANGE    ${n}
        ${item}=    Get From List    ${json}    ${i}
        Dictionary Should Contain Key    ${item}    id
    END

GET /objects/ID
    [Documentation]   Executes GET request to /objects/ID and returns the response object.
    [Arguments]    ${id}
    
    ${resp}=    Get On Session    api    ${OBJ_ENDPOINT}/${id}    timeout=${TIMEOUT}
    RETURN    ${resp}

# Validate Object Fields
#     [Arguments]    ${body}    ${expected_json}

#     # Parse actual JSON
#     ${actual}=    Load JSON From String    ${body}
#     # Load expected JSON from file
#     ${expected}=    Load JSON From File    ${expected_json}
#     # Compare both
#     Dictionaries Should Be Equal    ${actual}    ${expected}

