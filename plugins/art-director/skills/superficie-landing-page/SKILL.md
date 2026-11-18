---
name: superficie-landing-page
description: Landing page que converte: estrutura hero → prova → como funciona → preço → FAQ → CTA, acima da dobra, uma ação, velocidade (LCP, CLS) e o que cada bloco precisa ter. Independe da escola visual. Use ao criar, reformar ou revisar landing, página de produto, página de captura, página de lançamento, ou quando pedirem "landing", "página de vendas", "hero", "converter mais".
---

# Landing page · Uma página, uma ação

Fontes: Nielsen Norman Group ("Scrolling and Attention", "The Fold Manifesto"); Google web.dev (Core Web Vitals); Joanna Wiebe / Copyhackers (copy de conversão); Baymard Institute (confiança e preço); Apple HIG e *Refactoring UI* para hierarquia. A escola dá a cara. A estrutura abaixo dá o resultado.

## Uma ação

- Defina **a** ação da página (testar grátis, agendar demo, comprar, entrar na lista). Todo bloco empurra para ela.
- O mesmo botão, com o mesmo texto, aparece no hero, no meio e no fim. Ação secundária (ver demo, falar com vendas) só em texto ou contorno.
- Navegação mínima: logo, 3–5 links de âncora, entrar e o CTA. Em página de campanha paga, tire a navegação.

## Estrutura

| # | Bloco | O que precisa ter | Erro comum |
|---|---|---|---|
| 1 | **Hero** | Manchete com o resultado (≤ 8 palavras), subtítulo que diz o quê e para quem (1–2 linhas), CTA, prova curta embaixo ("Usado por 2.300 clínicas"), o produto real na imagem | Manchete abstrata ("O futuro do trabalho"), ilustração genérica |
| 2 | **Prova** | Logos de clientes, número-prova, nota em loja ou avaliação | 20 logos ilegíveis |
| 3 | **Problema → solução** | A dor em palavras do cliente e a virada | Lista de features |
| 4 | **Como funciona** | 3 passos com tela real ou vídeo curto (≤ 30 s, sem som, com legenda) | 9 passos |
| 5 | **Benefícios** | 3–6 blocos: benefício como título, feature como prova | Benefício vago ("mais produtividade") |
| 6 | **Depoimento** | Nome, foto, cargo, empresa e um resultado concreto | Depoimento sem nome |
| 7 | **Preço** | Preço na cara, 1–3 planos, o recomendado destacado, o que tem em cada um, risco zerado (teste, cancelamento) | "Fale com vendas" como único preço em produto de baixo ticket |
| 8 | **FAQ** | 5–8 objeções reais (preço, segurança, contrato, migração, suporte), em acordeão | Perguntas que ninguém faz |
| 9 | **CTA final** | Manchete curta + o mesmo botão | Página que termina no FAQ |
| 10 | **Rodapé** | Contato, termos, privacidade, redes, CNPJ | |

Ordem pode mudar por público: em produto caro e B2B, prova e depoimento sobem; em consumo barato, preço sobe.

## Acima da dobra

A dobra não é parede (NN/g: as pessoas rolam), mas o que está nela decide se rolam. Em 375 × 667 e em 1440 × 900, o primeiro olhar mostra: **o que é, para quem, a ação e uma pista do produto**. Nada de hero de tela cheia com só uma frase poética e uma seta.

## Hero em números

- Manchete: 40–56 px no celular, 56–96 px no desktop. Até 2–3 linhas.
- Subtítulo: 18–22 px, cor de texto secundário com 4,5:1, até 2 linhas.
- CTA: altura 48–56 px, texto com verbo ("Começar grátis").
- Espaço entre seções: ≥ 96 px no desktop, ≥ 64 px no celular.
- Largura de texto: até 640–720 px.

## Velocidade

Página lenta perde gente antes de ler. Metas de Core Web Vitals (web.dev, percentil 75):

| Métrica | Meta |
|---|---|
| LCP (maior elemento visível) | ≤ 2,5 s |
| INP (resposta à interação) | ≤ 200 ms |
| CLS (layout que pula) | ≤ 0,1 |

- Imagem do hero em AVIF/WebP, com `width`/`height`, `fetchpriority="high"` e sem lazy-load. O resto com `loading="lazy"`.
- Texto do hero em HTML real, não em imagem nem renderizado só por JavaScript (SEO e LCP).
- Fonte com `font-display: swap` e fallback ajustado. Vídeo com `poster` e sem autoplay com som.
- Animação de entrada não atrasa a manchete (ver `base-movimento`).

## Confiança

- Preço com imposto e moeda claros. Sem letra miúda escondida.
- Selo de segurança só onde há pagamento ou dado sensível.
- Contato real (e-mail, WhatsApp) visível.
- Política de privacidade e LGPD no rodapé e no formulário.

## Formulário de captura

- O mínimo de campos: e-mail (e nome, se precisar). Cada campo a mais custa conversão.
- Botão com o que a pessoa ganha ("Receber o guia"), não "Enviar".
- Depois de enviar: página ou estado de sucesso com o próximo passo.

## Checklist

1. A página tem uma ação, repetida no hero, no meio e no fim?
2. O hero diz o que é, para quem, mostra o produto real e tem o CTA acima da dobra em 375 px?
3. Prova com nome, número e resultado concreto?
4. Preço na cara (quando o modelo permite)?
5. FAQ responde as objeções reais?
6. LCP ≤ 2,5 s, CLS ≤ 0,1, texto do hero em HTML?
7. Funciona em 375 px sem scroll horizontal?
