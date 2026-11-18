---
name: superficie-app-web
description: App web e dashboard: navegação, ⌘K, tabelas, formulários, os quatro estados (vazio, carregando, erro, sucesso) e densidade. Independe da escola visual. Use ao desenhar, codar ou revisar SaaS, painel administrativo, dashboard, ferramenta interna, CRM, back-office, ou quando pedirem "dashboard", "tabela", "formulário", "painel", "sistema web".
---

# App web · Ferramenta que some na mão

Fontes: Nielsen Norman Group (navegação, tabelas, formulários, "Response Times: The 3 Important Limits"); *Refactoring UI*; Material Design 3 (navigation rail, data tables); Apple HIG (macOS sidebars); padrões de Linear, Notion, Attio, Stripe Dashboard. A escola dá a cara. Esta skill faz a ferramenta funcionar todo dia.

## Navegação

| Itens de topo | Padrão |
|---|---|
| 2–5 | Barra no topo ou abas |
| 5–10 | Barra lateral fixa (240–280 px), recolhível para ícones (56–72 px) |
| > 10 | Barra lateral com grupos + busca |

- Item ativo marcado por fundo + peso + ícone preenchido, não só cor.
- Título da página = nome do item da navegação. Breadcrumb a partir de 3 níveis.
- URL reflete o estado (filtro, aba, item aberto): dá para compartilhar e voltar.
- Ação de criar no topo da página ou da lista, sempre no mesmo lugar.

## ⌘K e atalhos

- **⌘K / Ctrl+K** abre a paleta de comandos: buscar qualquer coisa e executar qualquer ação.
- Atalhos de uma letra para ações frequentes (C criar, / buscar, Esc fechar), e `G` + letra para navegar. Mostre o atalho no tooltip e no menu.
- `?` mostra a lista de atalhos. Nunca sobrescreva atalho do navegador ou do sistema.

## Tabelas

- Linhas de 1 px só na horizontal. Sem zebra pesada; hover destaca a linha.
- Altura 44–52 px (confortável); 32–36 px (compacta, para especialista).
- Texto à esquerda, número à direita com `tabular-nums`, data em formato consistente.
- Cabeçalho fixo no scroll, ordenável, com indicação de ordem.
- Primeira coluna (o nome) fixa no scroll horizontal. No celular, tabela vira lista de cards.
- Ações da linha no hover (desktop) e em menu "…" (sempre). Seleção múltipla com barra de ações em lote.
- Edição no lugar quando o campo é simples. Modal só para criar algo complexo.
- Filtros visíveis como chips removíveis; contagem de resultados ("128 clientes").

## Formulários

- Uma coluna. Rótulo em cima do campo, sempre visível.
- Agrupe em seções de 3–5 campos. Formulário longo vira etapas com progresso.
- Largura do campo indica o tamanho da resposta (CEP curto, endereço longo).
- Valide ao sair do campo. Erro em vermelho + ícone + texto, embaixo do campo.
- Marque o opcional, não o obrigatório (quando a maioria é obrigatória).
- Botão principal no fim, alinhado ao começo do formulário; mantenha habilitado e explique o que falta ao clicar.
- Salvamento automático em configuração; botão "Salvar" em criação.
- `autocomplete`, `inputmode` e máscara flexível (ver Postel em `base-ux`).

## Os quatro estados

Toda tela e todo componente que carrega dado tem os quatro desenhados. Faltou um, a tela não está pronta.

| Estado | Regra |
|---|---|
| **Vazio** | Diz o que vai aparecer, por que vale, e o botão que faz aparecer. Mostra o formato do que vem (linhas fantasmas), não ilustração genérica. Distinga "primeiro uso", "sem resultado na busca" e "tudo feito". |
| **Carregando** | < 300 ms: nada. 300 ms–2 s: skeleton com o formato final. > 2 s: progresso e texto. Nunca spinner de tela inteira. Nada pula quando chega. |
| **Erro** | No lugar do conteúdo que falhou (não derruba a tela toda), com o que houve, o que fazer e botão "Tentar de novo". O resto da tela continua usável. |
| **Sucesso** | Confirma no lugar da ação ("Salvo", "Enviado"), em ≤ 100 ms (update otimista). Toast só para o que acontece fora da vista, com desfazer. |

Mais dois para lembrar: **parcial** (alguns itens) e **sem permissão** (diz quem pode liberar).

## Dashboard

- Responde uma pergunta por bloco. Título do bloco é a pergunta ou a conclusão ("Receita subiu 12% no mês").
- 3–5 KPIs no topo: número grande, unidade pequena, comparação com período e fonte.
- Todo dado com fonte e data de atualização.
- Gráfico certo: linha para tempo, barra para comparar, nada de pizza com mais de 3 fatias, nada de 3D.
- O próximo passo aparece junto do dado ("3 faturas vencidas → Cobrar").

## Densidade

App de uso intenso aguenta mais informação por tela que app de consumo. Comece confortável (44–52 px) e ofereça compacto para quem pede. Texto de corpo 14–16 px no desktop; nunca abaixo de 12 px.

## Checklist

1. Navegação adequada ao número de itens, com item ativo claro e URL com estado?
2. ⌘K e atalhos nas ações frequentes, mostrados na interface?
3. Tabela com número à direita, cabeçalho fixo e versão em lista no celular?
4. Formulário em uma coluna, rótulo visível, erro com conserto?
5. Vazio, carregando, erro e sucesso desenhados para cada bloco?
6. Feedback em ≤ 100 ms e nada de spinner de tela inteira?
7. Dashboard com fonte, data e próximo passo?
