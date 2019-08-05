*** Settings ***
Library    SeleniumLibrary    
Library    ExcelLibrary 
   
*** Keywords ***

 add     
    [Arguments]    ${num1}    ${num2}
    ${num1}    Convert To Integer     ${num1}
    ${num2}    Convert To Integer     ${num2}
    ${ret}       Evaluate    ${num1} + ${num2}    
    [Return]    ${ret} 

upperFor
    [Documentation]    Loops over values from 0 to 9
    [Arguments]    ${upper}
    FOR    ${index}    IN RANGE   ${upper}
        Log    ${index}
    END

inner loop
     [Arguments]    ${i}     ${col}     
     ${sum}     Convert To Integer    0    
    :FOR    ${j}    IN RANGE   ${col}
        ${data}     Read Cell Data By Coordinates    addData  ${j}  ${i}
        ${data}    Convert To Integer    ${data}    
       #Log To Console        ${data}  
        ${sum}         Evaluate     ${sum} + ${data}
        
                
    END    
       Log To Console  sum is ${sum}    
fromToFor
    [Documentation]    Loops over values from 1 to 10
    [Arguments]   ${lower}     ${upper}
    FOR    ${index}    IN RANGE    ${lower}    ${upper}
        Log    ${index}
    END


stepFor
    [Documentation]    Loops over values 5, 15, and 25
    [Arguments]    ${lower}     ${upper}    ${step}
    FOR    ${index}    IN RANGE    ${lower}     ${upper}    ${step}
        Log    ${index}
    END


floatFor
    [Documentation]    Loops over values 3.14, 4.34, and 5.54
     [Arguments]    ${lower}     ${upper}    ${step}
    FOR    ${index}    IN RANGE    ${lower}     ${upper}    ${step}
        Log    ${index}
    END
    
    