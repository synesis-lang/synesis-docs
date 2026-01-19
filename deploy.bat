@echo off
REM Script de deploy para GitHub Pages

echo Limpando e reconstruindo o site...
call build.bat

echo.
echo Fazendo commit das alteracoes...
git add .

REM Solicitar mensagem de commit ao usuario
set /p commit_msg="Digite a mensagem do commit: "

REM Fazer commit sem co-autoria
git commit -m "%commit_msg%"

echo.
echo Atualizando branch main...
git push origin main

echo.
echo Atualizando branch gh-pages...
git checkout gh-pages
git rm -rf *
git checkout main -- _site
move _site\* .
move _site\.nojekyll .
rmdir _site
git add .
git commit -m "Deploy: %commit_msg%"
git push origin gh-pages
git checkout main

echo.
echo Deploy concluido!
