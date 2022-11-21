@echo off
if .%1.==.. goto err

set curdate=%date%
set curtime=%time%
set curdir=%cd%

_test_commit.bat %curdir%   src\python\map_plugin\test.txt v0.%1.0

goto end
:err
echo Не хватает параметра
:end