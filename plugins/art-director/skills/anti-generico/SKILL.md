---
name: anti-generico
description: Lista do que denuncia uma tela "com cara de IA" ou de template (gradiente roxo no branco, três cards iguais, creme + serifa + botão terracota, preto + verde-ácido, Inter padrão + shadcn cru, fade-up em tudo) e o método para fugir disso. Use em toda criação ou revisão de interface, junto com a escola escolhida, e quando pedirem algo que "não pareça gerado", "não pareça template", "deslop", "tem cara de IA".
---

# Anti-genérico · O que entrega que foi gerado

Base: a série da Muzli sobre "AI slop" (2026): [muzli-mcp-design-with-ai](https://muz.li/blog/muzli-mcp-design-with-ai/), [are-we-out-of-new-things](https://muz.li/blog/are-we-out-of-new-things/), [vibe-design-in-2026](https://muz.li/blog/vibe-design-in-2026-what-ai-generated-ui-means-for-your-work/). Somado à régua Don: valor solto é a outra metade da cara de gerado.

Toda escola vale menos que esta lista. Uma tela Suíça perfeita com três cards iguais e gradiente índigo continua parecendo template.

## Os padrões proibidos (a não ser que a direção peça de propósito)

| Padrão | Por que denuncia |
|---|---|
| Gradiente roxo/índigo sobre branco, três cards em linha | É o `bg-indigo-500` do Tailwind. A primeira coisa que qualquer gerador faz. |
| Fundo creme, serifa grande, um botão terracota (~#D97757) | O "default sofisticado" de IA em 2025–26. |
| Quase preto com um único brilho verde-ácido ou lima | O "default tech" de IA. |
| Layout de jornal com fios finos em tudo | Editorial por reflexo, sem conteúdo editorial. |
| Kit de cards iguais: mesmo raio, mesma sombra cinza suave | Sem hierarquia, tudo pesa igual. |
| Etiqueta em VERSALETE acima de cada título, pontinho entre palavras, seta em todo botão | "Cromo de template". |
| Fade-up em cada bloco no scroll | Movimento sem motivo. |
| Inter no peso padrão + azul + sidebar + grade de cards + tabela (shadcn cru) | É o produto que todo mundo já viu. |
| A imagem literal que o nome sugere (app "Atrasado" com carimbo de biblioteca) | Primeira ideia, não ideia. |
| Celular flutuando em perspectiva estilo 2016, print sobre foto desfocada | "Dribbble shot", não interface. |
| Emoji como ícone, ícones de conjuntos misturados | Sem sistema. |
| 11 tamanhos de texto, 14 espaçamentos, 10 raios | Valor solto (régua Don). |

## O método para fugir

1. **Referência antes de gerar.** Junte 5–10 referências reais (Muzli Picks, Awwwards, SiteInspire, Land-book, a skill da escola). Escolha 2–3 e **escreva o que você tira de cada uma**, começando pela assinatura dela (muitas vezes é o movimento).
2. **Três direções, uma escolhida.** Esboce três caminhos diferentes (não três variações de cor). Escolha um com motivo. Depois construa seção por seção.
3. **Comece pela cor da marca**, não pela cor padrão da biblioteca. Troque o acento padrão do kit no primeiro commit.
4. **Escreva as restrições:** densidade, grid de base, raio, fonte, estilo dos números (tabular, unidade pequena), quantos tamanhos de texto.
5. **Um gancho só.** A fórmula que a Muzli mais vê nos melhores sites: um gancho ousado (3D, cor ou ilustração) + tipo limpo + layout estruturado. Dois ganchos brigam.
6. **Desenhe as bordas:** vazio, erro, carregando, desabilitado, texto longo, nome com 40 letras, número com 7 dígitos. Template só desenha o caso feliz.
7. **Conteúdo real.** Texto, número e foto do produto de verdade. Lorem ipsum esconde problema de hierarquia.
8. **Fonte que não é a padrão.** Roboto, Open Sans, Montserrat e Poppins quase não aparecem nos sites de galeria; Inter sozinha virou sinal de padrão. Se usar Inter, dê escala dramática e um par (mono ou display) com motivo.

## Teste rápido (30 segundos)

Tampe o logo. A tela poderia ser de qualquer outro produto do setor? Se sim, falta:

- um **gancho** que só esse produto teria (o dado dele, a foto dele, a palavra dele);
- uma **decisão tipográfica** visível (escala, peso, par);
- uma **cor com sentido** (não a do kit).

## Checklist

1. Nenhum padrão da tabela aparece sem a direção ter pedido?
2. As referências estão escritas com o que se tirou de cada uma?
3. O acento é da marca, não do kit?
4. Há um gancho, e só um?
5. Os estados de borda estão desenhados?
6. Todo valor (tipo, espaço, raio, cor) está na régua do projeto?
7. Tampando o logo, ainda dá para saber de quem é?
