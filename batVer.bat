@echo off

:: 注意bat不分大小寫
title DMM opener by bulb 20181110

:: 開火狐
set BROWSER_PATH="D:\Mozilla Firefox\firefox.exe"

::start "" %BROWSER_PATH% http://www.stackoverflow.com
::start "" %BROWSER_PATH% http://www.google.com

:: 活動頁
set p[0]="http://www.dmm.com/netgame/freeget/"
:: 我的遊戲頁
set p[1]="http://personal.games.dmm.com/zh-CHT/my-games/"
:: 拉霸機
set p[2]="http://www.dmm.com/netgame/pachinko/-/game/"

:: 城娘
set p[3]="http://pc-play.games.dmm.com/play/oshirore/"
:: 企業少女
set p[4]="http://pc-play.games.dmm.com/play/kanpani/"
:: 千年R18
set p[5]="http://pc-play.games.dmm.co.jp/play/aigis/"
:: 花騎
set p[6]="http://pc-play.games.dmm.com/play/flower/"
:: 神姬
set p[7]="http://pc-play.games.dmm.com/play/kamipro/"
:: 千年(一般)
set p[8]="http://pc-play.games.dmm.com/play/aigisc/"
:: unitiax
set p[9]="http://pc-play.games.dmm.co.jp/play/unitiax/"
:: circlet_princess
set p[10]="http://pc-play.games.dmm.co.jp/play/circlet_princess_r/"

:: プリコネR
set p[11]="dmmgameplayer://priconner/cl/general/priconner"
:: DEAD OR ALIVE Xtreme Venus Vacation
set p[12]="dmmgameplayer://doaxvv/cl/general/doaxvv"


set "x=0"

:myLoop
if defined p[%x%] (
    call start "" %BROWSER_PATH% %%p[%x%]%%
    set /a "x+=1"
    GOTO :myLoop
)


pause