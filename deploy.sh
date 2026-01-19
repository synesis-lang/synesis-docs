#!/bin/bash
# Script de deploy para GitHub Pages

echo "Limpando e reconstruindo o site..."
bash build.sh

echo ""
echo "Fazendo commit das alterações..."
git add .

# Solicitar mensagem de commit
read -p "Digite a mensagem do commit: " commit_msg

# Fazer commit sem co-autoria
git commit -m "$commit_msg"

echo ""
echo "Atualizando branch main..."
git push origin main

echo ""
echo "Atualizando branch gh-pages..."
git checkout gh-pages
git rm -rf *
git checkout main -- _site
mv _site/* .
mv _site/.nojekyll .
rmdir _site
git add .
git commit -m "Deploy: $commit_msg"
git push origin gh-pages
git checkout main

echo ""
echo "Deploy concluído!"
