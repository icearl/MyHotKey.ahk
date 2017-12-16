;o----------------------o---------------------------------------------o
;1 |CapsLock;           | Esc
;1 |CaspLock + shift    | CapsLock
;2 |CapsLock + u/o      | home/end                      |
;|CaspLock + uiop       | Convient Home/End PageUp/PageDn             |
;|CaspLock + nm,.       | Convient Delete Controller                  |
;|CapsLock + zxcvay     | Windows-Style Editor                        |
;|CapsLock + Direction  | Mouse Move                                  |
;|CapsLock + Enter      | Mouse Click                                 |
;|CaspLock + {F1}~{F6}  | Media Volume Controller                     |
;|CapsLock + qs         | Windows & Tags Control                      |
;|CapsLock + ;'[]       | Convient Key Mapping                        |
;|CaspLock + dfert      | Frequently Used Programs (Self Defined)     |
;|CaspLock + 123456     | Dev-Hotkey for Visual Studio (Self Defined) |
;|CapsLock + 67890-=    | Shifter as Shift                            |
;-----------------------o---------------------------------------------o

;切换大小写
;=====================================================================o
;                       CapsLock Initializer                         ;|
;---------------------------------------------------------------------o
SetCapsLockState, AlwaysOff                                          ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                       CapsLock Switcher:                           ;|
;---------------------------------o-----------------------------------o
;                    CapsLock + shift | {CapsLock}                       ;|
;---------------------------------o-----------------------------------o
+CapsLock::                                                       ;|
GetKeyState, CapsLockState, CapsLock, T                              ;|
if CapsLockState = D                                                 ;|
    SetCapsLockState, AlwaysOff                                      ;|
else                                                                 ;|
    SetCapsLockState, AlwaysOn                                       ;|
KeyWait, ``                                                          ;|
return                                                               ;|
;---------------------------------------------------------------------o

;=====================================================================o
;                         CapsLock Escaper:                          ;|
;----------------------------------o----------------------------------o
;                        CapsLock  |  {ESC}                          ;|
;----------------------------------o----------------------------------o
CapsLock::Send, {ESC}                                                ;|
;---------------------------------------------------------------------o



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;打开;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:*:\a::
Run C:\Users\icear\AppData\Local\atom\atom.exe
return

:*:\\::
Run, cmd /K cd /D "C:\Users\icear"
return

:*:\o::
Run C:\Program Files\Microsoft Office\root\Office16\ONENOTE.EXE
return

:*:\g::
Run H:\software\cloudMusic\CloudMusic\cloudmusic.exe
return

;开机打开工作环境
:*:\w::
Run http://www.google.com
Run C:\Users\icear\AppData\Local\atom\atom.exe
Run C:\Program Files\Microsoft Office\root\Office16\ONENOTE.EXE
Run, explorer
return

;谷歌
:*:\c::
Run C:\Program Files (x86)\Google\Chrome\Application\chrome.exe
return

CapsLock & F8::
if (GetKeyState("alt") = 1)
    Run http://www.google.com
else
    return
return

::/b::
Run http://www.baidu.com
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;打开-结束;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;通用键;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;切换输入法
CapsLock & Space::send,#{Space}

;回车
CapsLock & `;::send,{Enter}

;测试本ahk
CapsLock & F6::
Run D:\data\my_github\MyHotKey.ahk\MyHotKey.ahk
;SetTimer, enter, 100
return

;enter:
;send, {Enter}
;return

;CapsLock & E::send,#{E}

;上页翻页键映射
;CapsLock & ,::Send {PgUp}
;CapsLock & .::Send {PgDn}

;大于、小于号< >
CapsLock & ,::Send +{,}
CapsLock & .::Send +{.}

;HOME END键映射
CapsLock & u:: Send {Home}
CapsLock & o:: Send {End}

;Alt + jkli 实现对方向键的映射
CapsLock & j:: Send {left}
CapsLock & l:: Send {right}
CapsLock & i:: Send {up}
CapsLock & k:: Send {down}

;跳跃单词的方向键
CapsLock & e:: Send {up}
CapsLock & d:: Send {down}
CapsLock & s:: Send ^{Left}                                        ;|
CapsLock & f:: Send ^{Right}
CapsLock & w::Send ^+{Left}
CapsLock & r::Send ^+{Right}
CapsLock & q:: Send +{Home}  ;选择当前位置到行首的文字
CapsLock & t:: Send +{End}   ;选择当前位置到行末的文字


;win-style 的快捷键
CapsLock & c::Send ^c
CapsLock & x::Send ^x
CapsLock & v::Send ^v
;CapsLock & s::Send ^s
CapsLock & z::Send ^z
CapsLock & y::Send ^y
;CapsLock & f::Send ^f

;全选
CapsLock & a::send ^{a}

;选择一行
CapsLock & b::
Send {Home}
Send +{End}
return

;删除一行
CapsLock & g::
Send {Home}
Send +{End}
Send {BS}
return

;删除
;CapsLock & g:: Send, {Del}                                           ;|向后删除一个字符
;CapsLock & g:: Send, ^{Del}                                          ;|向后删除单词
CapsLock & h:: Send, {BS}                                            ;|向前删除一个字符
CapsLock & m:: Send, ^{BS}                                           ;|向前删除单词

;保存
CapsLock & n:: Send, ^{s}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;通用键的映射-结束;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;实用功能;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;鼠标移动和点击
CapsLock & Up::    MouseMove, 0, -10, 0, R                           ;|
CapsLock & Down::  MouseMove, 0, 10, 0, R                            ;|
CapsLock & Left::  MouseMove, -10, 0, 0, R                           ;|
CapsLock & Right:: MouseMove, 10, 0, 0, R                            ;|
;-----------------------------------o                                ;|
CapsLock & Enter::                                                   ;|
SendEvent {Blind}{LButton down}                                      ;|
KeyWait Enter                                                        ;|
SendEvent {Blind}{LButton up}                                        ;|
return                                                               ;|
;-----------------------

;媒体播放
CapsLock & F1:: Send, {Volume_Mute}                                  ;|
CapsLock & F2:: Send, {Volume_Down}                                  ;|
CapsLock & F3:: Send, {Volume_Up}                                    ;|


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;编程;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
CapsLock & /::send, ^{/}

CapsLock & '::send, {=}
CapsLock & [::send, {{}
CapsLock & ]::send, {}}

CapsLock & 1::send, {!}
CapsLock & 2::send, {@}
CapsLock & 3::send, {#}
CapsLock & 4::send, {$}
CapsLock & 5::send, {`%}
CapsLock & 6::send, {^}
CapsLock & 7::send, {&}
CapsLock & 8::send, {*}
CapsLock & 9::send, {(}
CapsLock & 0::send, {)}
CapsLock & -::send, {_}
CapsLock & =::send, {+}
