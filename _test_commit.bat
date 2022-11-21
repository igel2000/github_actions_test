@echo off
if .%3.==.. goto err
set repo_for_test=%1
set file_for_change=%2
set tag=%3
set curdate=%date%
set curtime=%time%
set curdir=%cd%
echo %curdate% %curtime%

cd %repo_for_test%

echo %curdate% %curtime% >> %file_for_change%
git commit -a -m "bug: Исправил дефект 1"
echo %curdate% %curtime% >> %file_for_change%
git commit -a -m "bug: Исправил дефект 2"
echo %curdate% %curtime% >> %file_for_change%
git commit -a -m "feat: Сделал фичу 1"
echo %curdate% %curtime% >> %file_for_change%
git commit -a -m "doc: поправил документацию"
git push

git tag %tag%
git push --tags 
rem %tag%
cd %cd%

goto end
:err
echo Логика работы: переходит в указанный репозиторий, вносит несколько изменений в указанный файл, 
echo                коммитит изменения, ставит указанный тег и пушит изменения на сервер
echo    - 
echo Формат вызова
echo _test_commit.bat путь_к_репозиторию относительный_путь_к_изменяемомому_файлу тег_версии


:end