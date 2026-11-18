---
name: superficie-ecommerce
description: E-commerce: vitrine e listagem, página de produto, carrinho e checkout, com base nas pesquisas do Baymard Institute. Independe da escola visual. Use ao desenhar, codar ou revisar loja virtual, catálogo, página de produto, carrinho, checkout, Shopify, ou quando pedirem "loja", "e-commerce", "checkout", "carrinho abandonado", "página de produto".
---

# E-commerce · Ver, querer, pagar sem atrito

Fontes: Baymard Institute (pesquisa de usabilidade em e-commerce: checkout, página de produto, listagem, busca); Nielsen Norman Group (e-commerce UX); Google web.dev (Core Web Vitals); WCAG 2.2. Baymard estima a taxa média de abandono de carrinho em ~70%, e boa parte vem de problema de design que dá para consertar.

## Vitrine e listagem

- Card de produto: foto grande no mesmo enquadramento e proporção (1:1 ou 4:5), nome, preço, avaliação, e variações (cores) visíveis.
- Segunda foto no hover (desktop) mostra o produto em uso.
- Preço com desconto mostra o antigo riscado e o novo; parcelamento ("ou 6× R$ 33,17 sem juros") é decisão no Brasil.
- Filtros relevantes à categoria (tamanho, cor, preço, marca), com contagem e aplicados como chips removíveis. No celular, em folha com "Ver 48 produtos".
- Ordenar por: relevância, mais vendidos, menor preço, maior preço, novidades.
- "Carregar mais" em vez de paginação numerada ou scroll infinito sem fim (Baymard: melhor equilíbrio).
- Busca tolerante a erro de digitação, sinônimo e plural; autocomplete com produto e categoria.

## Página de produto

Acima da dobra (no celular, até o botão de comprar):

1. Galeria: 5–8 fotos, zoom, foto em uso, escala (pessoa ou mão), vídeo opcional. Fundo neutro e consistente.
2. Nome, preço, parcelamento, avaliação com número de notas.
3. Variações como botões visíveis (não dropdown), com indisponível marcado e não escondido. Cor com amostra e nome.
4. **Comprar** grande, na zona do polegar; fixo no rodapé ao rolar no celular.
5. Frete e prazo calculados por CEP na própria página, antes do carrinho.

Abaixo: descrição escaneável (benefícios em lista), especificações em tabela, guia de medidas, avaliações com fotos e filtro, trocas e devolução em linguagem simples, produtos relacionados.

## Carrinho

- Ao adicionar: confirmação clara (folha ou mini-carrinho) com "Ver carrinho" e "Continuar comprando". Não leve a pessoa embora da página sem pedir.
- Mostrar: foto, nome, variação, quantidade editável, remover (com desfazer), subtotal, frete estimado, total.
- Cupom em link discreto ("Tem cupom?"), não em campo aberto que faz a pessoa sair para procurar.
- Total sem surpresa: custo extra inesperado é o motivo nº 1 de abandono (Baymard).

## Checkout

Baymard: o checkout médio tem muitos campos a mais; dá para cortar perto da metade.

- **Compra como visitante** em destaque. Criar conta é opcional, oferecido depois de pagar.
- Uma coluna, etapas claras (Entrega → Pagamento → Revisão) com progresso, ou uma página bem agrupada.
- CEP preenche o endereço. "Nome completo" em um campo. Telefone com máscara flexível. `autocomplete` em todos os campos.
- Endereço de cobrança "igual ao de entrega" marcado por padrão.
- Pagamento brasileiro: **Pix** (com QR e copia-e-cola, prazo visível), cartão com parcelas, boleto, carteiras (Apple Pay, Google Pay). Ícone e nome de cada um.
- Cartão: detecta a bandeira pelo número, campo único de validade (MM/AA), CVV com ajuda.
- Resumo do pedido sempre visível (lateral no desktop, recolhível no celular).
- Selos de segurança perto do pagamento; mostrar "Pagamento seguro" com o processador.
- Erro: no campo, em texto, sem apagar o que já foi digitado.
- Botão final com o valor: "Pagar R$ 199,00".

## Pós-compra

- Confirmação com número do pedido, resumo, prazo, e o que acontece agora. E-mail igual.
- Acompanhamento de entrega em página própria, sem precisar de login.
- Pix: tela de aguardando com contagem do prazo e confirmação automática.

## Confiança e performance

- Política de troca, frete, contato e CNPJ acessíveis em qualquer página.
- Avaliações reais, incluindo as negativas.
- Fotos otimizadas (AVIF/WebP), LCP ≤ 2,5 s na página de produto; listagem com lazy-load.
- Estoque e prazo verdadeiros. Escassez falsa ("só 2 restantes!" sempre) quebra a confiança e pode violar o Código de Defesa do Consumidor.

## Checklist

1. Cards com foto consistente, preço, parcelamento e variações?
2. Filtros da categoria com contagem e chips removíveis?
3. Página de produto com galeria completa, variações em botão e frete por CEP?
4. Botão de comprar sempre alcançável no celular?
5. Carrinho com total sem surpresa?
6. Checkout como visitante, CEP que preenche, Pix e parcelas?
7. Erro no campo sem apagar dados, botão final com o valor?
8. Pós-compra com prazo e acompanhamento sem login?
