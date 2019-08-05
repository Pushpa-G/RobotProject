   # Author    		: 	PUSHPA G
   # Date		    :	05/04/2019
   # Description	:	Basic operations on number using for loop and data driven concept
 


*** Settings ***
Library    SeleniumLibrary 
Library    Selenium2Library
Library    ExcelLibrary    
    
Resource    Keywords.robot 

*** Test Cases ***
add
    log     addtition of tow number 
    ${ret}     add     5    6
    log     ${ret}
    
readdata
    Open Excel    adddata.xls
     ${data}     Get Row Values    addData    0      
     # Log To Console    ${data}    
    # Log    ${data}  
    
    ${row}    Get Row Count    addData
    ${col}    Get Column Count    addData
    ${i}      Convert To Integer     0
    Log To Console    ${row}
    Log To Console    ${col}        
    :FOR     ${i}    IN RANGE    ${row} 
         inner loop     ${i}     ${col}       
    END        
        
    

      
Only upper limit
    upperFor     10
        
Start and end
    fromToFor    1    10
    
    
Also step given
    stepFor     1    30    5
    stepFor    8    -18    -10
    
Float parameters
    floatFor    1.2    30.5    7.5 
