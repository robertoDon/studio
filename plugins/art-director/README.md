# Art Director

Direção de arte como consultoria, num plugin do Claude Code. Ele lê o projeto, entende o que o produto mostra, quem é o público, em que setor está e que imagem quer passar (cool, moderno, chique, confiável, divertido, artesanal...). Depois escolhe as escolas de design certas e aplica em app web, app mobile, landing page, site, e-commerce ou slides.

A ideia: o setor sugere, o público decide, a escola é consequência. Nada de estilo da moda colado em qualquer produto.

## Como usar

| Comando | O que faz |
|---|---|
| `/art-director:direcao [o que quer passar]` | Raio-x do projeto, até 3 perguntas, direção (escola principal + tempero + base) com o porquê. Depois do ok, escreve o `DESIGN.md`. |
| `/art-director:aplicar [tela]` | Aplica o `DESIGN.md` no código em fatias (tokens primeiro), com antes e depois em números. |
| `/art-director:auditar [tela]` | Revisão com severidade 0–4 contra o DESIGN.md, a escola, WCAG 2.2, heurísticas e anti-genérico. |
| `/art-director:escolas [contexto]` | Catálogo, ou as 3 escolas candidatas para um contexto ("app de receitas para família"). |

Ou só peça em português: "dá uma cara pro app", "quero que pareça chique", "revisa essa landing". As skills e os agentes entram sozinhos.

## A equipe (agentes)

- **diretor-de-arte:** o consultor. Diagnóstico, escolha e DESIGN.md. Não mexe em código sem ok.
- **leitor-de-projeto:** raio-x só de leitura: produto, público provável, stack, tokens com contagem de valores soltos, regras de casa.
- **aplicador-visual:** implementa a direção em fatias pequenas e verifica (build, print em 375 e 1440 px).
- **critico-de-design:** revisa e mede; devolve achados com severidade e correção.

## As skills

- **Método:** `direcao-de-arte` (briefing, matriz setor × imagem × público, formato do DESIGN.md), `anti-generico` (o que denuncia tela com cara de IA ou de template) e `logo-design` (variantes de logo prontas para produção).
- **22 escolas:** Suíça, Bauhaus, minimalismo refinado, Material, neobrutalismo, editorial, luxo silencioso, escandinava, japonesa, vidro espacial, dark tech, bento, pop/Memphis, Y2K/retrofuturo, orgânica, clay 3D, esportiva, utilitária, tátil, maximalista, artesanal, corporativa confiável.
- **Base de UX/UI:** UX (leis de UX, Gestalt e heurísticas de Nielsen), acessibilidade WCAG 2.2, tipografia, cor, movimento (com microinterações, som e háptico), layout e grid, tokens, microcopy.
- **Superfícies:** landing page, app web, app mobile, site, e-commerce, slides.
- **Tendências (curadoria Muzli 2026):** catálogo com nível de evidência e 7 skills: tipografia, cor viva, 3D e WebGL, scroll cinematográfico, dashboards, ilustração lúdica, colagem.

Tendência entra como tempero, quase nunca como principal: ela envelhece, a escola não.

## Regras que o plugin sempre segue

- Regra da casa manda: se o projeto tem DESIGN.md, régua ou skill de acabamento própria (ex.: uma skill `*-acabamento` em `.claude/skills/`), a escola se encaixa nela.
- Fórmula 1 + 1 + base: uma escola principal, um tempero, e a base de UX sempre.
- Acessibilidade não é estilo: texto com contraste de 4,5:1 ou mais, e nenhum estado só por cor.
- Teto de movimento padrão: toque até 160 ms, revelar até 700 ms, cena até 1,2 s contando atrasos. Loop fica fora da regra. Se o projeto tiver uma regra mais estrita, vale a do projeto.
- Toda escolha vem com o porquê (público, setor ou imagem).

## Instalar

Em qualquer projeto, no Claude Code:

```bash
/plugin marketplace add robertoDon/studio
```

```bash
/plugin install art-director@studio
```

Escolha o escopo **user** quando perguntar: o plugin fica ligado em todos os projetos do computador.

Ou, para um projeto já ativar sozinho para quem abrir, ponha isto no `.claude/settings.json` dele:

```json
{
  "extraKnownMarketplaces": { "studio": { "source": { "source": "github", "repo": "robertoDon/studio" } } },
  "enabledPlugins": { "art-director@studio": true }
}
```

## Fontes

- Escolas: história do design gráfico e sistemas públicos (Müller-Brockmann, Rams, Material Design, Apple HIG, GOV.UK, IBM Carbon e outras, citadas em cada skill).
- Base: Nielsen Norman Group, WCAG 2.2, *Laws of UX* (Jon Yablonski), Baymard Institute, Bringhurst.
- Tendências: blog da Muzli (muz.li), lido em 18/11/2026. O perfil @usemuzli no X não foi lido direto, porque exige login. As fontes de cada item estão em `skills/tendencias/references/muzli-2026.md`.
