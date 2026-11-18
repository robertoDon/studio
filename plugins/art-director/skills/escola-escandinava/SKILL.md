---
name: escola-escandinava
description: Escola escandinava (minimalismo quente, hygge). Neutros quentes, madeira, linho, cantos arredondados suaves, sans humanista, funcionalidade acolhedora, luz natural. Use quando o produto quer parecer simples mas acolhedor, honesto e humano (casa e decoração, móveis, família, bem-estar, educação infantil, finanças pessoais amigáveis, apps de rotina, cafés, coworkings, saúde preventiva) ou quando pedirem algo "aconchegante", "clean mas quente", "estilo IKEA/Muuto", "nórdico", "escandinavo", "hygge", "acolhedor".
---

# Escandinava · Simples e quente

Design nórdico do pós-guerra (Arne Jacobsen, Alvar Aalto, Hans Wegner) e o conceito dinamarquês de *hygge*. Hoje: IKEA, Muuto, HAY, Monzo, Spotify (origem sueca). Ideia central: o minimalismo funcional, mas com calor: material natural, cantos suaves, luz, nada que intimide.

## Quando usar

- **Setores:** casa e decoração, móveis, família e parentalidade, educação, finanças pessoais, apps de hábito e rotina, saúde preventiva, cafés e padarias modernas, coworking, sustentabilidade.
- **Público:** 25–50, famílias, quem quer simplicidade sem frieza.
- **Imagem que passa:** acolhedor, honesto, sereno, confiável, humano, "feito para a vida real".

## Quando não usar

- Marca que precisa de impacto, velocidade ou adrenalina (esporte, games, cripto).
- Luxo de alto padrão: fica casual demais; use `escola-luxo-silencioso`.
- Produto técnico denso: os neutros quentes reduzem contraste de dado.

## A regra em números

| Grupo | Regra |
|---|---|
| Grid | 12 colunas, largura máxima 1200 px, muito alinhamento centrado em blocos. Gutter de 24 px. Composição calma e simétrica com uma quebra. |
| Tipo | Sans humanista ou geométrica suave: DM Sans, Nunito Sans, Figtree, Karla, Work Sans (livres); pagas: Circular, Brown, Gerstner. Serifa suave opcional para título: Fraunces "soft", Recoleta. Pesos 400 e 600. Escala 1,25. Corpo 16–17 px, entrelinha 1,55. |
| Cor | Fundos quentes: linho #F3EEE7, areia #E8DFD3, aveia #D9CBB8. Texto #2B2724. Acentos naturais e dessaturados: verde-musgo #6B7F5E, terracota #C46A4A, azul-fiorde #4F6D7A, mostarda #D4A24C. Um acento principal por tela. |
| Forma | Raio 12–20 px em cards, 10 px em controles, pílula em chip. Sombra suave e baixa (0 2px 8px rgba(43,39,36,.06)). Ícones de traço 1,5–2 com pontas redondas. |
| Imagem | Foto com luz natural, interiores, madeira, plantas, gente real em casa. Ilustração simples com formas suaves e textura leve. |
| Espaço | Generoso e regular. Padding de card 24–32. Seção ≥ 96 px. Múltiplos de 8. |
| Movimento | Suave e acolhedor: ease-out, 180–300 ms, entrada com fade + 8 px. Pequena escala (0,98 → 1) em toque. Respeite o teto do projeto (padrão: toque ≤ 160 ms, revelar ≤ 700 ms, cena ≤ 1,2 s). |

## Por superfície

- **App web / dashboard:** fundo linho com cards brancos quentes (#FFFDF9), gráficos em acentos naturais, linguagem gentil nos estados vazios.
- **App mobile:** cards grandes arredondados, ilustração pequena em vazio e sucesso, abas com rótulo, sheets com raio 24.
- **Landing page:** foto ambiente grande com luz natural, título em frase calma ("Sua casa, mais leve."), benefícios em 3 cards suaves, depoimento com foto real.
- **Site institucional:** histórico e valores, sustentabilidade, equipe com foto natural, catálogo em grade espaçada.

## Tokens de partida

```css
:root {
  --font-sans: "DM Sans", "Figtree", system-ui, sans-serif;
  --font-display: "Fraunces", "DM Sans", serif;
  --fs-1: 0.8125rem; --fs-2: 1.0625rem; --fs-3: 1.25rem; --fs-4: 1.75rem; --fs-5: 2.5rem; --fs-6: 3.5rem;
  --c-bg: #F3EEE7; --c-surface: #FFFDF9; --c-sand: #E8DFD3; --c-ink: #2B2724; --c-mute: #6B625A;
  --c-moss: #6B7F5E; --c-terracotta: #C46A4A; --c-fjord: #4F6D7A;
  --radius-control: 10px; --radius-card: 18px; --radius-pill: 9999px;
  --shadow-1: 0 2px 8px rgba(43,39,36,.06);
  --dur: 220ms; --ease: cubic-bezier(.2,.7,.3,1);
}
```

## Referências para olhar

- ikea.com, muuto.com, hay.dk, menu (audo.com), Monzo (app), Kinfolk (fase nórdica).
- Livro *The Little Book of Hygge* (Meik Wiking).
- Alvar Aalto e Arne Jacobsen (mobiliário).

## O que faz parecer genérico

- Bege em tudo sem nenhum contraste: vira lavado e ilegível.
- Ilustração "corporate" de gente de braços longos: quebra o calor real.
- Raios diferentes em cada componente.

## Combina com / briga com

- **Combina:** `escola-organica`, `escola-minimalismo-refinado`, `escola-japonesa`, `escola-clay-3d`.
- **Briga:** `escola-dark-tech`, `escola-neobrutalismo`, `escola-y2k-retrofuturo`.

## Checklist

1. Fundo quente (não branco puro, não cinza frio)?
2. Acentos naturais e dessaturados, um principal por tela?
3. Raio suave e consistente (10 controle, 18 card, pílula)?
4. Foto com luz natural e gente ou casa real?
5. Texto sobre areia e linho passa 4,5:1?
6. Microcopy gentil e humana?
