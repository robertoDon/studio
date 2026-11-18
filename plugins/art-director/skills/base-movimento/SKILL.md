---
name: base-movimento
description: Movimento de interface: tipos (toque, revelar, cena, loop) com teto de duração, curvas, coreografia, reduzir movimento e o que nunca animar. Use ao criar ou revisar animação, transição, microinteração, hover, troca de tela, onboarding animado, ou quando pedirem "deixa mais fluido", "anima isso", "transição", "motion".
---

# Movimento · Explica, não enfeita

Fontes: Material Design 3 (Motion: easing and duration); Apple HIG (Motion); Val Head, *Designing Interface Animation*; Nielsen Norman Group ("Animation Duration"; "Executing UX Animations"); WCAG 2.2 2.3.3. Movimento existe para dizer de onde algo veio, para onde foi e o que mudou. Se não explica nada, sai.

## Teto por tipo

Regra padrão do plugin. **Se o projeto tem regra própria mais rígida (CLAUDE.md, DESIGN.md), vale a do projeto.** Passou do teto, corte.

| Tipo | Exemplos | Teto | Típico |
|---|---|---|---|
| **Toque** | Hover, pressionar botão, chip, toggle, foco | **≤ 160 ms** | 100–150 ms |
| **Revelar** | Menu, tooltip, modal, folha, toast, item que entra na lista | **≤ 700 ms** | 200–350 ms |
| **Cena** | Sequência inteira, troca de tela, onboarding, transição de visão | **≤ 1,2 s contando atrasos** | 400–800 ms |
| **Loop** | Carregando, pulso, skeleton | Fora da regra | Lento e discreto (1–2 s por ciclo) |

Sair é mais rápido que entrar: a saída usa ~70% da duração da entrada. Distância maior pede um pouco mais de tempo; no celular, um pouco menos que no desktop.

## Curvas

| Situação | Curva | CSS |
|---|---|---|
| Algo entra | Desacelera (ease-out) | `cubic-bezier(0.2, 0, 0, 1)` |
| Algo sai | Acelera (ease-in) | `cubic-bezier(0.3, 0, 1, 1)` |
| Algo se move na tela | Padrão (ease-in-out) | `cubic-bezier(0.2, 0, 0, 1)` (Material standard) |
| Toque, hover | ease-out curto | `ease-out` |
| Mola (arrastar, soltar, folha) | Spring sem quique excessivo | damping alto; no máximo 1 overshoot leve |

Nunca `linear` em movimento de posição (parece robótico); `linear` só em rotação de loop e progresso.

## Coreografia

- **Um protagonista por vez.** O olho segue uma coisa. O resto espera ou acompanha com menos amplitude.
- **Escalonar (stagger):** 20–40 ms entre itens, no máximo 6–8 itens escalonados; depois disso entra tudo junto. Conte o atraso total no teto de cena.
- **Continuidade espacial:** o que abre a partir de um botão nasce do botão (origem da transformação). O card que vira página cresce do card.
- **Deslocamento curto:** entrada com 8–24 px de translação + opacidade. Nada voa da borda da tela sem motivo.
- **Destino comum:** o que é do mesmo grupo se move junto.

## O que animar

- `transform` e `opacity`: rodam no compositor, 60 fps. Prefira sempre.
- Evite animar `width`, `height`, `top`, `left`, `box-shadow` grande e `filter: blur` em área grande: causam layout/pintura e travam no celular. Use `transform: scale` ou FLIP.

## O que nunca animar

- Texto que a pessoa precisa ler enquanto se move.
- O conteúdo principal na primeira carga só para "ficar bonito" (atrasa o LCP e a leitura).
- Erro de formulário com tremida longa (no máximo um shake de 300 ms, e só com mensagem).
- Qualquer coisa que pisca mais de 3 vezes por segundo.
- Spinner de tela inteira: prefira skeleton com o formato final.
- Layout que pula (CLS). Reserve o espaço antes de o conteúdo chegar.

## Microinterações

São pequenos retornos com motivo, como o botão que quica de leve, o toggle com sensação física ou o campo que reage ao digitar. É a tendência mais segura do catálogo da Muzli: vale para toda UI de produto. Fonte: https://muz.li/blog/web-design-trends-2026/ (#5), com exemplos de 21st.dev e React Bits.

- Toda microinteração responde a uma ação da pessoa. Se não tem gatilho, não entra.
- Clique: escala de 0,96 a 0,98 e volta em ≤ 160 ms.
- Toggle: o pino desliza em 100–160 ms, com overshoot de 5–10%.
- Campo: a borda e o rótulo mudam em ≤ 150 ms. A validação aparece quando a pessoa sai do campo, não a cada tecla.
- O sucesso aparece onde a ação aconteceu (o botão vira "Enviado ✓"), não num toast no canto. Um check que se desenha conta como revelar: ≤ 700 ms.
- Onde usar: botão principal, toggle, copiar, salvar, adicionar ao carrinho, CTA da landing.
- Armadilha: animar o que ninguém tocou. "Fade-up em tudo no scroll" é slop (`anti-generico`).

## Som e háptico

Evidência: **previsão** da Muzli, ainda pouco comum. Fonte: https://muz.li/blog/web-design-trends-2026/ (#7), exemplo brand.ledger.com.

- Som curto: 50–300 ms no toque, até 1 s numa conquista. Volume baixo (−18 a −24 LUFS de referência; essa faixa é regra nossa).
- De 3 a 5 sons no produto inteiro, todos da mesma família de timbre.
- Todo som vem com um retorno visual. Som nunca é a única informação.
- Na web, o som fica desligado por padrão, com um controle visível para ligar. No app, respeite o modo silencioso e combine o som com o háptico.
- Nada toca sem ação da pessoa. Som ambiente contínuo conta como loop e só toca se a pessoa ligar.
- Onde usar: site de marca, hardware, confirmação de pagamento, produto de hábito, jogo.
- Onde não usar: ferramenta usada por horas, escritório, hospital.

## Reduzir movimento

```css
@media (prefers-reduced-motion: reduce) {
  * { animation-duration: .01ms !important; transition-duration: .01ms !important; }
}
```

Com movimento reduzido: troque deslocamento, zoom e parallax por fade de ≤ 150 ms ou corte seco. Loops decorativos param. Autoplay de vídeo para.

## Tokens de partida

```css
:root {
  --dur-toque: 120ms; --dur-revelar: 240ms; --dur-cena: 600ms;
  --ease-out: cubic-bezier(0.2, 0, 0, 1);
  --ease-in: cubic-bezier(0.3, 0, 1, 1);
  --stagger: 30ms;
}
```

## Checklist

1. Cada animação explica algo (origem, destino, mudança)?
2. Toque ≤ 160 ms, revelar ≤ 700 ms, cena ≤ 1,2 s com atrasos (ou a regra do projeto, se mais rígida)?
3. Entrada com ease-out, saída mais rápida com ease-in?
4. Só `transform` e `opacity`?
5. Um protagonista por vez, stagger ≤ 40 ms?
6. `prefers-reduced-motion` respeitado?
7. Nada pisca, nada pula, nenhum spinner de tela inteira?
