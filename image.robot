#Script for check whether image is displayed, enabled and image link is clickable

*** settings ***
Library   SeleniumLibrary

*** variables ***
${url}   https://www.seleniumhq.org/


*** Test Cases ***
Image
   Open Browser   ${url}
   Element Should Be Visible    xpath=//*[@id="choice"]/tbody/tr/td[1]/center/a[1]/img
   Element Should Be Enabled    xpath=//*[@id="choice"]/tbody/tr/td[1]/center/a[1]/img
   Click Image    xpath=//*[@id="choice"]/tbody/tr/td[1]/center/a[1]/img
   sleep   2
   Close Browser
   
