---
name: escola-maximalista
description: Escola Maximalista. Mais é mais: camadas, colagem, muitas cores e famílias tipográficas, padrões, texturas, tipografia expressiva e composição que surpreende, com hierarquia escondida por baixo do caos. Use quando o produto vende cultura, expressão e experiência (festivais, música, arte, museus, moda ousada, editoras independentes, bares e casas noturnas, agências criativas, campanhas) ou quando pedirem algo "ousado", "cheio", "vibrante", "artístico", "experimental", "editorial ousado", "colagem", "fora da caixa", "chamativo".
---

# Escola Maximalista · Excesso com intenção

Responde ao "less is more" de Mies van der Rohe com o "less is a bore" de Robert Venturi (1966). Passa pelo pós-modernismo, pela psicodelia dos anos 60, por David Carson na *Ray Gun* (anos 90) e chega às identidades de festival e às campanhas de moda de hoje. Ideia central: a experiência é o conteúdo. Mas o maximalismo bom tem um sistema por baixo: a pessoa ainda acha o ingresso.

## Quando usar

- **Setores:** festivais e eventos culturais, música, museus e galerias, moda ousada, editoras independentes, revistas culturais, bares e casas noturnas, agências e estúdios criativos, campanhas e lançamentos.
- **Público:** público de cultura, criativos, jovens adultos que buscam experiência e identidade.
- **Imagem que passa:** ousado, artístico, vivo, memorável, "não é para todo mundo".

## Quando não usar

- Ferramenta de trabalho, finanças, saúde, governo: atrapalha a tarefa.
- Fluxos críticos (checkout, cadastro, pagamento) mesmo em marca maximalista: ali, simplifique.
- Sem direção de arte forte e assets próprios: vira bagunça genérica.

## A regra em números

| Grupo | Regra |
|---|---|
| Grid | Existe e é rígido por baixo (12 colunas), mas quebrado de propósito: sobreposição, rotação, sangria. Regra: 1 eixo de leitura claro por tela (o caminho até o CTA nunca quebra). |
| Tipo | 2–3 famílias com papéis claros: display expressiva (PP Editorial, Ogg, Monument Extended; livres: Rubik Mono One, Fraunces 900 itálico, Bowlby One, DM Serif Display, Instrument Serif), uma de apoio (mono ou grotesca) e uma de leitura neutra (Inter, Work Sans). Escala extrema (14 a 200 px). Mistura de caixa-alta, itálico e outline permitida no display, nunca no corpo. |
| Cor | Paleta ampla, mas fechada: 5–7 cores definidas no token, com 1 cor de ação reservada. Contrastes complementares fortes (rosa e verde, laranja e azul). Texto de leitura sempre em área de cor sólida com 4,5:1. |
| Forma | Mistura deliberada: recortes, adesivos, fita adesiva, formas orgânicas e geométricas. Raios variados permitidos, mas cada tipo de componente tem um (botão sempre igual). |
| Imagem | Colagem de foto recortada, textura de papel e xerox, padrões, ilustração autoral, scans. Grão, halftone, duotone. Tudo com direito de uso. |
| Espaço | Denso em camadas, mas com 1 respiro por seção onde fica o texto de leitura. Seções de altura variável. |
| Movimento | Expressivo dentro do teto: marquee, parallax leve e cursor customizado são loops ou contínuos (fora da regra, pausáveis); entradas com rotação e escala ≤ 700 ms; cena de abertura ≤ 1,2 s, com opção de pular. Respeite o teto do projeto (toque ≤ 160 ms) e `prefers-reduced-motion` (corta parallax e marquee). |

## Por superfície

- **App web / dashboard:** quase nunca. Se a marca exige, maximalismo só no cabeçalho, no vazio e no compartilhável; a área de trabalho é neutra.
- **App mobile:** app de festival ou museu: capa e line-up maximalistas, mas agenda, mapa e ingresso limpos e rápidos. Ingresso com QR em fundo branco.
- **Landing page:** o habitat. Hero de colagem, manchete gigante sobreposta, marquee de atrações, seções em cores diferentes. CTA de compra fixo e sempre legível.
- **Site institucional:** portfólio de estúdio, museu, revista: navegação experimental permitida desde que exista um menu tradicional acessível.

## Tokens de partida

```css
:root {
  --font-display: "Instrument Serif", "DM Serif Display", serif;
  --font-loud: "Rubik Mono One", "Bowlby One", sans-serif;
  --font-sans: "Work Sans", "Inter", system-ui, sans-serif;
  --fs-1: 0.875rem; --fs-2: 1rem; --fs-3: 1.5rem; --fs-4: 3rem; --fs-5: 6rem; --fs-6: 12.5rem;
  --c-ink: #141414; --c-paper: #F5F0E6;
  --c-hot: #FF3D7F; --c-leaf: #1DB954; --c-sun: #FFB800; --c-sea: #2448FF; --c-plum: #5B2A86;
  --c-action: var(--c-sun);
  --grain: url("data:image/svg+xml,..."); /* textura própria, opacidade ≤ 10% */
}
```

## Referências para olhar

- Robert Venturi, *Complexity and Contradiction in Architecture* (1966); David Carson, *Ray Gun* e *The End of Print* (1995).
- Paula Scher (Pentagram) para o Public Theater de Nova York; Stefan Sagmeister.
- Identidades de festival como Primavera Sound e Sónar; editora Gucci na era Alessandro Michele (2015–2022).

## O que faz parecer genérico

- Caos sem sistema: cada seção com uma regra diferente e o botão de comprar sumindo.
- 7 fontes sem papel. São no máximo 3, cada uma com função.
- Texto de leitura sobre colagem ou padrão.
- Animação em tudo, sem opção de reduzir.

## Combina com / briga com

- **Combina:** `escola-pop-memphis`, `escola-y2k-retrofuturo`, `escola-neobrutalismo`, `escola-editorial` (versão ousada).
- **Briga:** `escola-suica`, `escola-japonesa`, `escola-luxo-silencioso`, `escola-corporativa-confiavel`.

## Checklist

1. Existe um grid por baixo e um caminho de leitura claro até o CTA?
2. No máximo 3 famílias tipográficas, cada uma com papel?
3. Paleta fechada em tokens, com 1 cor reservada para ação?
4. Todo texto de leitura está sobre cor sólida com 4,5:1?
5. Fluxos críticos (compra, ingresso, cadastro) estão limpos?
6. `prefers-reduced-motion` desliga parallax e marquee; cena de abertura pode ser pulada?
