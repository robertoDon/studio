---
name: escola-material
description: Material Design 3 e Material 3 Expressive (Google). Paletas tonais geradas de uma cor-semente, superfícies com elevação por tom, formas arredondadas expressivas, componentes padronizados e acessíveis. Use quando o produto é Android-first, precisa de sistema completo de componentes rápido, ou quer parecer amigável, moderno e acessível (apps de serviço, utilidades, educação, saúde, produtividade, governo digital) ou quando pedirem "Material", "Android", "Google", "Material You", "dynamic color", "componentes prontos".
---

# Material · Um sistema que se adapta

Google, 2014 (Material Design, metáfora de papel e tinta), 2021 (Material You / M3, cor dinâmica) e 2025 (M3 Expressive, formas e movimento mais ousados). Ideia central: um sistema de componentes e tokens tão completo que qualquer time entrega interface consistente, acessível e adaptável à cor do usuário.

## Quando usar

- **Setores:** apps Android, utilidades, serviços públicos digitais, educação, saúde, transporte, produtividade, ferramentas internas que precisam de muitos componentes.
- **Público:** amplo, inclusive menos digital. Padrões familiares para quem usa Android.
- **Imagem que passa:** amigável, acessível, moderno, organizado, "do Google".

## Quando não usar

- Marca que precisa de identidade própria forte (luxo, moda, editorial): Material puro parece app do Google.
- Produto iOS-first: use `escola-minimalismo-refinado` ou HIG.
- Landing de marca: Material é sistema de produto, não de vitrine.

## A regra em números

| Grupo | Regra |
|---|---|
| Grid | Layout responsivo por classes de janela: compacta < 600 dp (4 colunas, margem 16), média 600–839 (8 colunas, margem 24), expandida ≥ 840 (12 colunas, margem 24). Grid de 4 dp para ícones e de 8 dp para layout. |
| Tipo | Roboto, Roboto Flex ou Google Sans Flex (livres: Roboto, Roboto Flex). Escala de tipo M3: Display L/M/S 57/45/36, Headline 32/28/24, Title 22/16/14, Body 16/14/12, Label 14/12/11. Pesos 400 e 500. |
| Cor | Uma cor-semente gera 5 paletas tonais (primary, secondary, tertiary, neutral, neutral-variant) com tons 0–100. Papéis: primary, on-primary, primary-container, surface, surface-container (low → highest), outline, error. Use o Material Theme Builder. Nunca cor solta fora dos papéis. |
| Forma | Escala de forma: none 0, extra-small 4, small 8, medium 12, large 16, extra-large 28, full (pílula). M3 Expressive adiciona formas morfáveis (cookie, flor, pílula) para destaque. Elevação por tom de superfície, sombra só em níveis 1–3. |
| Imagem | Ilustração plana e amigável ou foto real. Ícones Material Symbols (variável: preenchimento, peso 400, grau, tamanho óptico 24). |
| Espaço | Múltiplos de 4. Toque mínimo 48 × 48 dp. Padding de card 16. |
| Movimento | Physics-based springs do M3 Expressive (espacial e de efeito). Durações: curta 50–200 ms, média 250–400 ms, longa 450–600 ms, ease "emphasized". Respeite o teto do projeto (padrão: toque ≤ 160 ms, revelar ≤ 700 ms, cena ≤ 1,2 s). |

## Por superfície

- **App web / dashboard:** navigation rail na janela média, navigation drawer na expandida, top app bar, cards outlined ou filled, data table com 52 px de linha.
- **App mobile:** navigation bar embaixo (3–5 destinos), FAB para a ação principal da tela, bottom sheet, snackbar para retorno. Dynamic color com a cor do papel de parede.
- **Landing page:** use só a paleta e as formas do Material; vitrine pede hero com produto real e formas expressivas grandes como fundo.
- **Site institucional:** top app bar, cards com raio 16, chips de filtro. Bom para portais de serviço com muitas seções.

## Tokens de partida

```css
:root {
  --font-sans: "Roboto Flex", "Roboto", system-ui, sans-serif;
  --md-sys-color-primary: #6750A4; --md-sys-color-on-primary: #FFFFFF;
  --md-sys-color-primary-container: #EADDFF; --md-sys-color-on-primary-container: #21005D;
  --md-sys-color-surface: #FEF7FF; --md-sys-color-surface-container: #F3EDF7;
  --md-sys-color-on-surface: #1D1B20; --md-sys-color-outline: #79747E; --md-sys-color-error: #B3261E;
  --md-shape-small: 8px; --md-shape-medium: 12px; --md-shape-large: 16px; --md-shape-xl: 28px; --md-shape-full: 9999px;
  --md-motion-emphasized: cubic-bezier(.2,0,0,1); --md-dur-short: 150ms; --md-dur-medium: 300ms;
}
```

## Referências para olhar

- m3.material.io (guia oficial), Material Theme Builder (Figma e web).
- Apps Google no Android 16: Gmail, Google Fotos, Relógio, Configurações (M3 Expressive).
- Material Web Components e Jetpack Compose Material 3.

## O que faz parecer genérico

- Usar o roxo padrão #6750A4 sem trocar a cor-semente: todo mundo reconhece como "default".
- Misturar cores fora dos papéis tonais: quebra o contraste automático.
- FAB em toda tela, inclusive sem ação principal.

## Combina com / briga com

- **Combina:** `escola-corporativa-confiavel`, `escola-clay-3d` (versão amigável), `escola-bento`.
- **Briga:** `escola-luxo-silencioso`, `escola-editorial`, `escola-neobrutalismo`.

## Checklist

1. Todas as cores vêm dos papéis tonais gerados de uma semente própria?
2. Forma de cada componente vem da escala (4, 8, 12, 16, 28, full)?
3. Toque ≥ 48 dp e layout muda por classe de janela?
4. Ícones Material Symbols com um único peso e preenchimento?
5. Contraste on-* sobre cada container passa 4,5:1?
6. FAB só onde existe uma ação principal?
