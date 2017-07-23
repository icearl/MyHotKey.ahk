;测试本ahk
CapsLock & F7::
Run D:\data\my_github\MyHotKey.ahk\test.ahk
;SetTimer, enter, 100
return

CapsLock & F6::
if (GetKeyState("alt") = 1)
    Run http://www.google.com
return

CapsLock & s::
if (GetKeyState("1") = 1)
    Run http://www.baidu.com
else
    return
return
1
