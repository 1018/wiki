@echo off
::
:: Opera ��TiddlyWiki���g����悤�ɐݒ��ǉ��m�F����
:: Ver 0.1 2007.04.09 by potto
::
set FNAME="%USERPROFILE%\.java.policy"
set TIDDLY=%CD:\=\\%\\*

:append code
echo grant codeBase "file:%TIDDLY%" {>>%FNAME%
echo permission java.io.FilePermission "%TIDDLY%", "read,write";>>%FNAME%
echo };>>%FNAME%


notepad "%USERPROFILE%\.java.policy"

:end
set FNAME=
set TIDDLY=
