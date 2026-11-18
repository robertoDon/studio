---
name: escola-esportiva
description: Escola Esportiva / Cinética. Energia e movimento: tipografia condensada pesada e itálica, alto contraste, diagonais, números enormes, foto de ação recortada, cor de time. Use quando o produto fala de esporte, fitness, corrida, academia, times e clubes, competições, nutrição esportiva, outdoor e aventura, ou quando pedirem algo "com energia", "agressivo", "intenso", "esportivo", "estilo Nike", "Strava", "ESPN", "atleta", "performance". Não usar para apostas.
---

# Escola Esportiva · Tudo parece estar em movimento

Vem dos cartazes e uniformes de esporte, das campanhas da Nike (Wieden+Kennedy), das transmissões da ESPN e da Fórmula 1, e dos apps de treino (Strava, Nike Run Club, Whoop). Ideia central: a tela tem velocidade. A tipografia inclina, o número é o herói e o contraste é máximo.

## Quando usar

- **Setores:** fitness e academias, corrida e ciclismo, apps de treino, times e clubes, ligas amadoras, campeonatos, nutrição esportiva, artigos esportivos, outdoor e aventura, e-sports.
- **Público:** atletas amadores e profissionais, torcedores, gente que mede progresso em número.
- **Imagem que passa:** energia, força, superação, velocidade, "bora".

## Quando não usar

- Bem-estar calmo (yoga restaurativo, meditação, terapia): agressivo demais.
- Apostas esportivas: esta escola não deve ser usada para incentivar aposta; a estética de urgência e conquista agrava dano.
- Ferramenta administrativa do clube (financeiro, cadastro): use a energia na vitrine e no resultado, e mantenha o trabalho limpo.

## A regra em números

| Grupo | Regra |
|---|---|
| Grid | 12 colunas com diagonais: elementos inclinados entre −8° e −12° (sempre na mesma direção, para a frente). Faixas que cruzam a tela. Foto sangrando a borda. |
| Tipo | Condensada e pesada no display: Druk Condensed, Tungsten, Nike Futura Condensed Extra Bold, Barlow Condensed, Anton, Bebas Neue, Oswald (livres: Anton, Bebas Neue, Barlow Condensed 800, Big Shoulders Display). Caixa-alta, itálico ou oblíquo permitido. Display de 72–160 px no desktop, tracking −1% a 0. Corpo em sans neutra (Inter, Barlow). Número tabular sempre. |
| Cor | Alto contraste: preto #0B0B0B e branco. Um acento de energia (volt #D7FF1E, laranja Strava #FC4C02, vermelho #FF2D2D) ou a cor do time. No máximo 2 cores além do preto e branco. Gradiente só de velocidade (cor → transparente, na diagonal). |
| Forma | Raio 0–8 px; cortes em ângulo (clip-path em 8–12°) em botões e faixas. Sem sombra suave; profundidade por sobreposição e contraste. |
| Imagem | Foto de ação real: movimento congelado, suor, luz dura, recorte do atleta sobre fundo de cor. Desfoque de movimento permitido. Mapas de rota e gráficos de ritmo como imagem. |
| Espaço | Denso e impactante: blocos colados, manchete invadindo a foto. Seções de 64–96 px. O número grande precisa de ar à volta (≥ 24 px). |
| Movimento | Rápido e direcional: entrada lateral com deslocamento de 24–40 px em 200–300 ms, ease-out forte; contador de número subindo ≤ 700 ms. Toque ≤ 120 ms. Respeite o teto do projeto (toque ≤ 160 ms, revelar ≤ 700 ms, cena ≤ 1,2 s) e `prefers-reduced-motion`. |

## Por superfície

- **App web / dashboard:** número-manchete do treino (distância, ritmo, gols) gigante e condensado, unidade pequena. Gráfico de ritmo em linha com o acento. Ranking em tabela densa com posição grande.
- **App mobile:** tela de treino ao vivo com 1–3 números enormes legíveis correndo (≥ 48 px), botão de pausa enorme (≥ 64 px). Resumo pós-treino como pôster compartilhável.
- **Landing page:** foto de ação em tela cheia, manchete condensada em caixa-alta de 2–3 palavras, faixa diagonal com o CTA. Prova social com números ("2,4 milhões de km corridos").
- **Site institucional (clube):** escudo e cores do time, tabela de jogos, placar ao vivo, notícias com foto de jogo. Calendário em cards com data enorme.

## Tokens de partida

```css
:root {
  --font-display: "Anton", "Bebas Neue", "Barlow Condensed", Impact, sans-serif;
  --font-sans: "Barlow", "Inter", system-ui, sans-serif;
  --fs-1: 0.875rem; --fs-2: 1rem; --fs-3: 1.5rem; --fs-4: 2.25rem; --fs-5: 4rem; --fs-6: 7.5rem;
  --c-black: #0B0B0B; --c-white: #FFFFFF; --c-mute: #9A9A9A;
  --c-energy: #D7FF1E;
  --skew: -10deg;
  --cut: polygon(8% 0, 100% 0, 92% 100%, 0 100%);
  --radius: 4px;
  --ease-fast: cubic-bezier(.2, .9, .1, 1);
}
.numero { font-family: var(--font-display); font-variant-numeric: tabular-nums; }
```

## Referências para olhar

- Campanhas Nike "Just Do It" (Wieden+Kennedy) e o app Nike Run Club.
- Strava (resumos de atividade, Year in Sport), Whoop (dados de esforço), grafismos de transmissão da Fórmula 1 e da ESPN.
- Identidades de clubes e ligas: Premier League (DesignStudio, 2016), Juventus (Interbrand, 2017).

## O que faz parecer genérico

- Condensada em caixa-alta em parágrafo: ilegível. Display é para 1–5 palavras.
- Diagonais em direções diferentes na mesma tela: parece bagunça, não velocidade.
- Foto de banco de imagem de academia com gente posando. Use atleta real ou foto do usuário.
- Volt sobre branco para texto: reprova no contraste. Volt vai sobre preto.

## Combina com / briga com

- **Combina:** `escola-neobrutalismo` (contraste e corte), `escola-dark-tech` (base escura de dados), `escola-utilitaria` (estatística densa), `escola-bento` (cards de métrica).
- **Briga:** `escola-organica`, `escola-luxo-silencioso`, `escola-escandinava`, `escola-clay-3d`.

## Checklist

1. Display condensado só em 1–5 palavras e números?
2. Todas as diagonais na mesma direção e no mesmo ângulo?
3. No máximo 2 cores além do preto e branco, acento com 4,5:1?
4. Número-manchete legível em movimento (≥ 48 px no celular), tabular?
5. Animações rápidas, dentro do teto, com `prefers-reduced-motion`?
6. Nada de mecânica de aposta ou urgência que incentive dano?
