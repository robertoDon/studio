---
name: escola-japonesa
description: Escola japonesa (Ma, wabi-sabi, Muji, Kenya Hara). Vazio como elemento, assimetria calma, imperfeição natural, tipografia pequena e precisa, paleta de papel, tinta e terra, ritmo contemplativo. Use quando o produto quer parecer sereno, consciente, refinado sem ostentação e com profundidade (chá, cerâmica, skincare, meditação, arquitetura, hospitalidade, livrarias, gastronomia japonesa, produtos sustentáveis, galerias) ou quando pedirem algo "zen", "calmo", "japonês", "Muji", "wabi-sabi", "minimalismo japonês", "contemplativo", "com vazio".
---

# Japonesa · O vazio também fala

*Ma* (間) é o intervalo, o espaço entre as coisas, que tem tanto valor quanto elas. *Wabi-sabi* é a beleza do imperfeito e do transitório. Kenya Hara (direção de arte da Muji, livro *Designing Design*) e Ikko Tanaka levaram isso ao design gráfico. Ideia central: não preencher. O vazio é ativo e convida a pessoa a completar.

## Quando usar

- **Setores:** chá e café de especialidade, cerâmica e artesanato, skincare, meditação e bem-estar, arquitetura, hospedagem (ryokan, pousadas), livrarias, gastronomia japonesa, moda slow, papelaria, sustentabilidade.
- **Público:** adulto, 28–60, que valoriza calma, qualidade e significado.
- **Imagem que passa:** sereno, consciente, refinado, honesto, "pensado em cada detalhe".

## Quando não usar

- Produto que precisa de conversão rápida e urgência (varejo de oferta, apps de entrega).
- Interface densa de trabalho: o vazio vira scroll.
- Marca que quer energia e barulho (esporte, festa, Gen Z).

## A regra em números

| Grupo | Regra |
|---|---|
| Grid | Assimétrico. Conteúdo deslocado para um terço; o vazio ocupa ≥ 50% da tela de vitrine. Pode usar grid vertical (texto em coluna estreita) como referência ao tategaki. |
| Tipo | Tipo pequeno e preciso. Sans neutra fina (Noto Sans JP, Zen Kaku Gothic, Inter 300–400) ou serifa delicada (Shippori Mincho, Zen Old Mincho, Noto Serif JP, EB Garamond) — todas livres. Corpo 14–16 px, entrelinha 1,8. Títulos raramente acima de 40 px. Rótulos com tracking +8%. Kanji ou caractere único como elemento gráfico. |
| Cor | Papel washi #F5F1EA, branco-arroz #FBFAF7, sumi (tinta) #1F1E1C, cinza-pedra #8A867E. Acentos da terra: índigo aizome #2D3E5E, vermelho shu #B5452B, verde matcha #7A8B5C, ocre #B08A4E. Um acento, muito pequeno. |
| Forma | Raio 0–4 px. Fios de 0,5–1 px. Sem sombra. Selo (hanko) vermelho pequeno como marca. Ícones mínimos ou nenhum. |
| Imagem | Foto com luz natural lateral, sombras suaves, objeto único, textura (cerâmica, papel, madeira). Imperfeição visível é bem-vinda. |
| Espaço | Muito e irregular por intenção. Seção ≥ 160 px. Margens largas. Agrupe pouco, separe muito. |
| Movimento | Lento e raro: fade de 500–700 ms, ease-in-out, como tinta que aparece. Nada salta. Respeite o teto do projeto (padrão: toque ≤ 160 ms, revelar ≤ 700 ms, cena ≤ 1,2 s). |

## Por superfície

- **App web / dashboard:** só a calma: fundo papel, tipo pequeno com entrelinha larga, um acento, fios finos. Densidade baixa, uma tarefa por vez.
- **App mobile:** tela com um conteúdo, navegação por texto, transições por fade, timer ou prática em tela cheia com quase nada.
- **Landing page:** foto de um objeto com muito vazio, uma frase curta, texto em coluna estreita deslocada, CTA em texto discreto.
- **Site institucional:** sobre o processo e os materiais, página por coleção, mapa e horários minimalistas.

## Tokens de partida

```css
:root {
  --font-sans: "Zen Kaku Gothic New", "Noto Sans JP", "Inter", sans-serif;
  --font-serif: "Shippori Mincho", "Noto Serif JP", "EB Garamond", serif;
  --fs-label: 0.75rem; --fs-body: 0.9375rem; --fs-h2: 1.5rem; --fs-h1: 2.25rem;
  --lh-body: 1.8; --tracking-label: 0.08em;
  --c-paper: #F5F1EA; --c-rice: #FBFAF7; --c-sumi: #1F1E1C; --c-stone: #6F6B64;
  --c-ai: #2D3E5E; --c-shu: #B5452B; --c-matcha: #7A8B5C;
  --rule: 1px solid rgba(31,30,28,.12); --radius: 2px;
  --dur-reveal: 600ms; --ease: cubic-bezier(.4,0,.2,1);
}
```

## Referências para olhar

- muji.com, Kenya Hara (*Designing Design*, *White*), Ikko Tanaka.
- Junichiro Tanizaki, *Em louvor da sombra*.
- Leonard Koren, *Wabi-Sabi for Artists, Designers, Poets & Philosophers*.
- Sites: Aesop (lojas), Kinto (kinto.co.jp), Hoshinoya.

## O que faz parecer genérico

- Clichês: onda de Hokusai, flor de cerejeira, fonte "oriental" falsa. É estereótipo, não escola.
- Vazio sem intenção: só tirar elementos não é *ma*. O vazio precisa de um elemento que o ative.
- Cinza claro demais por "delicadeza", abaixo de 4,5:1.

## Combina com / briga com

- **Combina:** `escola-luxo-silencioso`, `escola-editorial`, `escola-organica`, `escola-escandinava`, `escola-artesanal`.
- **Briga:** `escola-maximalista`, `escola-pop-memphis`, `escola-neobrutalismo`, `escola-y2k-retrofuturo`.

## Checklist

1. O vazio ocupa pelo menos metade da vitrine e tem um elemento que o ativa?
2. Composição assimétrica intencional?
3. Tipo pequeno com entrelinha ≥ 1,7?
4. Um acento da terra, muito pequeno?
5. Nenhum clichê visual "japonês"?
6. Mesmo delicado, todo texto passa 4,5:1?
