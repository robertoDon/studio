---
name: base-acessibilidade
description: Acessibilidade em WCAG 2.2 nível AA aplicada a tela: contraste 4,5:1 e 3:1, alvo de toque 24/44 px, foco visível, teclado, leitor de tela, prefers-reduced-motion, estado que não depende só de cor. Use ao desenhar, codar ou revisar qualquer interface, ao escolher cores, ou quando pedirem "acessível", "WCAG", "contraste", "a11y", "leitor de tela", "daltonismo".
---

# Acessibilidade · O mínimo é AA, sempre

Fonte: W3C, *Web Content Accessibility Guidelines (WCAG) 2.2*, recomendação de outubro de 2023. Meta: nível AA em tudo. Não é etapa final nem escola de design: é o piso. Nenhuma escola autoriza furar.

## Contraste (1.4.3, 1.4.11)

| O quê | Mínimo AA | Observação |
|---|---|---|
| Texto normal (< 24 px, ou < 18,66 px em negrito) | **4,5:1** | Inclui placeholder se ele carrega informação. |
| Texto grande (≥ 24 px, ou ≥ 18,66 px negrito) | **3:1** | |
| Componente e gráfico (borda de campo, ícone que é botão, linha de gráfico, anel de foco) | **3:1** contra o vizinho | |
| Texto desabilitado e logo | Isento | Mesmo assim, legível. |

Calcule com a fórmula de luminância relativa da WCAG 2.x. Cinza "elegante" de #999 em branco dá 2,85:1: reprova. O cinza mais claro que passa em branco é ~#767676 (4,54:1). Teste também o modo escuro: o par muda.

## Alvo de toque e clique (2.5.8)

- WCAG 2.2 AA: alvo de **pelo menos 24 × 24 px** (ou espaço livre que complete 24 px).
- Recomendação de plataforma, que vale como regra da casa: **44 × 44 pt** (Apple HIG) e **48 × 48 dp** (Material). Use 44 como padrão.
- Ícone pequeno pode ter 20 px de desenho, mas a área clicável é 44.

## Foco e teclado (2.1.1, 2.4.7, 2.4.11, 2.4.3)

- Tudo que se clica se alcança com Tab e se ativa com Enter/Espaço. Esc fecha modal e menu.
- **Foco sempre visível**: anel de 2 px com contraste 3:1, afastado 2 px do elemento. Nunca `outline: none` sem substituto. Use `:focus-visible`.
- Foco não pode ficar escondido atrás de barra fixa ou cookie banner (2.4.11, novo na 2.2).
- Ordem do Tab segue a ordem visual. Modal prende o foco dentro e devolve ao fechar.
- Link "Pular para o conteúdo" como primeiro foco em site.

## Leitor de tela (1.1.1, 1.3.1, 4.1.2)

- HTML semântico primeiro: `button` para ação, `a` para navegação, `h1`–`h6` em ordem, `nav`, `main`, `label` ligado ao campo. ARIA só onde o HTML não alcança.
- Imagem informativa tem `alt` que diz o que ela comunica; decorativa tem `alt=""`.
- Botão só de ícone tem nome (`aria-label="Fechar"`).
- Mudança dinâmica (toast, erro, carregamento) anunciada com `aria-live="polite"`.
- Teste de verdade: VoiceOver (iOS/macOS), TalkBack (Android), NVDA (Windows).

## Cor e estado (1.4.1)

- **Estado nunca só por cor.** Erro = cor + ícone + texto. Link no meio do texto = cor + sublinhado. Gráfico = cor + rótulo ou padrão.
- ~8% dos homens têm alguma deficiência de visão de cor. Vermelho e verde lado a lado sem outra pista é proibido.

## Movimento (2.3.3, 2.2.2)

- Respeite `prefers-reduced-motion: reduce`: troque deslocamento e zoom por fade curto ou nada.
- Nada pisca mais de 3 vezes por segundo (2.3.1).
- Carrossel e animação automática com mais de 5 s têm pausa.

```css
@media (prefers-reduced-motion: reduce) {
  *, *::before, *::after { animation-duration: .01ms !important; transition-duration: .01ms !important; scroll-behavior: auto !important; }
}
```

## Texto e layout (1.4.4, 1.4.10, 1.4.12)

- Zoom de 200% sem quebrar. Layout funciona em 320 px de largura sem scroll horizontal (reflow).
- Tamanho em `rem`, nunca bloquear zoom no celular (`user-scalable=no` proibido).
- Corpo ≥ 16 px. Entrelinha ≥ 1,5 no corpo deixa ler melhor.

## Formulários (3.3.x)

- Rótulo visível sempre (placeholder não é rótulo).
- Erro identificado em texto, perto do campo, com sugestão de conserto (3.3.3).
- Não peça de novo o que já foi informado no mesmo fluxo (3.3.7, novo na 2.2).
- Login sem teste cognitivo: permita colar senha e gerenciador de senhas (3.3.8, novo na 2.2).

## Checklist

1. Todo texto passa 4,5:1 (3:1 se grande) nos dois temas?
2. Bordas de campo, ícones-botão e foco passam 3:1?
3. Alvos de 44 px (mínimo absoluto 24)?
4. Dá para usar tudo só com teclado, com foco sempre visível?
5. HTML semântico, `alt` certo, botão de ícone com nome?
6. Nenhum estado depende só de cor?
7. `prefers-reduced-motion` respeitado?
8. Funciona em 320 px e com zoom de 200%?
9. Todo campo tem rótulo visível e erro com conserto?
