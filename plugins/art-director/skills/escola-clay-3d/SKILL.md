---
name: escola-clay-3d
description: Escola Clay / 3D Suave (claymorphism). Objetos e ícones 3D com cara de massinha, cores pastel saturadas, cantos muito arredondados, sombras internas e externas suaves, sensação de brinquedo. Use quando o produto precisa parecer amigável, seguro e fácil (infantil, educação, fintech amigável, app de primeiro banco, saúde para leigos, onboarding, games casuais) ou quando pedirem algo "fofo", "amigável", "3D", "clay", "massinha", "lúdico", "para criança", "estilo Headspace/Duolingo 3D".
---

# Escola Clay / 3D Suave · Dá vontade de apertar

Nasceu por volta de 2021 com renders em Blender e Cinema 4D que imitam massinha e plástico fosco, e com os emojis 3D da Microsoft (Fluent Emoji). Ideia central: tirar o medo. O 3D macio transforma assunto difícil (dinheiro, aprender, saúde) em algo tocável e gentil.

## Quando usar

- **Setores:** educação infantil e de idiomas, primeiro banco e conta para jovens, fintech de investimento para iniciantes, seguros simplificados, saúde para leigos, games casuais, apps de família, onboarding de qualquer produto.
- **Público:** crianças e pais, jovens 16–25, iniciantes num assunto que intimida.
- **Imagem que passa:** amigável, seguro, simples, otimista, "você consegue".

## Quando não usar

- Luxo, jurídico, ferramenta profissional densa. Infantiliza.
- Produto que vende para dono de empresa ou especialista: personagem e massinha tiram autoridade.
- Performance pesa: render 3D em PNG grande atrasa o carregamento. Se não houver orçamento para assets 3D próprios, não use. 3D de banco de imagem genérico é pior que nada.

## A regra em números

| Grupo | Regra |
|---|---|
| Grid | 12 colunas, composições centralizadas no hero (objeto 3D no centro ou à direita). Cards em grade de 2–3 colunas. |
| Tipo | Sans arredondada ou geométrica amigável: Nunito, Quicksand, Fredoka, Baloo 2, Plus Jakarta Sans (todas livres no Google Fonts). Escala de 1,25. Display em 700–800, corpo em 400–500. Nada de serifa fina. |
| Cor | Pastel saturado (não lavado): lavanda #B9A6FF, menta #8EE3C8, pêssego #FFB997, céu #8EC9FF, amarelo #FFE07A. Fundo claro #F6F4FF. Texto em índigo escuro #1F1B3A. Ação numa cor só, mais saturada (#6C4CFF). Cada cor com papel fixo. |
| Forma | Raio muito grande: 24–40 px em cards, pílula em botões. Clay = sombra externa difusa colorida + sombra interna clara em cima e escura embaixo. Nada de canto vivo. |
| Imagem | Objetos e personagens 3D próprios, foscos, iluminação suave de estúdio, sombra de contato. Mesmo ângulo e luz em todo o set. Fluent Emoji 3D da Microsoft para ícones grandes (licença MIT). |
| Espaço | Generoso: 24–32 px dentro dos cards, 96–120 px entre seções. Um objeto 3D por bloco, não vários competindo. |
| Movimento | Elástico: botão encolhe para 0,96 no toque (≤ 120 ms), objeto 3D "quica" ao aparecer (spring, ≤ 500 ms). Flutuação idle do objeto é loop (fora da regra), sutil e pausável. Respeite o teto do projeto (toque ≤ 160 ms, revelar ≤ 700 ms, cena ≤ 1,2 s) e `prefers-reduced-motion`. |

## Por superfície

- **App web / dashboard:** clay só em ícones de categoria, vazio e conquista. Tabelas e formulários limpos, com raio grande. Não ponha sombra clay em cada linha.
- **App mobile:** é o habitat natural. Botão principal clay, cards de lição ou meta com objeto 3D, celebração com o objeto. Alvo de toque ≥ 48 px para criança.
- **Landing page:** objeto 3D herói (cofre, foguete, livro) com sombra de contato, manchete curta e otimista, passos "1, 2, 3" com ícones 3D.
- **Site institucional:** mascote 3D como guia, seções em cor pastel diferente, FAQ com linguagem simples.

## Tokens de partida

```css
:root {
  --font-sans: "Nunito", "Plus Jakarta Sans", system-ui, sans-serif;
  --fs-1: 0.875rem; --fs-2: 1rem; --fs-3: 1.25rem; --fs-4: 1.563rem; --fs-5: 2.441rem; --fs-6: 3.815rem;
  --c-bg: #F6F4FF; --c-ink: #1F1B3A; --c-mute: #5A5677;
  --c-lavender: #B9A6FF; --c-mint: #8EE3C8; --c-peach: #FFB997; --c-sky: #8EC9FF; --c-sun: #FFE07A;
  --c-action: #6C4CFF;
  --radius: 32px; --radius-pill: 999px;
  --clay: 0 12px 24px rgba(108, 76, 255, 0.18),
          inset 0 -6px 12px rgba(31, 27, 58, 0.12),
          inset 0 6px 12px rgba(255, 255, 255, 0.7);
}
```

## Referências para olhar

- Microsoft Fluent Emoji (3D, open source no GitHub).
- Duolingo (personagens e celebrações), Headspace (personagens, versão 2D), apps de banco jovem como NuConta para menores e Revolut <18.
- Dribbble: tag "claymorphism" (Michał Malewicz cunhou o termo em 2021, no artigo "Claymorphism").

## O que faz parecer genérico

- 3D de banco de imagem com luz e ângulo diferentes em cada ícone: parece colagem.
- Sombra clay em tudo, inclusive texto e inputs: vira gelatina e some a hierarquia.
- Pastel lavado com texto cinza claro: reprova no contraste.
- PNG 3D de 2 MB no hero do celular.

## Combina com / briga com

- **Combina:** `escola-pop-memphis`, `escola-bento` (cards com objeto), `escola-material` (formas expressivas), `escola-tatil`.
- **Briga:** `escola-luxo-silencioso`, `escola-suica`, `escola-utilitaria`, `escola-editorial`.

## Checklist

1. Todos os objetos 3D têm o mesmo ângulo, luz e material?
2. Clay só em ação, ícone e momento, não em cada elemento?
3. Texto em índigo escuro, 4,5:1 sobre pastel?
4. Assets 3D otimizados (WebP/AVIF, ≤ 150 KB cada, `loading="lazy"` fora do hero)?
5. Movimento elástico dentro do teto e com `prefers-reduced-motion`?
6. O público é mesmo iniciante ou jovem (não infantiliza um especialista)?
