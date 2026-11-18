---
name: direcao-de-arte
description: Método de direção de arte do Art Director, como consultoria. Lê o projeto, entende o que o produto mostra, quem é o público, em que setor está e que imagem quer passar (cool, moderno, chique, confiável, divertido, artesanal...), escolhe uma escola de design principal, uma de tempero e a base de UX, e registra tudo num DESIGN.md. Use sempre que pedirem para "dar uma cara", "deixar bonito", "redesenhar", "escolher um estilo", "criar identidade visual", "qual design combina com meu app", começar um projeto novo ou reformar um existente (app web, app mobile, landing page, site, slides).
---

# Direção de arte · Diagnóstico antes de pincel

Design bom não começa em cor nem em fonte. Começa em entender o que o produto é, para quem, e o que precisa fazer a pessoa sentir. A escola de design é consequência do diagnóstico, nunca ponto de partida.

Postura de consultor: leia antes de propor, nomeie o porquê de cada escolha, e entregue algo que dá para aplicar na segunda de manhã.

## O fluxo em 5 passos

### 1. Raio-x (ler antes de perguntar)

Antes de qualquer pergunta, leia o que já existe. O que o código e os textos dizem vale mais que o que a pessoa lembra de contar.

- README, CLAUDE.md, DESIGN.md (se já existe, parta dele), landing, textos da interface, `package.json`.
- Stack: framework, CSS (Tailwind, CSS Modules, vars), biblioteca de componentes, fontes carregadas.
- Tokens atuais: conte os valores distintos de `font-size`, espaçamento, raio e cor. Muitos valores soltos = cara de "gerado".
- Skills de casa: se o projeto tem uma skill de acabamento própria (ex.: `don-acabamento`, `*-acabamento`, régua), ela **manda**. A escola entra por baixo, nunca contra.
- Telas principais: qual é a tela que a pessoa mais abre? É ali que a direção tem que brilhar.

Para isso, use o agente `leitor-de-projeto` quando o projeto for grande.

### 2. Briefing (só o que falta)

Preencha as 7 perguntas de [references/briefing.md](references/briefing.md). Responda sozinho o que o raio-x já respondeu. Pergunte só o que muda a escolha, no máximo 3 perguntas por vez, com opções.

As 4 que mais mudam a resposta:

1. **O que o produto mostra?** (dado, conteúdo, produto físico, pessoas, serviço)
2. **Quem é o público?** (idade, contexto de uso, nível técnico, B2B ou B2C)
3. **Que imagem quer passar?** Escolha até 2 adjetivos do vocabulário da matriz.
4. **Onde vive?** App web, app mobile, landing page, site institucional, e-commerce, slides.

### 3. Escolha (matriz → escolas)

Use [references/matriz.md](references/matriz.md):

1. Cruze **setor** e **imagem desejada** para achar 3 escolas candidatas.
2. Filtre pelo **público** (idade, densidade que aguenta, contexto) e pela **superfície**.
3. Escolha a fórmula **1 + 1 + base**:
   - **Escola principal** (70%): define grid, tipo, forma.
   - **Tempero** (20–30%): uma escola que entra em um ou dois lugares (o hero, a ilustração, a cor de acento, o movimento). Precisa estar em "combina com" da principal.
   - **Base** (sempre): `anti-generico`, `base-ux`, `base-acessibilidade`, `base-tipografia`, `base-cor`, `base-movimento`, `base-layout-e-grid`, `base-microcopy`, mais a skill da superfície (`superficie-*`).
4. Nunca misture duas escolas que "brigam" (está escrito em cada escola).
5. Apresente 2 rotas quando a escolha não for óbvia: a **segura** (o que o setor espera) e a **ousada** (o que diferencia). Diga qual você recomenda e por quê.

### 4. Registro (DESIGN.md)

Escreva o `DESIGN.md` na raiz do projeto no formato de [references/design-md.md](references/design-md.md): diagnóstico, escolhas com motivo, tokens, regras por superfície e o que é proibido. É o contrato. Qualquer agente que mexer em tela lê esse arquivo primeiro.

Se o projeto já tem DESIGN.md ou régua de casa, **atualize** em vez de reescrever, e liste o que mudou.

### 5. Aplicação e revisão

- Aplique em fatias: tokens primeiro, depois a tela mais aberta, depois o resto. Use o agente `aplicador-visual`.
- Mostre antes e depois com números (tamanhos de texto, espaçamentos, raios, cores, contraste).
- Revise com o agente `critico-de-design` contra o DESIGN.md, a escola escolhida e as bases.

## Regras do diretor

- **Diagnóstico por escrito.** Toda escolha vem com a frase "porque [público/setor/imagem]". Sem porquê, não entra.
- **O setor sugere, o público decide.** App de culinária para chef profissional não é igual a app de receita para família.
- **Imagem desejada ≠ estética da moda.** "Moderno" não quer dizer glassmorphism. Quer dizer "não parecer de 2015" e cada setor tem o seu moderno (veja a matriz).
- **Uma escola principal por produto.** Landing pode ser mais ousada que o app (vitrine), mas fala a mesma língua: mesma fonte de display, mesma cor de marca.
- **Conteúdo real.** Desenhe com textos e dados de verdade do projeto, nunca lorem ipsum.
- **Acessibilidade não é estilo.** Nenhuma escola justifica contraste abaixo de 4,5:1 em texto ou estado só por cor.
- **Teto de movimento.** Padrão: toque ≤ 160 ms, revelar ≤ 700 ms, cena ≤ 1,2 s contando atrasos, loop fora. Se o projeto tem regra própria, vale a do projeto.
- **Respeite decisões de casa.** O que já foi decidido e registrado (DESIGN.md, régua, CLAUDE.md) só muda com o dono pedindo. Proponha, não imponha.
- **Pergunte quando é decisão de marca.** Nome, cor da marca, preço e público são do dono. Não chute.

## Entregável da direção (formato da resposta)

```
1. Raio-x: o que o produto é, hoje, em 4–6 linhas (com números dos tokens atuais)
2. Diagnóstico: setor · público · imagem desejada · superfícies
3. Direção: escola principal + tempero + base, cada uma com o porquê
   (se houver duas rotas: segura × ousada, e qual recomendo)
4. A cara em uma frase ("Suíça com calor escandinavo: informação clara, sem frieza")
5. Tokens de partida e 3 regras que mais mudam a tela
6. Plano de aplicação: o que muda, em que ordem, em quais arquivos
```

Depois disso, o DESIGN.md é escrito e a aplicação começa só com o ok do dono.

## Mapa do plugin

| Tipo | Skills |
|---|---|
| Método | `direcao-de-arte` (esta), `anti-generico` (o que denuncia tela gerada; vale sempre), `logo-design` (marca: variantes de logo com especificação) |
| Escolas | `escola-suica`, `escola-bauhaus`, `escola-minimalismo-refinado`, `escola-material`, `escola-neobrutalismo`, `escola-editorial`, `escola-luxo-silencioso`, `escola-escandinava`, `escola-japonesa`, `escola-vidro-espacial`, `escola-dark-tech`, `escola-bento`, `escola-pop-memphis`, `escola-y2k-retrofuturo`, `escola-organica`, `escola-clay-3d`, `escola-esportiva`, `escola-utilitaria`, `escola-tatil`, `escola-maximalista`, `escola-artesanal`, `escola-corporativa-confiavel` |
| Base de UX/UI | `base-ux` (leis de UX, Gestalt e heurísticas de Nielsen), `base-acessibilidade`, `base-tipografia`, `base-cor`, `base-movimento` (inclui microinterações, som e háptico), `base-layout-e-grid`, `base-tokens`, `base-microcopy` |
| Superfícies | `superficie-landing-page`, `superficie-app-web`, `superficie-app-mobile`, `superficie-site`, `superficie-ecommerce`, `superficie-slides` |
| Tendências (curadoria Muzli 2026) | `tendencias` (catálogo e nível de evidência de cada uma), `tendencia-tipografia`, `tendencia-cor-viva`, `tendencia-3d-e-webgl`, `tendencia-scroll-cinematografico`, `tendencia-dashboards`, `tendencia-ilustracao-ludica`, `tendencia-colagem` |

Tendência entra como **tempero**, quase nunca como principal: ela envelhece, a escola não. Antes de usar uma, leia o nível de evidência em `tendencias` e passe pelo `anti-generico`.
