@echo off
echo compiling for pentium cpu with no debug
:: change -march= to -mcpu= for a portable exe
gcc -Wall -O3 -march=i586 -s rec.c allegdlg.c tetanus.c hgrcos.c scrctl.c hiscore.c -lalleg -o wintod.exe
