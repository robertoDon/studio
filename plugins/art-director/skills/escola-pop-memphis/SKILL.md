---
name: escola-pop-memphis
description: Escola Pop / Memphis. Cores vibrantes chapadas, formas geométricas lúdicas (zigue-zague, círculo, confete), contorno preto, tipografia gorda e arredondada, humor na interface. Use quando o produto precisa parecer divertido, jovem, acessível e com personalidade (Gen Z, educação gamificada, criadores, comunidades, eventos, apps de hábito leve, marcas de consumo jovem) ou quando pedirem algo "divertido", "colorido", "jovem", "com personalidade", "estilo Duolingo", "Gumroad", "Memphis", "pop", "playful".
---

# Escola Pop / Memphis · Sério demais é chato

Milão, 1981: Ettore Sottsass e o Memphis Group respondem ao bom gosto modernista com cor, padrão e humor. Na web, voltou via ilustração chapada, contornos pretos e marcas que falam como gente (Duolingo, Gumroad, Mailchimp na fase Freddie). Ideia central: a interface tem personalidade e pode sorrir.

## Quando usar

- **Setores:** educação gamificada, apps de hábito leve, comunidades e criadores, eventos, papelaria, brinquedos, bebidas e snacks, marcas de consumo jovem.
- **Público:** Gen Z e millennials, criadores, estudantes, gente que usa o app por vontade, não por obrigação.
- **Imagem que passa:** divertido, acessível, otimista, "não se leva a sério", cheio de energia.

## Quando não usar

- Dinheiro sério, saúde grave, jurídico, B2B enterprise. Humor vira desrespeito.
- Público que precisa de calma (luto, saúde mental em crise). Excesso de estímulo.
- Ferramenta de uso diário intenso: o confete cansa na décima vez. Use o pop na vitrine e no momento de conquista, não em toda tela.

## A regra em números

| Grupo | Regra |
|---|---|
| Grid | 12 colunas, mas pode quebrar: elementos rotacionados (−6° a 6°) e sobrepostos sobre o grid. Máximo 1 elemento "fora" por seção. |
| Tipo | Display gorda e arredondada ou geométrica: Bricolage Grotesque, Recoleta, Cooper, Feather (Duolingo), Clash Display (livres: Bricolage Grotesque, Fredoka, Lilita One, Baloo 2). Corpo em sans amigável (Nunito, DM Sans). Escala de 1,5 (16, 24, 36, 54, 81). Display em 700–900. |
| Cor | 3–4 cores vivas chapadas (ex.: amarelo #FFD23F, rosa #FF6B9A, azul #3D5AFE, verde #2EC4B6) + preto #111 e creme #FFF8EC. Cada cor tem papel fixo (uma é ação). Texto sempre em preto ou branco com 4,5:1. Sem gradiente. |
| Forma | Raio 12–24 px ou pílula. Contorno preto de 2–3 px. Sombra sólida deslocada (4px 4px 0 #111), nunca borrada. Formas soltas: círculos, zigue-zague, estrelas, squiggles. |
| Imagem | Ilustração chapada com contorno, stickers, personagens simples. Foto recortada com borda branca, estilo adesivo. |
| Espaço | Generoso entre seções (96–128 px), apertado dentro de cards (16–24 px). Padrões geométricos preenchem fundo, nunca atrás de texto. |
| Movimento | Elástico e curto: botão afunda 2 px no clique (≤ 120 ms), conquista com bounce ou confete (≤ 700 ms, uma vez). Loops de mascote ficam fora da regra, mas pausáveis. Respeite o teto do projeto (toque ≤ 160 ms, revelar ≤ 700 ms, cena ≤ 1,2 s) e `prefers-reduced-motion`. |

## Por superfície

- **App web / dashboard:** base neutra (creme e preto), cor viva só em ação, estado e conquista. Cards com contorno e sombra sólida. Vazio com ilustração e frase com humor.
- **App mobile:** botão principal gordo (56 px de altura), com "afundar" no toque. Celebração em tela cheia só no marco, não em toda ação. Abas com ícone chapado e rótulo.
- **Landing page:** manchete gigante com uma palavra marcada (sublinhado squiggle ou fundo de cor), stickers flutuando, faixa rolando com frases (marquee). CTA amarelo com contorno preto.
- **Site institucional:** cada seção com uma cor de fundo diferente, em blocos chapados. Equipe em fotos recortadas estilo adesivo.

## Tokens de partida

```css
:root {
  --font-display: "Bricolage Grotesque", "Fredoka", system-ui, sans-serif;
  --font-sans: "DM Sans", "Nunito", system-ui, sans-serif;
  --fs-1: 0.875rem; --fs-2: 1rem; --fs-3: 1.5rem; --fs-4: 2.25rem; --fs-5: 3.375rem; --fs-6: 5rem;
  --c-ink: #111111; --c-paper: #FFF8EC;
  --c-yellow: #FFD23F; --c-pink: #FF6B9A; --c-blue: #3D5AFE; --c-green: #2EC4B6;
  --c-action: var(--c-yellow);
  --radius: 16px; --radius-pill: 999px;
  --stroke: 2.5px solid var(--c-ink);
  --shadow-pop: 4px 4px 0 var(--c-ink);
}
```

## Referências para olhar

- Memphis Group, Ettore Sottsass (móveis e objetos, 1981–1988).
- Duolingo (sistema de marca e ilustração), Gumroad (redesign de 2021), Mailchimp (ilustração da era Freddie).
- Figma Config (identidades de evento), Notion (ilustrações de Roman Muradov, versão mais contida).

## O que faz parecer genérico

- Cor viva em tudo, sem papel fixo: vira festa infantil. Cada cor tem um trabalho.
- Ilustração de banco de imagem no estilo "corporate Memphis" (pessoas de braços compridos e roxas). É o oposto: Memphis bom tem autoria.
- Sombra borrada com contorno preto. A sombra Memphis é sólida e deslocada.
- Texto branco sobre amarelo ou rosa claro: reprova no contraste.

## Combina com / briga com

- **Combina:** `escola-neobrutalismo` (contorno e sombra sólida), `escola-clay-3d` (personagens), `escola-bento` (blocos coloridos), `escola-maximalista`.
- **Briga:** `escola-luxo-silencioso`, `escola-corporativa-confiavel`, `escola-japonesa`, `escola-suica`.

## Checklist

1. Cada cor viva tem um papel só (ação, estado, categoria)?
2. Todo texto passa 4,5:1, inclusive sobre amarelo e rosa?
3. Sombras são sólidas e deslocadas, contorno preto consistente?
4. A celebração aparece só em marco, não em toda ação?
5. Animações respeitam o teto e `prefers-reduced-motion`?
6. A ferramenta continua usável sem a ilustração (a graça não esconde a ação)?
