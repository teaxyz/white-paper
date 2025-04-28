# Isenção de responsabilidade

As informações apresentadas no presente livro branco são de caráter preliminar.
Consequentemente, nem os autores nem qualquer uma das seus respectivos afiliados assumem qualquer responsabilidade de que as informações aqui estabelecidas sejam finais ou corretas e cada uma das anteriores renuncia,
na medida máxima permitida pela lei aplicável, toda e qualquer responsabilidade decorrente de ato ilícito, contrato ou de outra forma em relação a este livro branco.
Nem este livro branco nem qualquer coisa aqui contida devem constituir a base ou ser invocados em conexão com ou agir como um incentivo para celebrar qualquer contrato ou compromisso de qualquer natureza.

Nada neste livro branco constitui uma oferta de venda ou uma solicitação para comprar quaisquer tokens aqui discutidos.
Em qualquer caso, se este livro branco for considerado como tal oferta ou solicitação, nenhuma oferta ou solicitação é pretendida ou transmitida por este livro branco em qualquer jurisdição onde seja ilegal fazê-lo,
quando tal oferta ou solicitação exigir uma licença ou registro, ou quando tal oferta ou solicitação estiver sujeita a restrições.
Em particular, quaisquer tokens discutidos neste documento não foram, e, até a data de emissão deste livro branco, não têm a intenção de serem registrados sob as leis de valores mobiliários ou similares de qualquer jurisdição, independentemente de essa jurisdição considerar tais tokens como um valor mobiliário ou instrumento similar, e podem não ser oferecidos ou vendidos em qualquer jurisdição onde fazê-lo constituiria uma violação das leis relevantes de tal jurisdição.


# Licença

O código-fonte[^src] deste documento está disponível sob a licença Creative Commons Atribuição-CompartilhaIgual 4.0 Internacional[^cc].

[^src]: Veja: @sources
[^cc]: Veja: @cc


# Introdução

A internet é predominantemente composta por projetos de código aberto e tem sido assim desde o seu início. 
Com o tempo, muitos desses projetos se tornaram peças fundamentais sobre as quais toda inovação futura é construída.
E embora fortunas tenham sido feitas a partir disso, o código aberto é principalmente criado e mantido sem compensação.

Nós acreditamos que a totalidade do empreendimento humano moderno foi prejudicada ao depender do menor percentual de engenheiros do mundo para escolher entre um salário ou manter a Internet funcionando.
O código aberto é um trabalho de amor frequentemente prejudicado pela falta de incentivos econômicos significativos, resultando em projetos genuinamente valiosos nunca alcançarem seu potencial, enquanto outros sofrem com problemas de segurança devido à falta de incentivos para manter o software ao longo de seu ciclo de vida.
Para realizar plenamente nosso potencial, precisamos de um sistema de remuneração justo para o ecossistema de código aberto que não mude fundamentalmente como ele é construído ou utilizado.

Empresas frequentemente criam modelos de negócios em torno do código aberto, gerando receita diretamente a partir do trabalho dos desenvolvedores benevolentes, enquanto também dependem deles para corrigir bugs conforme surgem problemas. 
Um ótimo exemplo é um incidente recente envolvendo uma vulnerabilidade crítica de segurança no Log4j, um pacote da Apache Software Foundation que se espalhou por muitos softwares comerciais e serviços usados por empresas e governos.
Em novembro de 2021, um pesquisador de segurança que trabalhava para a Alibaba Group Holding Ltd. reportou a vulnerabilidade CVE-2021-44228[^1], que recebeu a pontuação base mais alta possível da Apache Software Foundation. Amit Yoran, CEO da Tenable e diretor fundador do United States Computer Emergency Readiness Team (US-CERT), descreveu essa vulnerabilidade como 'a maior e mais crítica vulnerabilidade da última década'[^2].
O pânico se instaurou e os poucos voluntários que mantinham esse pacote foram publicamente criticados pelo fracasso.
Após abordar a indignação com um humilde pedido de Justiça, os sistemas foram corrigidos.
Empresas e governos eventualmente perceberam que o Log4j, um pacote usado por uma ampla gama de sistemas críticos por duas décadas, era mantido por alguns voluntários não remunerados, os mesmos heróis desconhecidos que entraram em ação apesar do abuso da indústria[^3] e trabalharam incansavelmente para resolver a vulnerabilidade.

Infelizmente, o Log4j não é o único exemplo
O core-js é baixado 30 milhões de vezes por semana como base de cada aplicativo Node.js, mas também recebe pouquíssimo financiamento.
Recentemente, vários desenvolvedores principais do Bitcoin Core renunciaram, citando, entre outras razões, a *falta de compensação financeira* por suas decisões.

Houve múltiplas tentativas de fornecer estruturas de incentivo, geralmente envolvendo patrocínio e sistemas de recompensa.
O patrocínio torna possível para consumidores de código aberto doarem para os projetos que favorecem.
No entanto, imagine o código aberto como uma torre de tijolos onde as camadas inferiores são há muito esquecidas, mas ainda mantidas por engenheiros dedicados e utilizadas por ainda mais desenvolvedores.
Apenas projetos no topo da torre são normalmente conhecidos e recebem patrocínio.
Essa seleção tendenciosa leva a tijolos essenciais que sustentam a torre não receberem doações, enquanto os favoritos recebem mais do que precisam.
Recompensas permitem que consumidores de projetos proponham pagamento para desenvolvedores construírem recursos específicos, assim remunerando apenas projetos por fazer coisas não necessariamente no seu melhor interesse. 
E novamente, apenas recompensando os favoritos.

Neste documento, propomos o tea — um sistema descentralizado para remunerar justamente os desenvolvedores de código aberto com base em suas contribuições para todo o ecossistema e implementado através do algoritmo de incentivo tea aplicado a todas as entradas no registro do tea.

![Simplified view of the tea steeping rewards system.](img/figure-1.svg)

$\parskip=0pt plus 1pt$

[^1]: Fonte: @nist
[^2]: Fonte: @reuters
[^3]: Fonte: @x


# Componentes

Um desenvolvedor de software construindo uma aplicação precisa de quatro coisas: um navegador, um terminal, um editor e um gerenciador de pacotes.
Destes quatro, o gerenciador de pacotes é o que controla as ferramentas e estruturas que um desenvolvedor precisa para construir seu produto.
Esta camada é onde vemos o potencial de mudar como o código aberto é remunerado.

## O Gerenciador de Pacotes

O gerenciador de pacotes conhece o software de código aberto no qual uma aplicação depende para funcionar, desde o topo da torre até sua base.
Cada componente e versão essencial para a aplicação são conhecidos e registrados.
Ele sabe que o topo da torre seleciona cuidadosamente suas dependências e que essa seleção cuidadosa continua descendendo.
O gerenciador de pacotes está posicionado de forma única na pilha de ferramentas do desenvolvedor para permitir a distribuição automatizada e precisa de valor com base no uso real e prático.

Nós propomos um registro descentralizado imutável projetado para distribuir valor com base em um algoritmo que determina a contribuição de cada entrada para a utilidade e saúde do sistema.
O valor pode entrar no gráfico nos pontos de ápice — aplicativos e bibliotecas essenciais — e ser distribuído para as dependências desses pontos de ápice e suas dependências recursivamente, já que o registro conhece todo o gráfico de código aberto.

Além disso, acreditamos que informações materiais devem estar disponíveis via gerenciador de pacotes para que os desenvolvedores possam avaliar se podem confiar em um pacote e em seu autor.
Essas informações podem se basear em reputação, reconhecimento da comunidade, dados obtidos de sistemas de identidade descentralizados (DID[^4]) outros gerenciadores de pacotes ou mecanismos de incentivo que potencialmente dependem dos participantes da rede colocando valor econômico em risco.

Prevemos que a combinação de ferramentas, informações e recompensas do tea incentivará justamente os desenvolvedores, ajudando a estimular o crescimento do software de código aberto e fomentar a inovação.

[^4]: See: @w3

## O Registro Descentralizado

Cada gerenciador de pacotes possui seu próprio registro de pacotes duplicando os mesmos metadados repetidamente.
Está na hora de haver um registro único, abrangente e definitivo projetado e governado pelas comunidades que dependem dele.
Este registro descentralizado e imutável poderia fornecer segurança, estabilidade e impedir intenções maliciosas.

A internet opera com dezenas de milhares de componentes vitais de código aberto.
É notável que, até agora, incidentes causados pela remoção de infraestrutura de código aberto essencial tenham sido mínimos.
O mais famoso foi a remoção de uma dependência do NPM chamada left-pad[^5] em 2016, que causou problemas em sistemas de integração contínua e implantação contínua, deixando os desenvolvedores em situação delicada por dias.
Esse evento demonstrou que a própria internet é baseada em sistemas frágeis de desenvolvimento.
Outros exemplos envolveram participação ativa ou intencional dos mantenedores de pacotes sabotando seus pacotes populares (Veja colors.js, faker.js[^6], e node-ipc[^7]),
ou malfeitores tentando lucrar fingindo ajudar a manter pacotes e corrompendo-os para roubar, por exemplo, chaves privadas de Bitcoin (Veja event-stream[^8]),
ou pacotes maliciosos com erros de grafia intencionais, também conhecidos como typosquatting,
na esperança de enganar os usuários para que os instalem, por exemplo, os pacotes NPM crossenv vs. cross-env[^npmjsCrossenv].

A integridade do software precisa ser garantida à medida que a indústria avança para um futuro onde os ativos digitais fazem parte do software.
Não podemos continuar vulneráveis a malfeitores modificando o software.

A maioria das ferramentas que chamamos de gerenciadores de pacotes não pode garantir que esses pacotes integrados nos aplicativos e dApps sejam o código de código aberto não adulterado publicado por seus autores originais. 
O GitHub da Microsoft descobriu que 17% das vulnerabilidades de software foram implantadas com propósitos maliciosos[^9], sendo que algumas permaneceram não detectadas por longos períodos (Veja Webmin 1.890[^10]).

Um registro descentralizado, complementado por um sistema de reputação e apoiado por incentivos econômicos projetados para expor malfeitores e recompensar benfeitores, pode oferecer as garantias que as comunidades de desenvolvedores têm procurado.

[^5]: Fonte: @theregister
[^6]: Fonte: @fossa
[^7]: Fonte: @lunasec
[^8]: Fonte: @github
[^npmjsCrossenv]: Fonte: @npmjsCrossenv
[^9]: Fonte: @zdnet
[^10]: Fonte: @threatpost


## O sistema de Armazenamento

Pacotes de código aberto oferecem uma ampla gama de funcionalidades, algumas das quais podem ser restritas ou indesejadas.
A criptografia é um excelente exemplo disso.
Um caso de uso crítico para a criptografia é o suporte à privacidade das pessoas em todo o mundo.
No entanto, a criptografia também pode ser usada para fins nefastos (Veja Phantom Secure, desmantelada por agências de aplicação da lei em março de 2018[^11]) ou pode ser comprometida para apoiar atividades de aplicação da lei (Veja Operação Ironside (AFP), Operação Greenlight (Europol),
e Operação Trojan Shield (FBI)[^12] onde o FBI operava uma plataforma de comunicação "criptografada", AN0M, e convenceu criminosos a usar seus telefones "criptografados" para comunicação segura.

As amplas aplicações da criptografia a tornaram um caso de uso perfeito para software de código aberto e um ótimo exemplo de que qualquer solução que armazene pacotes deve ser à prova de manipulações e resistente à censura. 
O tea é um protocolo descentralizado que não tem a intenção de filtrar ou sancionar pacotes com base em sua funcionalidade. 
Embora a governança do tea possa optar por remover pacotes comprovadamente maliciosos (consulte a seção de governança para mais informações), é fundamental para o sistema tea se conectar a vários sistemas de armazenamento, incluindo sistemas descentralizados que demonstrem que um pacote não foi alterado e está corretamente replicado.
Os mantenedores de pacotes podem escolher o sistema de armazenamento mais adequado às suas necessidades para armazenar e distribuir seus pacotes de forma segura.

[^11]: Fonte: @fbi
[^12]: Fonte: @europol

# Participantes da Rede

A missão do tea é capacitar comunidades de código aberto e garantir que seus contribuintes sejam apoiados enquanto criam as ferramentas que constroem a Internet.
Neste livro branco, distinguimos os participantes por meio de suas contribuições. 
Alguns podem contribuir com código ou verificar o código contribuído. 
Outros podem fornecer valor econômico para apoiar os desenvolvedores e sua reputação.

## Package Maintainers

Os mantenedores de pacotes devem garantir que seu software continue entregando valor crescente à medida que a indústria evolui.

O tea assume que os criadores de pacotes mantêm seu trabalho.
Os mantenedores de pacotes são pilares das comunidades de código aberto que precisam ser capacitados e recompensados por suas contribuições contínuas.
Um mantenedor de pacote pode decidir interromper seus esforços de manutenção ou perceber que não pode operar no mesmo ritmo das expectativas dos usuários do pacote.
Os mantenedores de pacotes recebem um token não fungível (NFT) quando concluem uma submissão de pacote (consulte a seção de NFT do mantenedor para detalhes adicionais).
Este NFT é usado para comprovar seu trabalho e é a chave que direciona as recompensas do tea.
O detentor do NFT de um pacote pode transferir sua propriedade para outro desenvolvedor (ou grupo de desenvolvedores), tornando-os assim mantenedores do pacote e receptores de quaisquer recompensas futuras.
Da mesma forma, um desenvolvedor pode decidir assumir o papel de mantenedor de pacote ao bifurcar o pacote existente e submeter um novo pacote que eles manterão no futuro, tornando-se assim tanto criador quanto mantenedor do pacote.

É essencial fornecer às comunidades de desenvolvedores as ferramentas adequadas para determinar quais pacotes estão sendo mantidos, bem como a reputação passada e presente dos mantenedores e a qualidade do trabalho.
Com frequência, vimos trabalhos de código aberto sendo adulterados e os esforços de muitos arruinados por malfeitores.
Embora o trabalho desses malfeitores seja em grande parte descoberto e remediado, muitas vezes isso só ocorre depois que danos significativos foram causados, seja por perda financeira ou de dados.
Veja, por exemplo, o pacote npm EventStream[^13] que foi baixado mais de 1,5 milhão de vezes por semana e era utilizado por mais de 1.500 pacotes, quando um hacker conseguiu penetrar no projeto de código aberto, ganhar a confiança de seu autor original e modificar o EventStream para depender de um pacote malicioso que exfiltraria credenciais de carteiras de bitcoin para um servidor de terceiros. 
Embora ferramentas possam ajudar a detectar alguns desses ataques, nem sempre se pode depender delas, o que cria uma comunidade inteira dependente da diligência e vontade de compartilhar descobertas uns dos outros.

Propomos a introdução de incentivos por meio do token tea descrito na seção do token tea, incentivando comunidades de código aberto a relatar construtivamente suas descobertas, para que os mantenedores de pacotes possam abordá-las antes que sejam exploradas.

[^13]: Fonte: @medium

## Usuários de Pacotes

Os usuários de pacotes são desenvolvedores de software focados em resolver um problema específico.
Muitas vezes, eles buscam na comunidade de código aberto as ferramentas de que precisam para experimentar rapidamente e iterar com custo mínimo ou nenhum, beneficiando-se diretamente do trabalho dos criadores e mantenedores de pacotes.
Tradicionalmente, um subconjunto pode ter optado por apoiar os mantenedores de pacotes por meio de doações ou outras formas de remuneração; no entanto, isso raramente foi o caso.

O patrocínio pode ser um sistema eficaz para apoiar o desenvolvimento de código aberto; no entanto, a remuneração geralmente não se estende a todas as dependências.
Essa limitação beneficia os favoritos e atrapalha a inovação e a construção de software.
Para prosperar como a base do desenvolvimento de software, o código aberto deve capacitar todos os desenvolvedores, sejam iniciantes ou especialistas, em todas as camadas da torre.

O objetivo do tea é manter os valores fundamentais do software de código aberto enquanto fornece um sistema descentralizado para remunerar os mantenedores de pacotes por seu trabalho.
Para cumprir essa missão, o tea pretende desenvolver — e incentivar outros a desenvolver — mecanismos para que os usuários de pacotes apoiem os mantenedores de pacotes por meio de casos de uso únicos do token tea, conforme descrito nas seções do token tea, trabalho futuro e esforço potencial da comunidade.

## Package Supporters and Sponsors

Na Web 2.0 e na web3, os apoiadores de pacotes frequentemente foram chamados de 'patrocinadores'. Eles são organizações ou usuários de pacotes que usam software de código aberto para construir seus produtos comerciais, filantropos que desejam apoiar o ecossistema ou empreendedores que procuram financiar equipes para desenvolver componentes de um sistema maior.

O tea propõe ampliar as comunidades de apoiadores de pacotes para toda a comunidade do tea, sejam organizações, desenvolvedores, usuários ou entusiastas da tecnologia.
O objetivo do tea é implementar mecanismos de incentivo descentralizados por meio de casos de uso exclusivos do token tea para que qualquer membro da comunidade do tea contribua para a sustentabilidade perpétua e o crescimento contínuo do código aberto.
Apoiadores de pacotes e patrocinadores são livres para decidir quais pacotes ou mantenedores de pacotes desejam apoiar com base em seu trabalho, crenças ou qualquer critério e métrica que influenciaria sua decisão.
Além disso, o apoio fornecido pelos apoiadores de pacotes e patrocinadores fluirá para as dependências de cada pacote, confiando implicitamente no mantenedor do pacote para fazer boas escolhas sobre sua pilha de tecnologia e usando essas informações para contribuir para sua reputação.

Desde que o mantenedor do pacote ofereça esse serviço, um apoiador de pacote e patrocinador pode receber um NFT de nível de suporte premium em troca, beneficiando-se de SLAs acelerados ou licenciamento mais flexível.
Além disso, apoiadores de pacotes e patrocinadores podem decidir apoiar pacotes ou mantenedores de pacotes e redirecionar automaticamente todas ou parte de suas recompensas para incentivar equipes a construir novo software de código aberto.
Em outras palavras, os pacotes não precisam existir para que o tea comece a contribuir.
Projetos incipientes podem ser apoiados da mesma forma que os mais maduros, incentivando ainda mais um cenário de código aberto em constante evolução.

## tea Tasters

À medida que novos pacotes ou novas versões de pacotes existentes são lançados, a validade do trabalho precisa ser demonstrada de forma comprovável.
Essas informações são essenciais para os usuários de pacotes decidirem se confiam ou não tanto no pacote quanto em seus mantenedores.
Com o protocolo tea, essa função é fornecida pelos tea tasters.

Os tea tasters, geralmente, são desenvolvedores de software experientes dispostos a dedicar parte do seu tempo para verificar as reivindicações associadas a um pacote (funcionalidade, segurança, versionamento semântico[^14],  precisão da licença, etc.) e apostar tanto sua reputação quanto valor econômico para demonstrar o resultado de suas pesquisas e análises e apoiar suas avaliações.
Os tea Tasters recebem recompensas por sua diligência e esforços.
No tea, chamamos de 'infusão do seu tea' a ação de bloquear tokens tea para apoiar suas análises e receber recompensas (ou penalidades) com base no consenso sobre a validade de suas avaliações.

Assim como os apoiadores de pacotes, os tea Tasters podem influenciar a reputação de um pacote e de um mantenedor de pacote; no entanto, seu impacto é mais significativo devido ao papel na validação da segurança, funcionalidade e qualidade de um pacote.
Os tea Tasters também precisarão construir sua reputação para apoiar suas alegações.
A qualidade de seu trabalho e o valor econômico que arriscam ao fazer suas análises, combinados com outras fontes externas de dados, construirão a reputação de cada tea Taster, agregando mais valor ao seu trabalho.
Consulte a seção de reputação de pacotes para mais detalhes sobre os mecanismos usados para influenciar a reputação de um pacote e de um mantenedor de pacote.

[^14]: Veja: @semver

# Visão Geral do Protocolo

O design de um protocolo para recompensar contribuições de código aberto é repleto de desafios.
O software de código aberto, por definição, está aberto a todos e, como resultado, pode ser alvo de má atribuição, apropriação ou manipulação maliciosa.
No entanto, a comunidade de código aberto consistentemente demonstrou disposição para destacar benfeitores e expor os maus.
Historicamente, o tempo gasto revisando e comentando as contribuições de outros desenvolvedores tem sido estritamente voluntário, apesar de quão demoradas e cruciais podem ser as atividades de relatar e defender descobertas.

Nossa intenção é criar uma plataforma de distribuição sem confiança para aplicativos protegidos por reputação e incentivos financeiros, pois acreditamos que recompensas adequadas para contribuições de código aberto não podem ter sucesso sem um sistema de reputação e a capacidade dos membros da comunidade de comunicar suas descobertas e apoiar (ou discordar) de um pacote ou do trabalho de um desenvolvedor.

Devemos fornecer aos desenvolvedores ferramentas para acessar e contribuir para esse sistema de reputação.
Ferramentas que incluam acesso visual e programável à versão e reputação de todas as dependências em seus pacotes.
Um entendimento claro de quais membros da comunidade apoiam cada pacote e quantos tokens tea estão sendo utilizados contribuirá para a reputação de cada pacote, assim como quanto um mantenedor de pacote está investindo em seu trabalho comunica o quanto eles o apoiam.
Esses pontos de dados combinados ajudarão a informar um sistema de reputação para todos os membros da comunidade e facilitarão a escolha.
Como o hack do pacote EventStream não foi conduzido pelo pacote em si, mas por meio de uma de suas dependências, a visibilidade em todas as camadas de dependências será vital para construir esse sistema sem confiança.
No entanto, considerações como custos de computação e transação ("gas") precisarão ter prioridade à medida que o sistema for projetado e construído.

Nosso objetivo é recompensar tanto os desenvolvedores da Web 2.0 quanto da web3.
As complexidades e especificidades de cada pilha tecnológica tornam possível que o rastreamento de instalações e desinstalações de pacotes possa facilmente ser vítima de um ou mais malfeitores, incluindo a "compra" de instalações para inflar artificialmente os números.
Um cenário ainda pior seria introduzir mudanças fundamentais na natureza do software de código aberto, criando fricção desnecessária com chaves de licença ou outros mecanismos de rastreamento de implantação.
Para oferecer a maior cobertura possível, acreditamos que as recompensas não devem depender de uma noção simplista de rastreamento de instalações ou desinstalações, mas sim de mecanismos de incentivo que incentivem a submissão de pacotes de qualidade e a denúncia de pacotes maliciosos ou de alto risco.
Por fim, muitos pacotes dependem de dependências comuns.
Por exemplo, o Lodash tem 151.209 dependentes[^15] enquanto o chalk tem 78.854 dependentes[^16] e o Log4js tem 3.343 dependentes[^17].
À medida que mais pacotes são criados usando as mesmas dependências, como garantimos que os incentivos sejam distribuídos de forma justa e equitativa?
Como garantimos que as dependências mais utilizadas sejam recompensadas sem prejudicar os novos ou emergentes pacotes e desenvolvedores?
Como garantimos que o sistema de incentivo não acabe direcionando os desenvolvedores longe de linguagens de nicho para centralizá-los onde os incentivos são melhores?
Mas também, como desenvolvedores, como identificamos pacotes com o maior número de dependentes para construir alternativas - versões mais enxutas, mais eficientes e melhor codificadas desses pacotes?
No tea, acreditamos que a falta de incentivo tem impedido a evolução do software de código aberto.
Com os incentivos econômicos e recompensas certas, mais desenvolvedores estarão em posição de construir, melhorar e ampliar o software de código aberto para o benefício do mundo.
Somente então o token tea será capaz de representar o valor total do software de código aberto.

[^15]: Fonte: @npmjsLodash
[^16]: Fonte: @npmjsChalk
[^17]: Fonte: @npmjsLogFourjs

## Submissão de Pacote

A submissão de um lançamento de pacote requer múltiplas transações para ocorrerem atomicamente.
Especificamente, o mantenedor do pacote deve:

* Registrar o pacote (e sua versão semântica) no registro descentralizado.
* Fazer upload do pacote no sistema de armazenamento descentralizado para resiliência, resistência à censura e facilidade de distribuição.
* Contribuir para a reputação e confiabilidade do pacote 'infundindo' tokens tea.

O fracasso de qualquer uma das três operações resultará no protocolo revertendo para seu estado anterior, eliminando assim qualquer evidência da submissão.

Quando um pacote é submetido com sucesso, o mantenedor do pacote receberá um NFT de mantenedor para evidenciar seu trabalho e contribuição para o código aberto.
O mantenedor do pacote pode transferir as recompensas de 'infusão' associadas ao NFT do mantenedor para um terceiro.
No entanto, a reputação associada à criação e manutenção do ativo permanecerá com o mantenedor do pacote, de modo que sua reputação possa ser afetada ao longo do tempo.
Conforme a reputação de qualquer membro da comunidade do tea atinge marcos importantes, eles podem receber acesso a partes elevadas do protocolo ou receber recompensas aceleradas, conforme decidido pela governança do tea.
Para mais detalhes sobre o NFT do mantenedor, consulte a seção do NFT do mantenedor.

### Análise de Dependências

As dependências de pacotes podem ser extensas, já que cada pacote frequentemente possui dependentes e dependências.
Para fornecer uma metodologia simples que recompense todos os desenvolvedores que contribuíram para o software de código aberto, mantendo a criação da árvore de dependências rápida e computacionalmente eficiente, propomos verificar apenas as dependências de primeiro nível ao submeter um pacote.

Este design é baseado na hipótese de que cada dependência é, por si só, um pacote que foi submetido independentemente para a árvore do tea.
Ao fazer isso, cada uma de suas dependências pode ser mapeada e, se suas dependências também tiverem dependências, essas serão mapeadas no momento em que o pacote de dependência for submetido

![Diagrama de análise de dependências](img/figure-3.svg){#fig:dep-analysis}


Na @fig:dep-analysis, a submissão do pacote A aciona uma análise das dependências de tempo de execução 1 até n e das dependências de compilação 1 até n, enquanto as dependências de tempo de execução 1.1 até 1.n e as dependências de compilação 1.1 até 1.n foram analisadas quando o pacote B foi submetido.
Aplicaremos a mesma metodologia para a distribuição de incentivos, já que os tokens infundidos são distribuídos entre todas as dependências, infundindo de forma recursiva os pacotes listados como dependências (ver @fig:steeping-rewards).

![A distribuição das recompensas de infusão entre as dependências.](img/figure-2.svg){#fig:steeping-rewards}


Versionamento e dependências conflitantes são desafios significativos, e solucioná-los pode se tornar uma enorme perda de tempo.
Para lidar com isso, propomos que cada pacote seja submetido a uma varredura abrangente de dependências ao ser enviado, para garantir que o pacote esteja em conformidade com as seguintes regras para intervalos de versão semântica.

* Pacotes podem apenas restringir suas dependências para uma versão principal, embora o início do intervalo possa ser qualquer versão semântica válida (por exemplo, >=5.2.1 <6).
* Se uma dependência for atualizada para uma versão principal mais recente, o tea pode exigir que a versão principal do pacote seja aumentada.
* Da mesma forma, se uma dependência for atualizada para uma versão secundária mais recente, o tea pode exigir que a versão secundária do pacote seja aumentada.
* Se uma nova dependência for adicionada, o tea pode exigir que a versão secundária do pacote seja aumentada.

Considerando o esforço desnecessário imposto a qualquer usuário de pacote quando as regras acima são desrespeitadas, propomos que uma parte dos tokens tea infundidos pelo mantenedor do pacote seja reduzida para refletir a falta de diligência adequada.
Se um desenvolvedor obriga todos a malabarismar com suas xícaras, alguém vai derramar chá.
Como espera-se que a varredura de dependências ocorra na submissão, devemos observar que nenhuma infusão dos apoiadores de pacotes e patrocinadores, ou dos tea Tasters, terá ocorrido.

## A reputação do Pacote e do Mantenedor do Pacote

Os mantenedores de pacotes devem contribuir para a reputação e confiabilidade de seus pacotes infundindo tokens tea.
No entanto, um sistema de reputação que depende exclusivamente da contribuição econômica do autor não oferece proteção suficiente ao usuário e pode estar sujeito a ataques Sybil, nos quais um único indivíduo cria várias representações de si mesmo para deixar um grande volume de avaliações positivas sobre seu trabalho, enganando os usuários a acreditarem que seu trabalho foi revisado e aprovado por muitos.

Várias metodologias estão disponíveis para evitar ataques Sybil, algumas das quais são descritas por Nitish Balachandran e Sugata Sanyal em "A Review of Techniques to Mitigate Sybil Attacks"[^18].
Como o tea é um protocolo descentralizado, o uso de um sistema de certificação de confiança que depende de uma autoridade centralizada de emissão de certificados seria contrário ao seu cerne.
Propomos focar em abordagens descentralizadas para mitigação de ataques Sybil e, mais especificamente, em metodologias que dependem de um grande grupo de participantes da rede incentivados a avaliar e representar publicamente a reputação de cada pacote e seu mantenedor.

Similar à produção de blocos em uma blockchain de prova-de-participação, onde nós não produtores podem validar o trabalho de outros e, quando necessário, destacar uma violação das regras da rede, o que leva à penalização do malfeitor por meio de redução (destruição de uma parte de sua participação),
propomos um sistema no qual terceiros (também conhecidos como tea Tasters) seriam capazes de revisar pacotes produzidos por mantenedores de pacotes e seriam economicamente incentivados a agir no melhor interesse da comunidade de software de código aberto e de seus usuários, reconhecendo comportamentos bons e penalizando os ruins.
Este sistema deve ser resistente a ataques Sybil e impedir que grandes detentores de tokens influenciem materialmente o protocolo ou a reputação de pacotes específicos.
Acreditamos que essa abordagem está mais alinhada com o código aberto, fornecendo um substrato mais fértil para promover adoção e confiança e, por fim, facilitar o crescimento do tea.

[^18]: Fonte: @arxiv

## Revisão de Pacotes por Terceiros

A revisão de pacotes por terceiros é um componente essencial na construção de reputação, no entanto, a revisão de terceiros possui seu próprio conjunto de ameaças exclusivas, incluindo os ataques Sybil mencionados anteriormente.

A tecnologia blockchain, e mais explicitamente o staking, oferece uma oportunidade única para o tea lidar com esse desafio.
Embora os endereços de carteira possam estar disponíveis em quantidades infinitas, esse não é o caso dos tokens tea, cujo fornecimento inicial é esperado para ser de 10 bilhões.
Além disso, cada ação realizada pelos desenvolvedores, como submeter pacotes, verificar pacotes ou infundi-los, contribuirá para sua reputação, criando assim um perfil único para cada desenvolvedor usar tanto para contribuir para a comunidade do tea quanto para participar da governança do tea.

Ao exigir que os revisores de terceiros infundam tokens tea e incorram no risco de perder uma parte dos tokens infundidos caso se comportem contra o interesse da rede ou sejam malfeitores, os terceiros podem fornecer credibilidade adicional a um pacote e receber uma recompensa na forma de tokens tea.

Também propomos estender o sistema de reputação para os terceiros que realizam a verificação independente de pacotes - os tea Tasters.
A conclusão de uma revisão positiva exigirá que duas operações ocorram de forma atômica:

* A submissão da revisão de código, assinada pelo tea Taster e acessível publicamente a todos os membros da comunidade, juntamente com
* O ato de infundir "para" o pacote (em vez de "contra" o pacote), para substantiar sua revisão.

A conclusão de uma revisão negativa que inclui uma ou mais vulnerabilidades críticas exigirá que os tea Tasters primeiro entrem em contato com o mantenedor do pacote usando um protocolo de mensagens para notificá-los da vulnerabilidade e permitir que eles abordem o problema de forma oportuna.
Após o vencimento do período definido pela governança atribuído ao mantenedor do pacote para abordar sua vulnerabilidade ou quando o pacote corrigido estiver disponível, o mesmo protocolo de mensagens será usado para notificar todos os usuários e testadores deste pacote (incluindo dependentes) que uma vulnerabilidade foi identificada,
e esperançosamente resolvida, para que saibam atualizar sua aplicação ou dependências.
Para desincentivar o desperdício de tempo dos desenvolvedores, a comunicação entre os tea Tasters e os mantenedores de pacotes exigirá que os tea Tasters infundam tokens tea.

Ao concluir ambas as operações, os tea Tasters receberão um NFT como prova de seu trabalho no pacote específico e na versão do pacote. O acúmulo de NFTs combinado com a taxa de infusão de cada um dos pacotes revisados e informações extraídas de sistemas externos informarão a reputação de um tea Taster.
Conforme sua reputação atinge marcos-chave, os tea Tasters podem ter acesso a partes elevadas do protocolo ou a recompensas aceleradas, conforme decidido pela governança do tea.

## Pacotes Desatualizados ou Corrompidos

A missão do tea é recompensar os contribuidores e participantes das comunidades de código aberto; no entanto, as recompensas devem ser proporcionais aos esforços empreendidos pelos mantenedores de pacotes e tea Tasters.
Pacotes mal mantidos, desatualizados ou corrompidos são indicações claras de que os mantenedores de pacotes não estão atendendo às expectativas da comunidade ou não estão cumprindo a confiança e o apoio depositados neles por meio da infusão de pacotes.
Outra manifestação de pacotes desatualizados pode ser o uso contínuo de uma linguagem antiga ou de uma versão antiga de linguagens multiversão.
Pacotes permanecendo desatualizados ou corrompidos por muito tempo indicam que os tea Tasters precisam revisar regular e consistentemente o trabalho dos mantenedores de pacotes.

Os tea Tasters são membros críticos das comunidades de código aberto, pois suas revisões e reivindicações associadas podem orientar os usuários de pacotes na direção ou para longe de pacotes.
Para garantir que as revisões possam ser confiáveis continuamente, propomos um mecanismo pelo qual pacotes desatualizados ou corrompidos possam ter uma parte de seus tokens infundidos enviados aos tea Tasters que foram os primeiros a reconhecer a falta de manutenção de qualquer pacote.

Qualquer revisão negativa que destaque uma falha, como uma vulnerabilidade zero-day ou o uso de uma dependência desatualizada e permaneça aberta após um período de carência definido pela governança, deve ser considerada uma falha por parte do mantenedor do pacote.
Eles não completaram a tarefa com a qual foram incumbidos e recompensados.
O mesmo vale para os apoiadores e patrocinadores do pacote que apostaram sua reputação no trabalho dos mantenedores de pacotes negligentes e receberam recompensas por isso, mas não identificaram a falta de manutenção ou optaram por continuar a apoiar o pacote, independentemente.

À medida que os pacotes ganham popularidade e uso, com mais aplicativos e sistemas potencialmente críticos dependendo deles, precisamos incentivar os desenvolvedores a relatar discreta e rapidamente falhas ao mantenedor do pacote e os mantenedores de pacotes a resolverem tais falhas antes que possam ser exploradas.
Consequentemente, propomos que qualquer pacote desatualizado ou corrompido que seja objeto de uma ou mais revisões negativas comprovadas e permaneça nesse estado após o período de carência definido pela governança tenha uma parte de seus tokens infundidos destruída, independentemente de sua origem (mantenedor do pacote, apoiadores e patrocinadores do pacote ou revisores anteriores de tea),
enquanto outra parte é enviada aos tea Tasters que enviaram as revisões negativas. A distribuição para todos os tea Tasters pode ser baseada na idade de suas revisões e na quantidade de tokens de tea que infundiram para suas revisões.

## Maintainer NFT

Após a submissão bem-sucedida de um pacote, o mantenedor do pacote receberá um NFT como prova de seu trabalho e contribuição.
O detentor deste NFT receberá automaticamente todas as recompensas associadas ao pacote.
Os mantenedores de pacotes podem transferir a propriedade da manutenção de um pacote para outro mantenedor de pacote simplesmente transferindo o NFT do pacote.
A transferência bem-sucedida do NFT levará o novo proprietário a receber automaticamente as futuras recompensas do pacote.

Uma parte importante da construção de reputação depende da frequência e quantidade de submissões de pacotes de qualidade.
O NFT entregue aos mantenedores de pacotes como evidência de seu trabalho pode ser usado pelo sistema de reputação para atualizar a reputação de um mantenedor de pacotes e dar a eles acesso a partes elevadas do protocolo, conforme decidido pela governança do tea.
No entanto, para prevenir vetores de ataque, como membros da comunidade comprando sua reputação, a transferência do NFT do mantenedor não resultará na transferência de reputação.
A reputação deve permanecer diretamente associada ao trabalho de um desenvolvedor específico e não pode ser transferida.

# Token tea

## Garantindo a Rede

Embora muitas blockchains possam parecer soluções de infraestrutura eficazes e seguras para apoiar os objetivos do tea, acreditamos que uma consideração cuidadosa deve ser dada à pilha de tecnologia sobre a qual o sistema tea é construído.

Escalabilidade, eficiência de custos, ESG e extensibilidade de terceiros são considerações importantes de design que um sistema de prova-de-participação soberano por meio do tea poderia melhor servir.
No modelo de prova-de-participação, os operadores de nós e os participantes da rede apostam valor econômico na forma do token nativo da cadeia para aumentar a segurança do sistema.
Os operadores de nós e os participantes da rede recebem recompensas pela produção bem-sucedida de blocos que estejam em conformidade com as regras da rede e incluam informações precisas de transações.
Inatividade (também conhecida como *node down*) ou atividade maliciosa/incorreta são penalizadas pela destruição de uma fração dos tokens apostados por meio de Slashing.

Um sistema de prova-de-participação alimentado pelo token tea permitirá que os detentores do token tea contribuam para a segurança do sistema apostando tea e apoiem os desenvolvedores de código aberto deixando tea.
Estamos totalmente cientes de que fatores econômicos podem impedir alguns desenvolvedores de apostar ou deixar tea; como tal, a aposta e o ato de deixar estarão disponíveis por tão pouco quanto uma folha, a menor denominação de tea, representando um centésimo de um bilionésimo ($10^{-8}$) de um tea.

Ambos os usos do token tea têm funções vitais no suporte e crescimento do ecossistema de código aberto.
O staking de tea garantirá que o sistema tea continue a operar de forma segura, para que todos os participantes da rede possam enviar e acessar pacotes para revisá-los, integrá-los em suas aplicações, etc.
Por outro lado, o ato de infusão tea apoiará o objetivo do tea de fornecer ferramentas para todos os participantes da rede apoiarem e usarem pacotes que atendam aos requisitos de qualidade e confiabilidade, conforme formulado pela comunidade tea por meio de seu apoio e objeção a cada pacote.
Será tomado cuidado ao definir e implementar os parâmetros de aposta e de deixar para que um não se torne parasitário do outro.

## Incentivos e Penalidades

Como discutido anteriormente, há fortes incentivos para malfeitores comprometerem o software de código aberto.
A maioria da infraestrutura crítica da internet está rodando em código aberto, e a corrida para encontrar exploits e outras vulnerabilidades está em curso.
No tea, acreditamos que os mantenedores de pacotes não devem ser culpados (embora muitas vezes o sejam).

Os incentivos do protocolo tea corrigem isso por meio de uma distribuição justa e equitativa de incentivos.
Um pacote como o Lodash, com mais de 151 mil dependentes, é um pilar do desenvolvimento de código aberto, e seu mantenedor merece ser recompensado proporcionalmente.
No entanto, um sistema de recompensa baseado unicamente no número de dependentes impediria inovadores de interromper esses monopólios, a menos que sejam financiados suficientemente por terceiros ou já tenham acumulado recursos suficientes para se autofinanciar.
Essa abordagem provavelmente levaria a uma redução no número de contribuintes, resultando no oposto do que o tea pretende.

O objetivo do tea é representar o valor do software de código aberto e, ao fazê-lo, promover seu crescimento capacitando seus participantes com os recursos necessários para perseguir sua paixão sem obstáculos.
O sistema de distribuição de incentivos do tea precisa considerar cuidadosamente a taxa de "deixar" de cada pacote e ajustar os incentivos de cada pacote de acordo.
Para reduzir o risco de um pequeno número de pacotes, usados como dependências em muitos aplicativos, coletarem a maioria das recompensas de "deixar", vamos aproveitar a pesquisa produzida pela Fundação Web3[^19] para o mecanismo de recompensas baseado em prova-de-participação do Polkadot.
Podemos ajustar ainda mais a implementação e suas variáveis com base nos resultados de experimentos práticos.

À medida que um pacote se aproxima de uma taxa de "infusão" ideal definida pela governança, sua proporção de recompensas de "infusão" diminuirá progressivamente.
Quando um pacote excede sua taxa de "infusão" ideal, a proporção de recompensas de "infusão" diminuirá acentuadamente para desincentivar os apoiadores do pacote e os tasters de deixar ainda mais pacotes altamente infundidos.
Esse design poderia tornar pacotes com menos infusão mais atraentes tanto para apoiadores quanto para tasters.
Também pode incentivar desenvolvedores experientes a criar alternativas para pacotes altamente infundidos, criando uma oportunidade para a comunidade tea equilibrar o suporte ao software existente e promover a inovação.
A taxa de "infusão" será calculada usando o suprimento circulante em seu design inicial.
A comunidade tea pode alterar esse design para aprimorar ainda mais a escalabilidade do sistema.
Seja $\chi$ a taxa de "deixar" em todos os pacotes.
Ela representa o número total de tokens de tea infundidos pelos mantenedores de pacotes, usuários de pacotes, apoiadores e patrocinadores de pacotes, e tasters de tea dividido pelo suprimento total de tokens de tea.
Dado quantos pacotes de código aberto estão disponíveis hoje e seu crescimento esperado, $\chi$ será sempre um valor muito pequeno entre $0$ e $1$.

Considere $\psi$ como a taxa de staking.
Ela representa o número total de tokens de ea apostados por qualquer participante da rede para garantir a segurança da rede.

Considere $\chi_{ideal}$ como a taxa de infusão que gostaríamos que cada pacote alcançasse para uma distribuição justa de recompensas entre todos os pacotes e suas dependências.
O valor de $\chi_{ideal}$ deve ser atualizado à medida que novos pacotes são adicionados ao registro descentralizado e dependências são criadas.
Para determinar o melhor valor para $\chi_{ideal}$, usaremos uma curva de popularidade atualizada no início de cada ciclo de recompensas.

Considere $\tau = \tau(\chi)$ como a taxa de juros anual de infusão distribuída a todos os membros da comunidade de tea que infundem tokens de tea para apoiar desenvolvedores de código aberto.
Em outras palavras, $\tau(\chi)$ corresponde à recompensa de infusão recebida ao longo de um ano por um membro da comunidade que infunde tokens de tea durante todo o ano.

Considere $\gamma = \gamma(\psi)$ como a taxa de juros anual de staking distribuída a todos os operadores de *nodes* e participantes da rede que apostam tokens de tea para garantir a rede.
Em outras palavras, $\gamma(\psi)$ corresponde à recompensa de staking recebida ao longo de um ano por um membro da comunidade que aposta tokens de tea durante todo o ano.

Considere $\delta$ como a inflação anual direcionada ao tesouro da rede.
$\delta$ pode variar à medida que fatores externos afetam o fornecimento de tokens.

Consideramos a taxa de recompensa anual de infusão como uma função de $\chi$ e a taxa de recompensa anual de staking como uma função de $\psi$.

* $\tau(\chi)$ corresponde ao incentivo para as pessoas infundirem um pacote.
Conforme $\chi$ aumenta, são necessárias menos recompensas $\tau(\chi)$.
* $\gamma(\psi)$ corresponde ao incentivo para as pessoas apostarem na rede.
Conforme $\psi$ aumenta, são necessárias menos recompensas $\gamma(\psi)$ para garantir a rede

A inflação anual $I$ será equivalente a $(\tau + \gamma + \delta)$ e calculada da seguinte forma

$$
I = \frac{\textrm{oferta de tokens no final do ano} - \textrm{oferta de tokens no início do ano}}{\textrm{oferta de tokens no início do ano}} = (\tau + \gamma + \delta)
$$

A contribuição para a inflação de $\tau_{\textsc{all}}$ (incentivo distribuído a todos os infusores de pacotes) e $\gamma_{\textsc{all}}$ (incentivo distribuído entre todos os contribuidores para a segurança da rede) deve ser ponderada para garantir que o sistema incentive a proporção ideal de infusão/aposta.

Enquanto focamos nos incentivos distribuídos a todos os infusores de pacotes, determinamos que
$\tau_{\textsc{all}}$
é uma função da taxa de infusão $\chi$ e, portanto,
$\tau_{\textsc{all}}(\chi) = \chi \cdot \tau(\chi)$.
A partir de nossa análise anterior, podemos ver que
$\tau_{\textsc{all}}(\chi_{ideal}) = \chi_{ideal} \cdot \tau_{ideal}$.
Uma vez que o objetivo é atingir um estado onde
$\chi = \chi_{ideal}$
, as recompensas
$\tau_{ideal}(\chi)$
devem ser máximas nesse valor.

Considere $\tau_{ideal} = \tau(\chi_{ideal})$
como a taxa de recompensa entregue pela rede no cenário ideal onde
$\chi = \chi_{ideal}$.

Considere $\tau_{0}$ como o limite de $\tau_{\textsc{all}}(\chi)$ quando $\chi$ tende a zero, quando nenhum membro da comunidade de tea infunde pacotes.
O valor de $\tau_{0}$ deve ser próximo de zero, mas não zero, para incentivar os primeiros adotantes.
Conforme sugerido pela pesquisa da Web3 Foundation, propomos que:

* a função de inflação cresça linearmente entre $\chi = 0$ e $\chi = \chi_{ideal}$, e
* decaia exponencialmente entre $\chi = \chi_{ideal}$ e $\chi = 1$.

Escolhemos um decaimento exponencial semelhante para $\tau_{\textsc{all}}(\chi)$ porque implica um decaimento exponencial de $\tau(\chi)$, e queremos que as recompensas caiam abruptamente além de $\chi_{ideal}$ para evitar que um único pacote receba todas as recompensas.

O decaimento é definido para que a taxa de inflação diminua no máximo em 50% quando $\chi$ se desloca $d$ unidades à direita de $\chi_{ideal}$ – ou seja,
$\tau_{\textsc{all}}(\chi_{ideal} + d) \geq \tau_{\textsc{all}} \cdot 0.5$.

Propomos as seguintes funções de taxa de juros e inflação, que dependem dos parâmetros $\chi_{ideal}$, $\tau_{ideal}$, $\tau_{0}$ e $d$.

\begin{align*}
&\tau_{\textsc{all}}(\chi) = \tau_{0} + (\tau_{\textsc{all}}(\chi_{ideal}) - \tau_{0})\frac{\chi}{\chi_{ideal}}\enspace\textrm{for}\;0 < \chi \leq \chi_{ideal} \\
&\tau_{\textsc{all}}(\chi) = \tau_{0} + (\tau_{\textsc{all}}(\chi_{ideal}) - \tau_{0}) \cdot 2^{(\chi_{ideal}-\chi)/d}\enspace\textrm{for}\;\chi_{ideal} < \chi \leq 1
\end{align*}

Assim como os benfeitores precisam ser recompensados, os malfeitores precisam ser identificados e penalizados.
O software de código aberto oferece muitas oportunidades para malfeitores criarem pontos de dor e riscos reputacionais para toda uma comunidade de desenvolvedores.
Desde a apropriação indébita de trabalho até a alteração e redistribuição de pacotes de software, ou a inserção de código malicioso, a guerra entre bons e malfeitores continua, muitas vezes com malfeitores bem financiados que veem a contaminação de pacotes de código aberto como uma oportunidade de lucrar financeiramente.
As consequências têm sido relativamente mínimas, com pacotes potencialmente banidos das prateleiras digitais ou sujeitos a uma má reputação.

Propomos a introdução de um mecanismo de corte para estabelecer uma desvantagem mais significativa que afete diretamente o valor econômico dos malfeitores.
Conforme os tea tasters avaliam e analisam o código nos pacotes recém-submetidos, sugerimos que recebam ferramentas e incentivos para identificar e destacar códigos maliciosos, de forma que os usuários dos pacotes possam ser alertados sobre os riscos, e os mantenedores do pacote, apoiadores do pacote e patrocinadores sejam penalizados por submeter ou apoiar código malicioso.
Nesse sentido, para todas as avaliações negativas evidenciadas conforme as regras da rede e que foram tratadas pelo mantenedor do pacote dentro do período definido pelo governo, o mantenedor do pacote não deve incorrer em nenhuma penalidade contrária aos apoiadores do pacote e patrocinadores, ou dos tea tasters que forneceram uma avaliação positiva do pacote em questão.
Para avaliações negativas realizadas de acordo com as regras da rede e que o mantenedor do pacote não tenha abordado dentro do período definido pela governança, uma fração dos tokens infundidos pelo mantenedor do pacote, pelos apoiadores do pacote e patrocinadores, e pelos tea tasters anteriores será cortada.
Outra fração será bloqueada em um pool de seguro controlado pela governança do tea.
A governança do tea estabelecerá políticas e regras em estreita colaboração com a comunidade para distribuir o conteúdo do pool para aqueles afetados por vulnerabilidades.
O protocolo distribuirá uma terceira fração dos tokens infundidos entre todos os tea tasters que contribuíram para a avaliação negativa e infundiram "contra" o pacote, com base no número de tokens de tea que infundiram "contra" o pacote e quanto tempo esses tokens foram infundidos.
Em outras palavras, quanto mais cedo um ou mais tea tasters identificarem e relatarem a falha de acordo com as regras da rede, maior será a recompensa que receberão por apoiar o desenvolvimento de código aberto seguro e produtivo.

Para evitar que os membros da comunidade votem aleatoriamente "contra" pacotes altamente infundidos na esperança de receber a maioria de qualquer penalidade, todos os tokens de tea infundidos "contra" não serão recompensados com inflação e podem estar sujeitos a um mecanismo de decaimento, reduzindo assim seu valor ao longo do tempo.

[^19]: Fonte: @web3


# Governança

A governança é fundamental para o desenvolvimento, sustentabilidade e adoção de qualquer sistema distribuído.

Propomos que o tea inclua uma governança on-chain, onde todos os detentores de tokens de tea possam sugerir e votar em mudanças nos parâmetros críticos ponderados pela posse de tokens e reputação.
Esses parâmetros podem incluir inflação, taxas de transação, recompensas de staking, recompensas de infusão ou a proporção ideal de infusão. 
Essa funcionalidade garantirá que os parâmetros críticos possam evoluir e ser otimizados ao longo do tempo pelos membros da comunidade de tea.
Antecipamos que a governança será lançada com uma estrutura simples e se expandirá progressivamente à medida que o sistema tea amadureça, facilitando a adoção e garantindo uma descentralização progressiva.

Alguns parâmetros do sistema podem não estar sujeitos à governança ou apoiar mudanças de alta frequência para reduzir a superfície de ataque representada pela governança.
Uma transição progressiva dos parâmetros para uma governança aberta e descentralizada garantirá a estabilidade e previsibilidade do sistema.


# Extensibilidade de Terceiros

Enquanto construímos as ferramentas iniciais para impulsionar o suporte há muito esperado das comunidades de código aberto, acreditamos que parte de nossa missão é garantir que terceiros possam expandir o conjunto de ferramentas como um todo.
Além de fornecer a infraestrutura para os desenvolvedores criarem extensões para o protocolo, incluindo novas formas de inovar e ampliar o apoio aos desenvolvedores de código aberto, nossos planos incluem o potencial para outros gerenciadores de pacotes contribuírem para o protocolo.
Os sonhos e esforços dos desenvolvedores de código aberto impulsionaram a inovação que sustenta nossa vida cotidiana.
Estamos ansiosos para descobrir os novos usos e extensões para o tea propostos pela comunidade tea.


# Trabalho Futuro e Possíveis Esforços Comunitários

À medida que o sistema tea amadurece, prevemos que a comunidade decida e contribua para alterações e extensões do sistema tea por meio da governança.
Abaixo estão algumas ideias que acreditamos que possam inspirar alguns.

## Atacadistas de tea

As comunidades de software de código aberto são vibrantes e estão sempre em busca de inovação e entrega de valor.
Esta dedicação e altruísmo levam à constante construção de novos softwares e pacotes, cada um puxando dependências. Como resultado, antecipamos que o mapa de dependências evolua constantemente, levando a mudanças frequentes na proporção de infusão e recompensas.
No futuro, a comunidade tea pode propor o desenvolvimento de um sistema projetado para monitorar dinamicamente a proporção de infusão para cada pacote e reequilibrar como os apoiadores de pacotes infundem seus tokens com base em seus próprios critérios.

## Royalties em Transferência de Pacotes

Reconhecemos que os mantenedores de pacotes podem decidir transferir sua fonte de recompensas de infusão para um ou mais desenvolvedores.
A governança dessa transferência deve permanecer na decisão do mantenedor do pacote e de seus parceiros, sem interferência do tea.
Ferramentas serão necessárias para que essa transferência seja total ou parcial (talvez através de apenas uma parte das recompensas de infusão sendo redirecionada para um ou mais desenvolvedores, enquanto as recompensas restantes continuam a fluir para o mantenedor original do pacote)
e para que as recompensas de infusão fluam por meio de uma única conta controlada por um único participante da rede, vários participantes da rede ou sejam distribuídas automaticamente entre várias contas usando proporções estáticas ou dinâmicas.

## Distribuição de Recompensas entre Múltiplos Mantenedores

A manutenção de um pacote pode depender do trabalho de uma ou mais equipes de desenvolvedores.
Antes que as recompensas de infusão comecem a fluir, as equipes devem considerar automatizar a distribuição das recompensas de infusão entre si.
Como a distribuição ocorre deve ser decidido pelos mantenedores, já que estão na melhor posição para avaliar quem contribuiu e como devem ser recompensados.
Para realizar isso, cada equipe (ou equipes) poderia criar sua própria organização autônoma descentralizada (DAO) e automatizar a distribuição de recompensas ou implementar sistemas mais complexos para determinar a distribuição adequada de recompensas com base em fatores externos, como um voto de todos os membros da DAO, ou distribuições baseadas no tempo com base em contribuições contínuas, conclusão bem-sucedida de recompensas, etc.

## Tratamento de "Forks" de Pacotes

Acreditamos que "forks" são essenciais e amplamente subutilizados.
"Forks" podem ser uma ferramenta eficaz para desenvolver pacotes que competem em funcionalidade, desempenho, segurança e até mesmo atenção.
Por mais úteis que possam ser, os "forks" devem reconhecer os esforços originais.
Por meio de trabalho futuro ou contribuições potenciais, a comunidade tea pode aprimorar o sistema para exigir que os "forks" sejam declarados, talvez até detectados quando um pacote é submetido.
"Forks" não declarados revelados por tea tasters podem resultar em uma parte dos tokens infundidos sendo cortados, transferidos para o mantenedor original do pacote e enviados aos tea tasters que revelaram o "fork"

## Dependências de Tempo de Compilação vs. Dependências de Tempo de Execução

O tea pode não distinguir as dependências de tempo de compilação das dependências de tempo de execução ao distribuir recompensas de infusão no lançamento.
No entanto, desde que a comunidade tea sinta fortemente a necessidade de fazer essa distinção, a comunidade tea pode propor melhorias ao algoritmo de distribuição de recompensas de infusão para considerar a criticidade de cada dependência e sua contribuição para o valor dos pacotes que dependem delas.
Essas propostas seriam votadas e implementadas com base na decisão da comunidade.

## Remuneração Baseada em Uso

À medida que mais aplicações são construídas usando pacotes registrados com o tea, a comunidade pode aprimorar o algoritmo de recompensa para que a alocação possa ser influenciada por conjuntos de dados externos atestados, como o uso.
Essa atualização do mecanismo de recompensas poderia permitir uma alocação maior de recompensas em tokens de tea para pacotes com o maior uso, ao mesmo tempo em que respeita as restrições da proporção de infusão descritas na seção de tokens de tea.
Os mantenedores de pacotes poderiam usar uma abordagem semelhante para distribuir recompensas de infusão entre suas dependências com base na lógica transparente de sua escolha.
Observe que todas as informações usadas para afetar a distribuição de recompensas entre pacotes e dependências no sistema tea precisarão ser comprovadamente confiáveis.


# Agradecimentos

Este white paper não existiria sem o apoio e dedicação de muitos entusiastas do tea.
Os autores gostariam de agradecer a Josh Kruger, Jadid Khan e Jacob Heider por sua contribuição para a economia dos tokens e aos muitos indivíduos discretos que voluntariamente dedicaram seu tempo para fornecer feedback sobre o conteúdo deste documento.

$\parskip=0pt plus 1pt$

# Glossário de Termos

| Termo | Definição |
|------|------------|
| Folha | A menor denominação do token de tea. Uma folha corresponde a uma centésima milionésima ($10^{-8}$) parte de um tea. |
| Slashing | A ação de penalizar infusores ou stakers em resposta a comportamentos contrários às regras da rede. |
| Staking | A ação de travar tokens de tea para garantir a rede de prova-de-participação na qual o sistema de tea é construído. |
| Infusão | A ação de travar tokens de tea para apoiar sua reivindicação e receber recompensas (ou penalidades) com base no consenso sobre a validade de sua reivindicação. |


# Referências
