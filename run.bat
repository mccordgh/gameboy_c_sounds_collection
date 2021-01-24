@REM kill open instance of BGB
taskkill /f /im javaw.exe

@REM start up emulicious with latest compiled .gb
start /b C:\Users\mattm\Games\emulicious\emulicious.exe C:\Users\mattm\dev\c\gameboy\sounds_collection\sounds_collection.gb
