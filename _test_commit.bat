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
git commit -a -m "bug: ��ࠢ�� ��䥪� 1"
echo %curdate% %curtime% >> %file_for_change%
git commit -a -m "bug: ��ࠢ�� ��䥪� 2"
echo %curdate% %curtime% >> %file_for_change%
git commit -a -m "feat: ������ ��� 1"
echo %curdate% %curtime% >> %file_for_change%
git commit -a -m "doc: ���ࠢ�� ���㬥����"
git push

git tag %tag%
git push --tags 
rem %tag%
cd %cd%

goto end
:err
echo ������ ࠡ���: ���室�� � 㪠����� ९����਩, ����� ��᪮�쪮 ��������� � 㪠����� 䠩�, 
echo                ������� ���������, �⠢�� 㪠����� ⥣ � ���� ��������� �� �ࢥ�
echo    - 
echo ��ଠ� �맮��
echo _test_commit.bat ����_�_९������ �⭮�⥫��_����_�_�����塞�����_䠩�� ⥣_���ᨨ


:end