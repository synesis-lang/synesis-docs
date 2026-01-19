# Guia: Usando GitHub Desktop com Synesis Docs

## 🎯 Configuração Inicial

### 1. Adicionar Repositório Existente

1. Abra o **GitHub Desktop**
2. Clique em **File** > **Add Local Repository**
3. Navegue até: `D:\GitHub\synesis-docs`
4. Clique em **Add Repository**

### 2. Publicar no GitHub (Primeira Vez)

1. No GitHub Desktop, clique em **Publish repository**
2. Configure:
   - **Name:** `synesis-docs`
   - **Description:** `Bilingual documentation for Synesis Language`
   - **Organization:** Selecione `synesis-lang`
   - ✅ Marque **Keep this code private** se quiser privado, ou deixe desmarcado para público
3. Clique em **Publish repository**

---

## 🔄 Fluxo de Trabalho Diário

### Cenário 1: Atualizar Apenas o Conteúdo (Arquivos .qmd)

Quando você edita apenas arquivos `.qmd` (documentação):

1. **Edite os arquivos** `.qmd` no VS Code
2. **No terminal**, reconstrua o site:
   ```powershell
   .\build.bat
   ```
3. **No GitHub Desktop**:
   - Você verá todos os arquivos modificados
   - Digite uma mensagem de commit (ex: "Update guide section")
   - Clique em **Commit to main**
   - Clique em **Push origin**

4. **Atualizar gh-pages**:
   - Abra o terminal no GitHub Desktop: **Repository** > **Open in Command Prompt**
   - Execute:
     ```powershell
     git checkout gh-pages
     git rm -rf *
     git checkout main -- _site
     move _site\* .
     move _site\.nojekyll .
     rmdir _site
     git add .
     git commit -m "Deploy: [sua mensagem]"
     git push
     git checkout main
     ```

---

### Cenário 2: Usar Script de Deploy Automático (Recomendado)

**Forma mais fácil:**

1. **Edite os arquivos** `.qmd`
2. **Execute o script de deploy**:
   ```powershell
   .\deploy.bat
   ```
3. O script irá:
   - Reconstruir o site
   - Pedir mensagem de commit
   - Fazer commit e push automaticamente
   - Atualizar ambas as branches

4. **No GitHub Desktop**:
   - Clique em **Repository** > **Pull** para sincronizar
   - Você verá que tudo já foi publicado!

---

## 🔍 Visualizar Mudanças Antes de Commitar

No GitHub Desktop:
- **Aba "Changes"**: Mostra todos os arquivos modificados
- **Clique em um arquivo**: Vê o diff (o que mudou)
- **Desmarque arquivos**: Se não quiser incluir algum no commit

---

## 🌿 Gerenciar Branches

### Ver Branch Atual
- No topo do GitHub Desktop, vê qual branch está ativa

### Trocar de Branch
1. Clique no dropdown de branches (no topo)
2. Selecione `gh-pages` ou `main`

### Histórico de Commits
- Aba **"History"**: Vê todos os commits anteriores
- Clique em um commit para ver detalhes

---

## 🚨 Resolver Conflitos

Se aparecer conflito:
1. GitHub Desktop mostrará os arquivos em conflito
2. Clique em **Open in [Editor]**
3. Resolva os conflitos manualmente
4. Volte ao GitHub Desktop
5. Marque como resolvido
6. Faça commit

---

## 💡 Dicas Úteis

### Atalhos de Teclado
- `Ctrl+1`: Ir para Changes
- `Ctrl+2`: Ir para History
- `Ctrl+P`: Push
- `Ctrl+Shift+P`: Pull

### Desfazer Último Commit
1. Vá para **History**
2. Clique com botão direito no commit
3. Selecione **Undo Commit**

### Ver Repositório no GitHub
- **Repository** > **View on GitHub**

---

## 📋 Workflow Recomendado

```
1. Editar arquivos .qmd no VS Code
2. Executar .\deploy.bat (faz tudo automaticamente)
3. No GitHub Desktop, fazer Pull para sincronizar
4. Pronto! Site atualizado
```

**OU** (forma manual):

```
1. Editar arquivos .qmd
2. Executar .\build.bat
3. No GitHub Desktop:
   - Ver mudanças
   - Escrever mensagem de commit
   - Commit to main
   - Push origin
4. Atualizar gh-pages manualmente via terminal
```

---

## ❓ Troubleshooting

### "Repository not found"
- Certifique-se de estar logado no GitHub Desktop
- Verifique se tem permissão na organização `synesis-lang`

### "Failed to push"
- Faça Pull primeiro para pegar mudanças remotas
- Depois tente Push novamente

### "Uncommitted changes"
- Faça commit das mudanças antes de trocar de branch
- Ou use **Stash** para guardar temporariamente
