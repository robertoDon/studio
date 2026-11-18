# studio

Marketplace de plugins do Claude Code para dar cara, acabamento e direção de arte a produtos digitais.

| Plugin | O que faz |
|---|---|
| [art-director](plugins/art-director) | Direção de arte como consultoria: lê o projeto, escolhe as escolas de design certas e aplica em app web, app mobile, landing, site, e-commerce ou slides. |

## Instalar em todos os projetos do computador

No Claude Code (em qualquer pasta):

```bash
/plugin marketplace add robertoDon/studio
```

```bash
/plugin install art-director@studio
```

Na instalação, escolha o escopo **user** (vale para todos os projetos). Depois rode `/reload-plugins` ou abra uma sessão nova.

Para atualizar quando sair versão nova:

```bash
/plugin marketplace update studio
```

Detalhes, comandos e agentes: [plugins/art-director/README.md](plugins/art-director/README.md).
