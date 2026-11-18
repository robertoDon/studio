---
name: escola-corporativa-confiavel
description: Escola Corporativa Confiável / Institucional. Confiança em primeiro lugar: acessibilidade AA/AAA, componentes previsíveis, linguagem simples, azul ou verde institucional, formulários impecáveis, inspirada em GOV.UK Design System e IBM Carbon. Use quando o produto lida com dinheiro, saúde, dados pessoais, lei ou serviço público (bancos, seguros, saúde, hospitais, planos, governo, jurídico, contabilidade, previdência, RH, educação formal) ou quando o público inclui idosos e leigos, ou quando pedirem algo "confiável", "sério", "institucional", "acessível", "para todo mundo", "estilo banco", "estilo gov.br", "profissional".
---

# Escola Corporativa Confiável · Ninguém pode se perder

Vem dos sistemas de design de serviço público e de grandes empresas: GOV.UK Design System (Government Digital Service, 2016), IBM Carbon, US Web Design System, o padrão gov.br. Ideia central: o usuário está nervoso (com dinheiro, saúde, prazo) e pode ter qualquer idade, visão ou letramento. Confiança se constrói com previsibilidade, clareza e acessibilidade, não com enfeite.

## Quando usar

- **Setores:** bancos e cooperativas, seguros, previdência, saúde (hospitais, planos, laboratórios), governo, jurídico, contabilidade, RH e folha, educação formal, utilities (água, luz), telecom.
- **Público:** todo mundo, incluindo idosos, pessoas com deficiência, baixo letramento digital, pessoas em situação de estresse.
- **Imagem que passa:** confiável, seguro, sério, claro, "posso resolver aqui sem medo".

## Quando não usar

- Marca que precisa se diferenciar por estilo e emoção (moda, cultura, entretenimento): fica sem graça.
- Startup que quer parecer "nova" diante de bancos tradicionais: use a base confiável (acessibilidade, formulários) e diferencie com outra escola na vitrine.
- Nunca abra mão dos princípios dela (acessibilidade, linguagem simples) em nenhuma escola. O que não usar é só a estética.

## A regra em números

| Grupo | Regra |
|---|---|
| Grid | 12 colunas, conteúdo de leitura até 640–720 px. Uma coluna nos formulários (nunca campos lado a lado, exceto data e CEP). Layout previsível: mesmo cabeçalho, mesma posição de botão em toda página. |
| Tipo | Sans de alta legibilidade: IBM Plex Sans, Source Sans 3, Noto Sans, Public Sans, Atkinson Hyperlegible (todas livres; a última feita pelo Braille Institute para baixa visão). Corpo ≥ 16 px (19 px no GOV.UK), entrelinha 1,5. Escala de 1,2. Pesos 400 e 700. Nada de texto fino (≤ 300). |
| Cor | Azul institucional (#1D4ED8 ou #0B5CAB) ou verde (#00703C) para ação e link. Texto #0B0C0C sobre branco. Erro vermelho #D4351C, sucesso verde, aviso com ícone. Contraste ≥ 4,5:1 sempre, ≥ 7:1 no corpo quando o público é idoso (AAA). Foco amarelo #FFDD00 de alto contraste (padrão GOV.UK). |
| Forma | Raio 0–6 px. Bordas de 2 px em inputs (visíveis, não cinza claro). Botão com fundo sólido e sombra inferior de 2 px. Sem sombras decorativas. Ícones sempre com rótulo de texto. |
| Imagem | Pouca e funcional: foto real de pessoas reais do público (diversas, de verdade), diagramas simples de passo a passo. Nada de banco de imagem com aperto de mão. |
| Espaço | Generoso e regular: múltiplos de 8, alvo de toque ≥ 44 px (48 px para público idoso), 24–32 px entre campos de formulário. |
| Movimento | Mínimo e funcional: transições ≤ 200 ms, sem animação decorativa, nada que pisque mais de 3 vezes por segundo (WCAG 2.3.1). Respeite o teto do projeto (toque ≤ 160 ms, revelar ≤ 700 ms, cena ≤ 1,2 s) e `prefers-reduced-motion`. |

## Por superfície

- **App web / dashboard:** "uma coisa por página" nos fluxos (padrão GOV.UK), resumo antes de confirmar ("Confira suas respostas"), comprovante com número de protocolo. Tabelas com cabeçalho real (`<th>`), filtros com rótulo.
- **App mobile:** biometria e login simples, saldo ou status em destaque, ações principais em botões grandes com texto, confirmação explícita antes de mover dinheiro. Ajustar com o tamanho de fonte do sistema (Dynamic Type).
- **Landing page:** manchete que diz o que é e para quem em linguagem simples, selos reais de regulação (Banco Central, ANS, Susep) e segurança, preço e taxas claros, canal humano de atendimento visível.
- **Site institucional:** busca forte, navegação por tarefa ("Segunda via", "Agendar exame"), páginas de ajuda em linguagem simples, contato e ouvidoria no rodapé.

## Tokens de partida

```css
:root {
  --font-sans: "Public Sans", "IBM Plex Sans", "Atkinson Hyperlegible", Arial, sans-serif;
  --fs-1: 0.875rem; --fs-2: 1.125rem; --fs-3: 1.35rem; --fs-4: 1.62rem; --fs-5: 2.25rem; --fs-6: 3rem;
  --lh-body: 1.5;
  --c-text: #0B0C0C; --c-mute: #505A5F; --c-bg: #FFFFFF; --c-line: #B1B4B6;
  --c-action: #0B5CAB; --c-action-hover: #08467F;
  --c-error: #D4351C; --c-success: #00703C; --c-focus: #FFDD00;
  --radius: 4px; --input-border: 2px solid var(--c-text);
  --target: 44px;
}
:focus-visible { outline: 3px solid var(--c-focus); box-shadow: 0 0 0 6px var(--c-text); }
```

## Referências para olhar

- GOV.UK Design System e o Service Manual (design-system.service.gov.uk), US Web Design System (designsystem.digital.gov).
- IBM Carbon Design System, Padrão Digital de Governo (gov.br/ds).
- WCAG 2.2 (W3C); *Don't Make Me Think*, Steve Krug; *Letting Go of the Words*, Ginny Redish (linguagem simples).

## O que faz parecer genérico

- Azul corporativo + foto de aperto de mão + "soluções inovadoras": é o clichê, não a escola.
- Cinza claro em placeholder como rótulo: some e reprova.
- Jargão interno ("solicitação de ressarcimento de despesas"). Escreva "Pedir reembolso".
- Modal de confirmação para tudo, menos para o que move dinheiro.

## Combina com / briga com

- **Combina:** `escola-suica` (grid e clareza), `escola-utilitaria` (back-office), `escola-minimalismo-refinado` (versão premium de banco), `escola-material` (componentes previsíveis).
- **Briga:** `escola-maximalista`, `escola-y2k-retrofuturo`, `escola-neobrutalismo`, `escola-pop-memphis`.

## Checklist

1. Todo texto ≥ 4,5:1 (≥ 7:1 no corpo para público idoso), foco visível e de alto contraste?
2. Corpo ≥ 16 px, nenhum peso abaixo de 400, funciona com zoom de 200%?
3. Formulários em uma coluna, rótulo visível acima do campo, erro com texto e ícone?
4. Linguagem simples, sem jargão, com verbo no botão?
5. Toda ação que move dinheiro ou dado tem resumo e confirmação?
6. Navegação completa por teclado e leitor de tela (testado com VoiceOver ou NVDA)?
