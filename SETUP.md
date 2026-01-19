# Guia de Setup: GitHub Pages para Synesis Docs

## ✅ Progresso Atual

- [x] Diretório GitHub criado: `D:/GitHub/`
- [x] Projeto copiado para: `D:/GitHub/synesis-docs/`
- [x] Repositório Git inicializado
- [x] `.gitignore` configurado
- [ ] **Próximo passo:** Configurar identidade Git

---

## 📝 Passo 3: Configurar sua Identidade no Git

Antes de fazer commits, você precisa informar ao Git quem você é:

```powershell
# Abra o PowerShell e execute:
cd D:/GitHub/synesis-docs

# Configure seu nome (aparecerá nos commits)
git config --global user.name "Seu Nome Completo"

# Configure seu email (use o mesmo do GitHub)
git config --global user.email "seu-email@example.com"
```

**Dica:** Use o mesmo email da sua conta GitHub para que os commits apareçam vinculados ao seu perfil.

---

## 📦 Passo 4: Fazer o Primeiro Commit

Depois de configurar sua identidade:

```powershell
cd D:/GitHub/synesis-docs

# Adicionar todos os arquivos
git add .

# Fazer o commit inicial
git commit -m "Initial commit: Bilingual Synesis Language documentation

- Portuguese and English versions
- Automatic language detection and redirect
- Language switcher in navbar
- Configured for GitHub Pages with .nojekyll
- Build scripts for Windows and Unix"
```

---

## 🌐 Passo 5: Criar Repositório no GitHub

### Usando a Organização synesis-lang

1. Acesse: https://github.com/organizations/synesis-lang/repositories/new
2. Preencha:
   - **Repository name:** `synesis-docs`
   - **Description:** "Bilingual documentation for Synesis Language"
   - **Visibility:** Public (necessário para GitHub Pages gratuito)
   - **NÃO** marque "Add README" ou ".gitignore" (já temos)
3. Clique em **Create repository**

### Via GitHub CLI (se tiver instalado)

```powershell
gh repo create synesis-lang/synesis-docs --public --description "Bilingual documentation for Synesis Language" --source=. --remote=origin
```

---

## 🚀 Passo 6: Conectar e Fazer Push

Depois de criar o repositório no GitHub:

```powershell
cd D:/GitHub/synesis-docs

# Adicionar o remote da organização
git remote add origin https://github.com/synesis-lang/synesis-docs.git

# Renomear branch para main (padrão do GitHub)
git branch -M main

# Fazer push inicial
git push -u origin main
```

**Se pedir autenticação:**
- Use seu username do GitHub
- Para senha, use um **Personal Access Token** (não a senha da conta)
- Como criar token: https://github.com/settings/tokens

---

## ⚙️ Passo 7: Configurar GitHub Pages

1. Vá para seu repositório no GitHub
2. Clique em **Settings** (⚙️)
3. No menu lateral, clique em **Pages**
4. Em **Source**, configure:
   - **Branch:** `main`
   - **Folder:** `/_site`
5. Clique em **Save**

Aguarde 1-2 minutos e seu site estará no ar em:
```
https://synesis-lang.github.io/synesis-docs/
```

---

## 🔄 Fluxo de Atualização Futuro

Quando fizer alterações na documentação:

```powershell
# 1. Navegue até o diretório
cd D:/GitHub/synesis-docs

# 2. Reconstrua o site
.\build.bat

# 3. Adicione as mudanças
git add .

# 4. Faça commit
git commit -m "Descrição das alterações"

# 5. Envie para GitHub
git push
```

O GitHub Pages atualizará automaticamente em 1-2 minutos.

---

## 🛠️ Comandos Úteis

### Verificar status
```powershell
git status
```

### Ver histórico de commits
```powershell
git log --oneline
```

### Verificar remote configurado
```powershell
git remote -v
```

### Desfazer mudanças não commitadas
```powershell
git restore .
```

---

## 🔗 Links Úteis

- [Documentação GitHub Pages](https://docs.github.com/pages)
- [Documentação Quarto](https://quarto.org/docs/websites/)
- [Git Básico](https://git-scm.com/book/pt-br/v2)
- [Personal Access Tokens](https://github.com/settings/tokens)

---

## ❓ Troubleshooting

### "Authentication failed"
- Crie um Personal Access Token em: https://github.com/settings/tokens
- Use o token como senha ao fazer push

### "Permission denied"
- Verifique se o repositório é público
- Verifique se você é o dono do repositório

### "404 - There isn't a GitHub Pages site here"
- Aguarde 2-3 minutos após configurar
- Verifique se o branch e pasta estão corretos
- Certifique-se que `_site/` tem conteúdo

### Site não atualiza
- Verifique se fez push: `git push`
- Aguarde 1-2 minutos
- Limpe cache do navegador (Ctrl+F5)
