# 🚀 Quick Start: Publicar no GitHub Pages

## Comandos para Executar Agora

### 1️⃣ Configure sua identidade Git (uma vez apenas)
```powershell
git config --global user.name "Seu Nome"
git config --global user.email "seu-email@example.com"
```

### 2️⃣ Faça o primeiro commit
```powershell
cd D:/GitHub/synesis-docs
git add .
git commit -m "Initial commit: Bilingual Synesis documentation"
```

### 3️⃣ Crie o repositório na organização
Acesse: https://github.com/organizations/synesis-lang/repositories/new

- **Nome:** `synesis-docs`
- **Descrição:** "Bilingual documentation for Synesis Language"
- **Público**
- **NÃO** adicione README ou .gitignore

### 4️⃣ Conecte e faça push
```powershell
git remote add origin https://github.com/synesis-lang/synesis-docs.git
git branch -M main
git push -u origin main
```

### 5️⃣ Configure GitHub Pages
1. Vá para: https://github.com/synesis-lang/synesis-docs/settings/pages
2. **Source:** Branch `main` → Folder `/_site`
3. Salvar

### ✅ Pronto!
Seu site estará em: **https://synesis-lang.github.io/synesis-docs/**

---

## 🔄 Atualizações Futuras

```powershell
cd D:/GitHub/synesis-docs
.\build.bat              # Reconstrói o site
git add .
git commit -m "Update documentation"
git push
```

---

## 📚 Documentação Completa
Veja [SETUP.md](SETUP.md) para instruções detalhadas e troubleshooting.
