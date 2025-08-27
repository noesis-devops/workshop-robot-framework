*** Settings ***
Documentation    This file contains the test suite for <description>

Library    RPA.Excel.Files
Library    Collections

Resource    ../variables/common_variables.resource

*** Test Cases ***
Compare Excel Data From Two Files
    [Documentation]    Read data from Excel files and compare values

    Open Workbook    ${EXCEL_PATH_1}
    ${tabela_1}=    Read Worksheet As Table    header=false    name=${SHEET_NAME}
    Close Workbook

    Open Workbook    ${EXCEL_PATH_2}
    ${tabela_2}=    Read Worksheet As Table    header=false    name=${SHEET_NAME}
    Close Workbook

    ${nlin}=    Get Length    ${tabela_2}
    ${header}=  Get From List    ${tabela_2}    0
    ${ncol}=    Get Length    ${header}
    ${diffs}=    Create List

    FOR    ${i}    IN RANGE    1    ${nlin}
        ${linha1}=    Get From List    ${tabela_1}    ${i}
        ${linha}=    Get From List    ${tabela_2}    ${i}
        # Log To Console    --- Linha ${i} ---
        FOR    ${j}    IN RANGE    0    ${ncol}
            ${col}=    Get From List    ${header}    ${j}
            ${val1}=    Get From List    ${linha1}     ${j}
            ${val}=    Get From List    ${linha}     ${j}

            ${v1}=    Convert To String    ${val1}
            ${v2}=    Convert To String    ${val}
            ${col}=     Convert To String    ${col}
            ${lin}=     Convert To String    ${i}

            # Log To Console    ${col} = ${v1}
            # Log To Console    ${col} = ${v2}

            IF    "${v1}" != "${v2}"
                # Log To Console    The values are different
                Append To List    ${diffs}    Linha ${lin} | Col ${col} | '${v1}' != '${v2}'
            END   
        END
    END

    ${num_diffs}=    Get Length    ${diffs}
    Log To Console    '${\n}---------------------------------------------${\n}-- ${num_diffs} -- differences were found. ${\n}Here is the list of differences: ${diffs}${\n}---------------------------------------------'    
    # Log To Console    ${num_diffs}   
