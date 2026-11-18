---
name: superficie-site
description: Site institucional, de conteúdo, blog ou portfólio: arquitetura de informação, navegação, leitura confortável e SEO básico de estrutura. Independe da escola visual. Use ao criar, reformar ou revisar site de empresa, escritório, restaurante, portfólio, blog, documentação, ou quando pedirem "site institucional", "portfólio", "blog", "menu do site", "arquitetura de informação".
---

# Site · Achar, ler, confiar

Fontes: Louis Rosenfeld, Peter Morville e Jorge Arango, *Information Architecture for the Web and Beyond*; Steve Krug, *Don't Make Me Think*; Nielsen Norman Group (navegação, leitura em F, "How Users Read on the Web"); Google Search Central (SEO Starter Guide); WCAG 2.2. A escola dá a personalidade. Esta skill faz o site ser achado e entendido.

## Arquitetura de informação

1. Liste **as 3–5 perguntas** que o visitante traz ("O que vocês fazem?", "Quanto custa?", "Onde fica?", "Como falo com alguém?", "Vocês são bons?"). Cada uma vira uma página ou seção.
2. Agrupe pelo modelo mental do visitante, não pelo organograma. Teste com card sorting (5–15 pessoas) quando houver mais de 15 páginas.
3. Profundidade máxima de 3 cliques para qualquer conteúdo importante.
4. Nome de menu em palavra do visitante: "Serviços", "Preços", "Contato" ganham de "Soluções", "Nossa jornada".

Estrutura base de site institucional: **Início · Serviços/Produtos · Sobre · Casos/Portfólio · Blog (se houver) · Contato**.

## Navegação

- 4–7 itens no menu principal. Logo à esquerda leva ao início. Contato ou CTA à direita.
- Item atual marcado. Menu fixo no topo é opcional; se fixo, ≤ 64 px e encolhe ao rolar.
- No celular: menu em tela cheia ou folha, com itens de 48 px e o CTA no fim.
- Rodapé como mapa: todos os links importantes, endereço, telefone, redes, privacidade.
- Busca quando há mais de ~50 páginas de conteúdo.
- Breadcrumb em conteúdo profundo (blog, documentação, catálogo).

## Página inicial

- Em 5 segundos: o que é, para quem, por que confiar, o que fazer agora (teste dos 5 segundos).
- Hero com proposta clara + ação + imagem real (equipe, lugar, trabalho feito). Banco de imagem genérico derruba confiança.
- Depois: serviços em 3–6 blocos, prova (clientes, números, depoimentos), um destaque de trabalho, CTA final.
- Carrossel automático no hero: evite. Quase ninguém vê o slide 2.

## Leitura

As pessoas escaneiam (NN/g: leem ~20–28% das palavras).

- Título que diz a conclusão. Intertítulo a cada 3–5 parágrafos.
- Parágrafo de 2–4 linhas. Primeira frase de cada parágrafo carrega a ideia.
- Corpo 17–20 px em artigo, entrelinha 1,5–1,7, medida 60–75 caracteres (`max-width: 65ch`).
- Listas para passos e itens; tabela para comparação.
- Link com texto que diz o destino, sublinhado no corpo do texto.
- Data de publicação e autor em conteúdo; data de atualização em conteúdo que envelhece.

## Portfólio

- O trabalho é o herói: imagem grande, pouco texto em volta.
- Cada caso: problema, o que foi feito, resultado (número quando houver), créditos.
- 6–12 melhores trabalhos ganham de 40 medianos. Filtro por tipo só se houver muitos.
- Contato a um clique de qualquer caso.

## SEO de estrutura

- Um `<h1>` por página, com o assunto. Intertítulos `h2`/`h3` em ordem.
- `<title>` único por página (~50–60 caracteres, assunto primeiro, marca no fim) e `meta description` (~150–160 caracteres) que convida o clique.
- URL curta e legível: `/servicos/consultoria-fiscal`, não `/page?id=37`.
- Texto em HTML real (não só em imagem ou renderizado só no cliente).
- `alt` descritivo nas imagens de conteúdo. Imagens leves (AVIF/WebP) com dimensões.
- Links internos entre páginas relacionadas. `sitemap.xml`, `robots.txt`, canonical.
- Dados estruturados (JSON-LD) quando couber: Organization, LocalBusiness (endereço, horário), Article, Product, FAQ.
- Open Graph (imagem 1200 × 630, título, descrição) para prévia de link no WhatsApp e redes.
- Core Web Vitals: LCP ≤ 2,5 s, INP ≤ 200 ms, CLS ≤ 0,1.

## Legível por máquina (MX)

Agentes de IA e buscadores também leem o site. A Muzli chama isso de MX, a experiência da máquina, e trata como **previsão** para 2026. Fonte: https://muz.li/blog/web-design-trends-2026/ (#10). As regras de SEO de estrutura acima já valem; somam-se estas:

- Use elementos com nome certo: `<nav>`, `<main>`, `<article>`, `<button>` (nada de `div` clicável) e `<a>` com destino real.
- O texto existe no HTML entregue pelo servidor antes de qualquer animação. Um hero em canvas ou WebGL com o título só desenhado na cena é uma página vazia para a máquina (`tendencia-3d-e-webgl`, `tendencia-scroll-cinematografico`).
- Vídeo vem com transcrição ou resumo em texto.
- Preço, horário, endereço e FAQ também vão em JSON-LD. No e-commerce, toda página de produto tem Product e Offer.
- Na área logada não há indexação, mas a semântica continua valendo para o leitor de tela.

## Negócio local (restaurante, clínica, loja)

- Endereço, horário, telefone/WhatsApp e mapa na página inicial e no rodapé, em texto (não imagem).
- Cardápio, tabela de preços ou serviços em HTML, não em PDF.
- Botão de ligar (`tel:`) e de rota no celular.

## Checklist

1. As 3–5 perguntas do visitante têm resposta a ≤ 3 cliques?
2. Menu com 4–7 itens em palavras do visitante?
3. A home passa no teste dos 5 segundos?
4. Texto escaneável, medida de 60–75 caracteres, corpo ≥ 17 px em artigo?
5. Um `h1`, title e description únicos, URLs legíveis?
6. Imagens reais, leves e com `alt`?
7. Contato visível e clicável no celular?
