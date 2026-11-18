---
name: base-layout-e-grid
description: Layout e grid de interface: grids por superfície, ritmo de 4/8 px, hierarquia visual, densidade e breakpoints 375/768/1024/1440. Use ao montar ou revisar estrutura de tela, espaçamento, responsividade, alinhamento, ou quando pedirem "tá bagunçado", "espaçamento", "grid", "responsivo", "hierarquia".
---

# Layout e grid · Espaço é informação

Fontes: Josef Müller-Brockmann, *Grid Systems in Graphic Design*; *Refactoring UI* (Wathan e Schoger); Material Design 3 (Layout: window size classes); Apple HIG (Layout); Nielsen Norman Group (padrão F e Z de leitura). A escola decide se o grid aparece ou se esconde. Esta skill garante que exista.

## Ritmo de 4/8 px

- Todo espaço é múltiplo de 4. Use uma escala curta e com nome: **4, 8, 12, 16, 24, 32, 48, 64, 96**.
- Dentro do componente: 4–16. Entre componentes: 16–32. Entre seções: 48–96 (landing ≥ 96).
- **Proximidade:** espaço entre grupos ≥ 2× o espaço dentro do grupo.
- Comece com espaço demais e tire (Refactoring UI). Tela apertada parece barata; tela folgada parece cuidada.
- Altura de linha de texto também cai no ritmo (16/24, 24/32).

## Grid por superfície

| Superfície | Colunas | Gutter | Margem | Largura máx. |
|---|---|---|---|---|
| Celular (< 600) | 4 | 16 | 16–20 | 100% |
| Tablet (600–1024) | 8 | 16–24 | 24–32 | 100% |
| Desktop (≥ 1024) | 12 | 24 | 32–80 | 1200–1440 |
| Leitura (artigo) | 1 coluna | — | auto | 65ch (~680 px) |
| App web com barra lateral | lateral fixa 240–280 + conteúdo fluido | 24 | 24–32 | conteúdo até 1200 |

## Breakpoints

Desenhe primeiro em **375** (iPhone base), depois **768** (tablet), **1024** (laptop pequeno) e **1440** (desktop). Confira 320 (mínimo da WCAG) sem scroll horizontal.

```css
/* mobile primeiro */
@media (min-width: 768px)  { /* tablet */ }
@media (min-width: 1024px) { /* laptop */ }
@media (min-width: 1440px) { /* desktop largo */ }
```

Use container queries para componentes que mudam de forma pelo espaço que têm, não pela tela.

## Hierarquia visual

Ordem de força para destacar algo: **tamanho → peso → contraste → cor → posição → espaço em volta**. Use a mais fraca que resolve.

- Um ponto focal por tela. Feche os olhos meio a meio (teste do borrão): o que sobra tem que ser o assunto.
- Leitura em **Z** em tela de pouco texto (landing, hero): logo → navegação → manchete → ação. Leitura em **F** em tela de muito texto (lista, artigo, resultado de busca): o começo de cada linha importa mais, então ponha a palavra-chave no começo.
- Diminua o secundário em vez de aumentar o principal (Refactoring UI: "de-emphasize to emphasize").
- Rótulo menor e mais claro que o valor; o dado é o assunto.

## Alinhamento

- Poucas verticais. Cada nova linha de alinhamento é ruído.
- Texto alinhado à esquerda (em pt-BR). Centralizado só em bloco curto (≤ 3 linhas): hero, estado vazio, confirmação.
- Ícone alinhado à primeira linha do texto, não ao bloco. Número alinhado à direita em coluna.
- Alinhamento óptico: ícone de play, triângulo e letra redonda precisam de ajuste de 1–2 px para *parecer* centrados.

## Densidade

| Densidade | Linha de lista/tabela | Quando |
|---|---|---|
| Compacta | 32–36 px | Ferramenta de especialista, planilha, terminal, trading |
| Confortável | 44–52 px | Padrão de produto |
| Arejada | 56–72 px | Consumo, mobile, público amplo, idoso |

Ofereça troca de densidade só em ferramenta de uso intenso. No celular, nunca abaixo de 44 px de alvo.

## Padrões de estrutura

- **Pilha** (stack): elementos em coluna com um espaço só. 80% das telas mobile.
- **Barra lateral + conteúdo**: app web.
- **Cartões em grade**: catálogo, galeria. `grid-template-columns: repeat(auto-fill, minmax(240px, 1fr))`.
- **Bento**: blocos de tamanhos diferentes num grid comum. Bom para vitrine, ruim para dado que se compara.
- **Lista-detalhe**: lista à esquerda, detalhe à direita no desktop; telas separadas no celular.

## Checklist

1. Todo espaço é da escala (múltiplos de 4), e são no máximo 6–8 valores distintos?
2. Espaço entre grupos ≥ 2× o espaço dentro?
3. Tudo cai num grid com colunas, gutter e margem definidos?
4. Desenhado em 375 primeiro e testado em 320, 768, 1024 e 1440?
5. Um ponto focal por tela (teste do borrão)?
6. Poucas linhas de alinhamento, texto à esquerda?
7. Densidade combina com o público e o uso?
