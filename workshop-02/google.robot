*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ค้นหา kasetsart ใน Google ผ่าน chrome
    เปิด chrome browser ขึ้นมา เข้า url google.co.th
    ค้นหาคำว่า kasetsart
    กด Enter 
    จะต้องพบคำว่า kasetsart ในผลลัพธ์
    คลิกเลือก link แรก
    ปิดหน้าเว็บ

*** Keywords ***
เปิด chrome browser ขึ้นมา เข้า url google.co.th
    Open Browser    http://google.co.th    chrome

ค้นหาคำว่า kasetsart
    Input Text    q    kasetsart

กด Enter
    Press Keys         q                                RETURN
    Title Should Be    kasetsart - Google Search

จะต้องพบคำว่า kasetsart ในผลลัพธ์
    Wait Until Page Contains    kasetsart    3

คลิกเลือก link แรก
    Click Link    //div[@class="r"]//a

ปิดหน้าเว็บ
    Close Browser

