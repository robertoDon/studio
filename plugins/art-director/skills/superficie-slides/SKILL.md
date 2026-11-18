---
name: superficie-slides
description: Regras de apresentação em slides (deck de vendas, pitch para investidor, apresentação de resultado, aula, palestra, keynote de lançamento, deck que vai por e-mail). Uma ideia por slide, título que é a conclusão, número-manchete, gráfico com uma mensagem, ritmo de seções e grid de 16:9. Use quando pedirem deck, apresentação, slides, pitch, keynote, PowerPoint, Google Slides, Keynote ou "transformar isso numa apresentação", junto com a escola escolhida no DESIGN.md.
---

# Superfície · Slides

Slide não é documento projetado na parede. Quem assiste lê em 3 segundos e volta a ouvir. Por isso: **uma ideia por slide, e o título diz a ideia.** A escola entra forte (é vitrine, peso de 80–100% na matriz), mas a leitura vem primeiro.

## Primeiro: qual deck é?

| Tipo | Quem lê | Densidade | Regra-mãe |
|---|---|---|---|
| **Falado** (palestra, keynote, pitch ao vivo) | Plateia, com alguém falando | Baixa: até 15 palavras por slide | O slide apoia a fala, não repete. |
| **Lido** (deck por e-mail, proposta, relatório) | Uma pessoa sozinha, sem narrador | Média: até 60 palavras | Cada slide se explica sozinho; o título é a frase completa. |
| **Aula / treino** | Alunos, consulta depois | Média, com passo a passo | Um conceito por slide + exemplo. |

Se o mesmo deck serve para os dois, faça o falado e ponha o texto lido nas notas do apresentador.

## A regra em números

| Grupo | Regra |
|---|---|
| Formato | 16:9 (1920 × 1080). Margem segura de 80 px nos lados e 64 em cima/embaixo. Grid de 12 colunas, gutter de 24. |
| Tipo | Título 48–64 px (até 2 linhas, até 10 palavras). Corpo 28–32 px; nunca abaixo de 24 px (quem está no fundo da sala lê 24). Número-manchete 120–200 px. Até 3 tamanhos por slide. Fonte da marca no título, corpo legível no projetor. |
| Texto | Falado: até 15 palavras. Lido: até 60. No máximo 3 marcadores, nunca marcador dentro de marcador. |
| Cor | Fundo, texto, um acento. O acento marca **a** coisa do slide (a barra que importa, o número que mudou). Contraste ≥ 4,5:1; projetor lava a cor: prefira 7:1 em sala clara. |
| Imagem | Foto em sangria total ou recortada no grid, nunca "colada" com borda. Print de produto real e legível (zoom no trecho que importa). Sem clip-art, sem banco de imagem de aperto de mão. |
| Gráfico | Um gráfico, uma mensagem, escrita no título ("A receita dobrou depois do plano anual"). Destaque a série que importa com o acento, o resto em cinza. Sem legenda separada: rotule direto na linha/barra. Sem 3D, sem pizza com mais de 3 fatias. |
| Ritmo | Abertura → problema → virada → prova → pedido. Slide de seção a cada 4–6 slides. Deck falado: ~1 slide por minuto. |
| Movimento | Transição entre slides: corte ou fade ≤ 300 ms. Revelar item: ≤ 700 ms. Sequência inteira (ex.: build de gráfico): ≤ 1,2 s. Nada de cubo, giro ou "voar da esquerda". |

## Os moldes que resolvem 90% dos slides

1. **Capa:** título do deck + subtítulo + quem/quando. Marca pequena.
2. **Manchete:** uma frase grande, nada mais. Para a virada.
3. **Número:** número-manchete + uma linha de contexto + fonte do dado.
4. **Gráfico:** título-conclusão + gráfico com destaque + fonte.
5. **Comparação:** duas colunas (antes × depois, nós × eles), mesma estrutura dos dois lados.
6. **Produto:** print real grande + até 3 anotações apontando para ele.
7. **Lista curta:** até 3 itens, cada um com título em negrito + uma linha.
8. **Pedido / próximo passo:** o que você quer de quem assiste, com data ou número.

Monte o deck só com esses moldes (como componentes) e varie o conteúdo, não o layout. Deck com 20 layouts diferentes parece colcha.

## Por tipo de deck

- **Pitch para investidor:** problema, solução, mercado, tração (número-manchete), modelo, time, pedido. Tração antes de mercado se ela for forte.
- **Venda B2B:** abre na dor do cliente com o dado dele, mostra o produto rodando, prova (caso + número), preço claro, próximo passo com data.
- **Resultado / board:** primeiro slide já com as 3 conclusões. Depois a prova de cada uma. O detalhe vai para o anexo.
- **Keynote de lançamento:** muitos slides de manchete e de produto, pouco texto; é onde a escola e a tendência (`tendencia-*`) podem ir ao máximo.
- **Aula:** objetivo no começo, um conceito por slide, exercício, resumo no fim.

## Como a escola entra

- A escola do DESIGN.md manda em fonte de título, cor e forma. A capa e os slides de manchete podem ir até 100% da escola; slides de dado ficam mais neutros.
- Escola Suíça e editorial são as mais seguras para deck lido. Esportiva, maximalista e pop funcionam em keynote e palestra.
- Sempre passe pelo `anti-generico`: etiqueta em versalete em cima de todo título, fundo com gradiente roxo e ícone em todo marcador são cara de template.

## Ferramenta

- Se houver um tipo de artefato ou skill de slides disponível (Slides, `pptx`, Google Slides), use e aplique os tokens do DESIGN.md como tema mestre: fontes, cores e os 8 moldes como layouts.
- Deck em HTML: uma `section` por slide, 1920×1080 escalado, navegação por teclado (←/→), e exporte para PDF.
- Fontes: incorpore no arquivo ou use fontes que a máquina de quem apresenta tem. Fonte faltando no projetor desmonta o deck.

## O que faz parecer genérico

- Título que é rótulo ("Resultados") em vez de conclusão ("Vendemos 40% mais no 2º tri").
- Texto do roteiro inteiro no slide.
- Gráfico padrão do programa, com legenda separada e todas as séries coloridas.
- Ícone em todo marcador. Banco de imagem genérico.
- Layout diferente a cada slide.

## Checklist

1. Cada slide tem uma ideia, e o título é a conclusão?
2. Corpo ≥ 24 px, até 3 tamanhos por slide, texto dentro do limite do tipo de deck?
3. Todo gráfico tem uma mensagem escrita no título e só a série importante em destaque?
4. Todo número tem fonte e data?
5. O deck usa só os moldes, com ritmo de seções?
6. Contraste ≥ 4,5:1 (7:1 se vai para projetor em sala clara)?
7. Transições ≤ 300 ms, revelações ≤ 700 ms, nada girando?
8. O último slide diz o que você quer de quem assistiu?
