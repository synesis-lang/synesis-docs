# Synesis Language Documentation

Documentação bilíngue (Português/Inglês) do Synesis Language, construída com Quarto e otimizada para GitHub Pages.

## Localização do site.

https://synesis-lang.github.io/synesis-docs/ (redireciona automaticamente)
https://synesis-lang.github.io/synesis-docs/pt/ (português direto)
https://synesis-lang.github.io/synesis-docs/en/ (inglês direto)

## 🌐 Estrutura do Site

```
synesis-docs/
├── pt/               # Versão em Português
│   ├── _quarto.yml   # Configuração PT
│   ├── index.qmd
│   ├── guide/
│   ├── reference/
│   └── ecossistema/
├── en/               # Versão em Inglês
│   ├── _quarto.yml   # Configuração EN
│   ├── index.qmd
│   ├── guide/
│   ├── reference/
│   └── ecossistema/
├── index.qmd         # Página raiz com redirecionamento automático
├── _quarto.yml       # Configuração global
└── _site/            # Output (GitHub Pages)
    ├── .nojekyll     # Necessário para GitHub Pages
    ├── index.html    # Redireciona automaticamente
    ├── pt/           # Site em Português
    └── en/           # Site em Inglês
```

## 🖥️ Usando GitHub Desktop (Recomendado)

Para facilitar o gerenciamento do repositório, você pode usar o GitHub Desktop:

1. **Instale:** https://desktop.github.com/
2. **Adicione o repositório:** File > Add Local Repository > `D:\GitHub\synesis-docs`
3. **Publique (primeira vez):** Publish repository > Organização: `synesis-lang`

**Workflow simplificado:**
1. Edite arquivos `.qmd` no VS Code
2. Execute `.\deploy.bat` no terminal
3. No GitHub Desktop, faça Pull para sincronizar

📖 **Guia completo:** [GITHUB-DESKTOP-GUIDE.md](GITHUB-DESKTOP-GUIDE.md)

---

## 🚀 Build & Deploy

### Deploy Rápido (Recomendado)

Para fazer alterações e publicar automaticamente:

**Windows (PowerShell):**
```powershell
.\deploy.bat
```

**Linux/Mac:**
```bash
bash deploy.sh
```

O script irá:
1. Reconstruir o site completo
2. Solicitar mensagem de commit
3. Fazer commit e push para `main`
4. Atualizar branch `gh-pages` automaticamente

---

### Build Local (Apenas Teste)

Para apenas testar localmente sem fazer deploy:

**Windows (PowerShell):**
```powershell
.\build.bat
```

**Linux/Mac:**
```bash
bash build.sh
```

Ou manualmente:
```bash
cd pt && quarto render && cd ..
cd en && quarto render && cd ..
quarto render index.qmd --to html --output-dir _site
```

---

### Configuração Inicial do GitHub Pages

1. Acesse: Settings > Pages
2. Configure:
   - Source: Deploy from a branch
   - Branch: `gh-pages`
   - Folder: `/ (root)`
3. Salve e aguarde 1-2 minutos

## 🎨 Funcionalidades

### Redirecionamento Automático por Idioma
O [index.qmd](index.qmd) detecta o idioma do navegador e redireciona para `/pt/` ou `/en/`

### Seletor de Idioma
Cada versão (PT/EN) tem um menu de idiomas no canto superior direito da navbar.

### Temas e Sintaxe
- Tema customizado: `synesis.scss`
- Syntax highlighting para Synesis Language: `synesis.xml`
- Bibliografias: `references.bib` com estilo APA (`apa.csl`)

## 📝 Desenvolvimento

### Adicionar Nova Página

1. Crie o arquivo `.qmd` em `pt/` e `en/`
2. Adicione a referência em `pt/_quarto.yml` e `en/_quarto.yml`:

```yaml
website:
  navbar:
    left:
      - href: nova-pagina.qmd
        text: Nova Página
  sidebar:
    contents:
      - nova-pagina.qmd
```

3. Rebuild o site

### Preview Local

Para visualizar alterações em tempo real:

**Português:**
```bash
cd pt
quarto preview
```

**Inglês:**
```bash
cd en
quarto preview
```

## 🔧 Requisitos

- [Quarto](https://quarto.org) >= 1.5
- Git (para deploy)

## 📚 Recursos

- [Documentação Quarto](https://quarto.org/docs/)
- [GitHub Pages](https://pages.github.com/)
- [Quarto Websites](https://quarto.org/docs/websites/)
