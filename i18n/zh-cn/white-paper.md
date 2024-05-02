---
说明: 版本 2.1.0
---

# 白皮书

## 一个去中心化的协议，让开源开发者捕捉他们创造的价值

* Max Howell
* Thomas Borrel
* Timothy Lewis
* Troy Wong

## 摘要

一个开源开发者可以根据其贡献获得相应奖励的系统将提高软件供应链的可持续性和完整性。
通过制定一项权力下放计划，结合名誉和激励措施，可以促进累积价值回报等开源开发者对未来公共效益数据库的维护，从而推动创新和增长开源生态系统内部。
包维护者将注册他们的项目到一个由容忍拜占庭式错误的区块链驱动注册表中。该协议采用独特的“贡献测试”算法来确定每个项目对系统可用性和健康状态的贡献与影响。
登记领取赏金项目协议TEA适配于相应贡献，并通过stake投保者、受益声誉系统等项目选择使社区治理开源生态系统地域化，无论外部议程如何。
该协议鼓励参与者维护开源，并允许注册项目并遵守网络规则以获取奖励，并为自身及所属项目建立声誉做出贡献。
如果发现安全或开发问题，开发人员可能会针对该包提出有证据支持的声明，并可能引起斜杠事件。
成员可以检查包装品质问题，协议可通过执行相应斜杠事件来响应这些检查。

## 免责声明

本技术文件中提供的信息为初步资料。因此，无论作者与会员是否承担责任最终使得这里的资料正确性，每一位前任推开，在适用法律允许的最大范围内，所有责任均将由其自行承担，无论是侵权、合同或其他方式都与该技术文件有关。本技术文件及其中包含的内容不构成或应被视为与任何类型合同或承诺相关，也不作为订立任何类型合同或承诺的诱因。

本技术文档中的任何内容均不构成对此处讨论代币的出售要约或购买要约。在任何情况下，如果将此技术文件视为故意提供或请求、建议或传播该技术文件在任何管辖范围内，都是非法行为，因为这可能需要申请执照、注册或受限地区的投标申请。特别是针对每个代币进行讨论时，请注意此技术文件没有日期，并且不打算根据证券法律进行注册或类似法律管辖权，无论这些代币是否被视为具有价值或类似工具并在任何管辖范围内提供或销售，这样做都将违反相关法律规定。除非您准备承担全部购买价格的风险，请勿购买任何代币。这种购买属于高风险操作，如遇问题，则可能无法获得保护。

## 许可证

本文档在以下许可下可用[Creative Commons Attribution-ShareAlike 4.0 International license](https://creativecommons.org/licenses/by-sa/4.0/).

## 前言

现代互联网主要由开源项目构建，这一情况从一开始就存在。开源项目通过全球开发者社区的协作开发和维护，其源代码库被作为公共产品可供任何人使用。在过去80年中（被普遍认为是自由和开放源码软件的先驱，始于1953年），创新精神已经将开源软件从利基技术爱好者转变为广泛应用的基础设施。尽管开源软件至关重要，但那些创建和维护源代码库作为公共服务的开发者并没有因其作为创新者和维护者所做出的巨大贡献而获得相应奖励。

企业软件已经成为一个价值数十亿美元的产业，它是建立在开源基础之上的。然而，对于无私地维护自身基础设施的个人来说，几乎没有任何价值积累。尽管开源软件已经创造了巨额利润，但其主要作为一种公共服务被创建和维护，并且缺乏可行的方式让开发人员捕获他们所创造的价值。

我们认为，仅依靠世界上一小部分工程师出于利他主义而维持开源软件，限制了现代互联网的潜力。开源是一项充满热情的工作，但常因缺乏对主要维护者的重大激励而受到阻碍。开源开发人员必须在提供体面薪酬的日常工作和维护企业软件之间做出选择。缺乏激励将导致真正有价值的项目无法实现其潜力，同时其他项目也会因在软件生命周期中缺乏维护而遭受安全问题。为了充分发挥整个开源社区的潜力，我们需要一种全民参与评估项目“公平价值”的方法，并确保开源开发者能够捕获创造价值并促进资本流入该社区的基本原则不改变如何发展和使用开源。



公司常采用开源商业模式，直接从善意开发人员的工作中获得收入，并依赖他们在出现错误时进行纠正。开放源码库为企业提供即插即用的核心功能；然而，软件漏洞可能给基于开源构建的应用程序带来巨大风险。一个很好的例子是最近发生的涉及Log4j的重大安全漏洞的事件，Log4j是一个来自 [Apache软件基金会](https://www.apache.org/) 的包，在企业和政府使用的许多商业软件和服务中都发现了它。2021年11月，一名为[阿里巴巴集团控股有限公司](https://www.alibabagroup.com/)工作的安全研究员报告了一个漏洞[CVE-2021-44228](https://nvd.nist.gov/vuln/detail/CVE-2021-44228)，该漏洞获得了Apache软件基金会可能的最高分。 [Tenable](https://www.tenable.com/) 首席执行官兼美国计算机应急响应小组(US-CERT)创始主任阿米特·约兰(Amit Yoran)将此漏洞描述为“[过去十年中最大、最关键的一个漏洞](https://www.reuters.com/article/usa-cyber-vulnerability-idCNL1N2SY2PA)”。
恐慌随之而来，维护这一方案的少数志愿者因失败而受到公开抨击。在以谦逊的公平请求解决了愤怒之后，系统得到了修补。企业和政府最终意识到，Log4j这个被广泛的关键系统使用了20年的软件包，是由一些没有报酬的志愿者维护的，这些无名英雄不顾[行业的滥用](https://twitter.com/yazicivo/status/1469349956880408583)挺身而出，不知疲倦地努力解决漏洞。

遗憾的是，Log4j远不是唯一的例子。core-js作为每个Node.js应用程序的基础，每周下载量为3000万次，但它也几乎没有资金，这可能迫使它的主要维护者离开项目，甚至将[许可证更改为闭源](https://www.thestack.technology/core-js-maintainer-denis-pusharev-license-broke-angry/)。最近，几名比特币核心开发者辞职，理由之一是他们的决定得不到经济补偿。

<figure><img src=".gitbook/assets/xkcd-dependency (1).png" alt=""><figcaption><p>Figura 1 - Dependencia - Fuente:<a href="https://xkcd.com/2347/">https://xkcd.com/2347/</a></p></figcaption></figure>

人们曾多次尝试提供激励机制，通常包括赞助和赏金制度。赞助使得开源的消费者可以向他们喜欢的项目捐款。然而，如果把开源想象成一座砖塔，底层早已被遗忘，但仍然由敬业的工程师维护，并被更多的开发人员所依赖。只有在塔顶的项目通常是已知的，并得到赞助。这种有偏见的选择导致支撑塔楼的基本砖块没有吸引到任何捐赠，而最受欢迎的砖块则得到更多。同样，只奖励最喜欢的人。

在茶会上，我们看到太多的开源项目在支持开源社区的尝试中失败了，我们的使命是通过允许开源开发者获取他们创造的价值来增强软件供应链的可持续性和完整性。

在本文中，我们提出了茶——一个去中心化的系统：

1. 计算并为与整个生态系统相关的每个开源项目分配一个“[贡献证明](white-paper.md#proof-of-contribution)”。
2. 确保开源软件项目得到良好维护。
3. 通过在茶叶登记的每一项中实施茶叶奖励算法，为开源开发者提供与生态系统范围内的贡献相称的公平奖励。
4. 鼓励网络参与者遵循负责任的漏洞和漏洞披露实践。

## 组件

构建应用程序的软件开发人员需要四样东西:浏览器、终端、编辑器和包管理器。在这四种工具中，包管理器控制开发人员构建产品所需的工具和框架。在这一层，我们看到了改变开源保护和奖励方式的潜力。

### 包管理器

包管理器知道软件包或应用程序的功能依赖于什么开源软件，从塔顶到塔底。每个项目，连同每个打包的版本，都一丝不苟地记录了所有基本组件及其相应的版本。

它知道塔顶仔细地选择了它的依赖，这种仔细的选择继续向下。包管理器被独特地放置在开发人员工具栈中，以支持基于实际贡献的自动化和精确的值分发。

我们提出了一个不可变的去中心化注册表，旨在基于 tea 协议独特的“贡献证明”(Proof of Contribution)来分配价值，这是一种确定每个项目对系统效用和健康的贡献和影响的算法。值可以在顶点(例如基本库)进入图，并递归地分发到这些包的依赖项及其依赖项，因为注册中心知道整个开源图。

此外，我们认为协议的贡献证明提供的信息必须可供开发人员评估他们是否可以信任项目及其作者。这些信息可能基于声誉，社区荣誉，从分散身份(“[DID](https://www.w3.org/TR/did-core/)”)系统检索的数据，其他包管理器或激励机制，这些机制可能依赖于网络参与者将价值置于风险之中。

我们预测，tea 的工具、信息和奖励组合将公正地激励开发人员，帮助确保软件供应链的安全，刺激开源软件的增长，并促进创新。

### 去中心化注册

每个包管理器都有自己的包注册表，重复复制相同的元数据。在某些情况下，该注册表可能包含[与项目清单不同的信息](https://www.bleepingcomputer.com/news/security/npm-ecosystem-at-risk-from-manifest-confusion-attacks/)，从而允许不良行为者在用户不知情的情况下潜在地注入恶意代码。现在是时候有一个单一的、全面的、明确的登记处，由依赖它的社区设计和管理。这种分散的、不可变的注册表可以提供安全性、稳定性和防止恶意意图。

互联网运行在成千上万个重要的开源组件上。值得注意的是，到目前为止，由于移除重要的开源基础设施而引起的事件已经很少了。最著名的是在2016年[删除了NPM的左键依赖](https://www.theregister.com/2016/03/23/npm\_left\_pad\_chaos/)，它会导致持续集成和持续部署系统，让开发人员陷入困境。这一事件表明，互联网本身是建立在脆弱的发展系统之上的。其他例子包括包维护者主动或故意参与破坏他们的流行包(参见[colors.js和fakers .js](https://fossa.com/blog/npm-packages-colors-faker-corrupted/)，以及 [node-ipc](https://www.lunasec.io/docs/blog/node-ipc-protestware/))，或者恶意行为者通过假装帮助维护包并破坏它们来窃取，例如，比特币私钥(参见[event-stream](https://github.com/dominictarr/event-stream/issues/116))，或者故意拼写错误的恶意包，也称为“[typposquatting](https://en.wikipedia.org/wiki/Typosquatting)”，希望欺骗用户安装它们。例如[跨环境与跨环境的NPM包](https://blog.npmjs.org/post/163723642530/crossenv-malware-on-the-npm-registry.html)。

随着行业朝着数字资产成为软件一部分的未来发展，软件的完整性需要得到保证。我们不能继续让自己容易受到恶意行为者修改软件的攻击。

我们称为包管理器的大多数工具不能保证这些内置于应用程序和dapp中的包是由其原作者发布的未经修改的开源代码。[微软的 GitHub 发现软件中有 17% 的漏洞是出于恶意目的而植入的](https://www.zdnet.com/article/open-source-software-how-many-bugs-are-hidden-there-on-purpose/)，有些漏洞在很长一段时间内未被发现(参见[Webmin 1.890](https://threatpost.com/backdoor-found-in-utility-for-linux/147581/))。

一个由声誉系统增强的全球去中心化注册，并由旨在揭露坏人和奖励好人的激励机制支持，可能会为开发人员社区提供一直在寻找的保证，以确保软件供应链的安全。

### 存储系统

开源项目提供了广泛的功能，其中一些可能是受限的或不需要的。加密就是一个很好的例子。加密的一个关键用例是支持全球范围内的个人隐私。然而，加密也可以用于邪恶目的(参见[幻影安全](https://www.fbi.gov/news/stories/phantom-secure-takedown-031618)，执法机构于2018年3月拆除)或可能被破坏以支持执法活动(参见[运行Ironside(法新社)，运行绿光(欧洲刑警组织)和运行特洛伊盾(FBI)](https://www.europol.europa.eu/media-press/newsroom/news/800-criminals-arrested-in-biggest-ever-law-enforcement-operation-against-encrypted-communication)，其中FBI操作“加密”通信平台AN0M，并说服犯罪分子使用“加密”手机进行安全通信)。

加密的广泛应用使其成为开源软件的完美用例，也是一个很好的例子，说明任何存储软件包的解决方案都必须是防篡改和抗审查的。Tea 是一个去中心化的协议，它不打算根据包的功能来过滤或制裁包。虽然 tea 治理可以选择删除经过验证的恶意包(有关更多信息，请参阅[治理部分](white-paper.md#governance))，但对于 tea 系统来说，连接多个存储系统是至关重要的，包括证明包未被更改并正确复制的分散存储系统。包维护者可以选择最适合他们安全存储和分发包的存储系统。


## 协议概述

设计一个奖励开源贡献的协议是一个艰巨的挑战。开源软件是普遍可访问的，但容易受到错误归属、挪用和恶意篡改的影响。然而，开源社区始终如一地表明，它愿意突出好的参与者，揭露坏的参与者。从历史上看，花费在审查和评论其他开发人员的贡献上的精力是严格自愿的，尽管报告和捍卫发现可能是多么耗时和关键。

我们打算创建一个由声誉和激励保护的去中心化协议，通过允许开源开发者以一种无需信任的方式获取他们创造的价值，从而增强软件供应链的可持续性和完整性。我们相信，如果没有声誉系统和社区成员交流他们的发现和对项目或开发人员工作的支持(或异议)的能力，对开源贡献的充分奖励就不可能成功。此外，我们必须为开发人员提供工具来访问和贡献这个声誉系统。这些工具包括对项目中所有依赖项的版本和声誉的简单可视化和可编程访问。

社区成员为支持每个项目而投入的 TEA 代币的透明度提高了每个项目的声誉，就像一个包维护者在自己的工作中投入的代币数量表明了他们对项目的承诺一样。这些综合数据点将有助于告知所有社区成员的声誉系统，并促进选择。由于[事件流包攻击](https://medium.com/intrinsic-blog/compromised-npm-package-event-stream-d47d08605502)不是通过包本身进行的，而是通过它的一个依赖项进行的，因此跨所有依赖项层的可见性对于构建这个无需信任的系统至关重要。然而，在设计和构建系统时，需要优先考虑计算和交易(“gas”)成本。

我们的目标是同时奖励 web2.0 和 web3 开发人员。每个堆栈的复杂性和特殊性使得跟踪软件包的安装很容易成为一个或多个不良行为者的牺牲品。这包括“购买”设备以人为地夸大数字。更糟糕的情况是，通过与许可密钥或其他部署跟踪机制产生不必要的摩擦，对开源软件的本质进行根本性的改变。为了提供最广泛的覆盖范围，我们认为奖励不应依赖于跟踪安装的简单概念，而应依赖于鼓励提交优质包和报告恶意或高风险包的激励机制。最后，许多包依赖于共同的依赖项。例如，[lodash](https://www.npmjs.com/package/lodash)有 176,308 个开源依赖项，而[chalk](https://www.npmjs.com/package/chalk)有 100,247 个依赖项，或[log4js](https://www.npmjs.com/package/log4js/)有 3,809 个依赖项。当使用相同的依赖项创建更多的包时，我们如何确保奖励公平地分配?我们如何确保最常用的依赖项得到奖励，而不会饿死新的或新兴的软件包和开发人员?我们如何确保激励系统不会最终引导开发人员远离利基语言，而将他们集中到激励更好的地方?但是，作为开发人员，我们如何识别最依赖的包来构建替代品——这些包的更精简、更高效、编码更好的版本?

在茶，我们认为缺乏可见性和激励阻碍了开源软件的发展。在适当的激励和奖励的支持下，更多的开发人员将能够构建、改进和扩大开源软件，以改善世界。

### 贡献证明

在本白皮书中，我们提出了“贡献证明”，这是一种新的共识机制，旨在量化所有开源系统中所有项目的影响。

贡献证明根据每个开源项目内部的方向以及长期以来更广泛的开源生态系统的利用率，分配一个动态分数，称为项目的 teaRank。

我们相信，这种方法有利于远离应用层的基础软件(应用层往往是公众最可见的层，吸引了大部分的兴趣)，并扩展了奖励机制，以确保项目的所有组件——从树的顶部，一直到它的基础——都因他们的贡献而得到奖励。

为了计算每个项目的分数，teaRank 建立在[Google的PageRank](https://en.wikipedia.org/wiki/PageRank)算法奠定的基础上。谷歌的 PageRank 是搜索产品的定义组件，建立在网页的图形结构上。PageRank 的核心是一种概率分布算法，它将分数分配给图中的节点，表示任何随机导航到图中特定节点的可能性。这种算法在类似图的数据结构中特别有效，比如互联网，因为它根据边(链接)的数量和质量来量化每个节点(或网页)的影响。随着时间的推移，该算法被修改，以更好地识别网络的拓扑结构，并识别网页之间的欺诈链接，从而减轻各种攻击。

由于互联网的图形结构和茶协议的去中心化注册表有着惊人的相似之处，PageRank 最初似乎是一种很有前途的分析方法。然而，经过进一步的实验，PageRank 的反垃圾邮件策略显然在应用于开源时效果不佳。

关键的区别在于开源软件的元数据。与网页不同，大多数开源包元数据，如代码行和提交消息，都是用户生成的，容易受到欺骗。包管理器很容易受到垃圾邮件活动的攻击，其中恶意行为者向注册表发送包含网络钓鱼链接或其他有害内容的包。包管理器注册表也可能不准确地反映特定项目的依赖关系。这个被称为“[明显混淆](https://www.bleepingcomputer.com/news/security/npm-ecosystem-at-risk-from-manifest-confusion-attacks/)”的问题可能会允许恶意行为者注入恶意代码或人为地夸大第三方依赖的影响，通常是出于恶意目的。

识别和处理这些垃圾邮件包的艰巨任务通常落在安全公司或无私的个人身上，两者都没有提供一个可扩展的解决方案来对抗开源的垃圾邮件攻击。

贡献证明是一种算法，专门用于识别和隔离垃圾邮件包，并确保只有有影响力的项目才能获得公平的奖励。贡献证明算法的细节将是专门技术论文的主题。

### 网络参与者

在本白皮书中，我们通过参与者的贡献来区分他们。有些人可能会贡献代码或验证所贡献的代码。其他人可能会支持开发者和他们的声誉。

#### 包维护者

Tea 假设包创建者维护他们的工作。在本白皮书中，我们将把他们称为“包维护者”。

软件包维护者必须确保他们的软件随着行业的发展而不断地交付越来越多的价值。他们是开源社区的支柱，他们的持续贡献需要得到授权和奖励。然而，包维护者可能决定停止他们的维护工作，或者意识到他们不能以符合项目用户期望的速度运行。为了确保连续性，他们必须有能力将项目的控制权转移给另一个开发人员或开发人员组，从而任命他们为维护者，并授予他们对与项目相关的现有和未来奖励的所有权和控制权。

似地，开发人员可能决定承担包维护者的角色，通过将现有项目分叉并注册一个他们将继续维护的新项目，从而成为包维护者。一旦注册，其teaRank超过治理定义阈值的项目开始通过协议的贡献证明算法从tea协议获得奖励，与遗留分叉项目并行。随着开源社区从遗留项目转向更新的迭代，贡献证明算法将逐渐减少分配给遗留项目的奖励，同时增加分配给新分叉项目的奖励。

必须为开发人员社区提供正确的工具，以确定哪些项目正在维护，以及它们过去和现在的维护者的声誉和工作质量。我们经常看到开源工作被篡改，许多人的努力被坏人破坏。尽管这些不良行为者的工作在很大程度上是被发现和补救的，但通常要等到经济或数据损失造成重大损害时才会发现。以每周下载超过 150 万次的[event-stream npm包](https://medium.com/intrinsic-blog/compromised-npm-package-event-stream-d47d08605502)为例，当黑客设法渗透到开源项目中，获得原作者的信任，并修改事件流，使其依赖于将比特币钱包凭证泄露到第三方服务器的恶意包时，超过1500个包依赖于此。尽管工具可以帮助检测这些攻击中的一些，但它们并不总是可靠的，这就创建了一个依赖于彼此的勤奋和分享发现的意愿的整个社区。

我们建议通过“[TEA token](white-paper.md#tea-token)”一节中描述的 TEA 代币引入激励措施，以鼓励开源社区建设性地报告他们的发现，以便软件包维护者可以在它们被利用之前解决它们。

#### 包的使用者和茶社区成员

“包的使用者”是专注于解决特定问题的软件开发人员。他们经常在开源社区中寻找他们需要的工具，以快速实验和迭代，几乎没有成本，直接受益于包维护者的工作。

在前 30 个包管理器中有超过 1000 万个可访问的包，缺乏对开源项目的普遍价值归属可以将安全高效的开发包的选择转变为高风险和令人生畏的努力。由于没有可识别的方法来定义和度量价值，包用户如何有效地为他们的开发选择安全的包?

我们相信，tea 协议的贡献证明算法与其他激励措施相结合，可以为包用户提供他们需要的信息，以便快速周到地选择自己项目的基础。

#### 项目的支持者

在 Web 2.0 和 web3 中，软件包用户的一个子集，通常被称为“赞助者”，选择通过捐赠或其他形式的报酬来支持软件包维护者。然而，这种情况很少出现。

这些“项目支持者”是使用开源软件构建其商业产品的组织或开源项目用户，希望支持生态系统的慈善家，或者希望资助团队开发更大系统组件的企业家。

Tea 建议将开源项目支持者社区扩展到整个茶社区，无论是组织、开发人员、用户还是技术爱好者。Tea 的目标是通过 TEA 代币的独特用例，为茶社区的任何成员实施去中心化激励机制，为开源的永久可持续性和持续增长做出贡献。项目支持者可以根据他们的工作、信念或任何影响他们决定的标准和度量来自由地决定他们想要支持哪个项目或包维护者。此外，项目支持者可以自由决定他们想要如何支持这些项目。

赞助可以成为支持开源开发的有效系统。然而，这些赞助通常不会扩展到所有依赖项。这种限制有利于偏爱者，但阻碍了创新和软件构建。为了努力成为软件开发的基础，开源必须赋予所有开发人员权力，无论是初学者还是专家，跨越各个层次。

为了支持软件供应链的可持续性和完整性，并使开源开发者能够获得他们创造的价值，tea 的目标是建立支持有利于项目所有方面的机制。来自支持者的支持将贯穿项目的依赖关系，从树的顶部到底部。这隐含地信任了包维护者对他们的堆栈做出明智选择的能力，从而提高了他们的声誉。

<figure><img src=".gitbook/assets/figure-2.png" alt=""><figcaption><p>Figure 2 - Rewards distribution across dependencies</p></figcaption></figure>

#### 品茶师

当新项目或现有项目的新版本发布时，需要证明工作的有效性。这些信息对于包用户决定他们是否可以信任包及其维护者至关重要。在茶礼仪中，这个功能是由“品茶师”提供的。

品茶师通常是经验丰富的软件开发人员，他们愿意花一些时间来检查与包相关的声明(功能、安全性、[语义版本控制](https://semver.org/)、许可证准确性等)，并将他们的声誉和 tea 代币押在一起，以展示他们的研究结果并支持他们的评论。在茶协议中，“下注你的茶”是锁定 tea 代币以支持你的评论的过程，可能会获得奖励或面临基于对你的评论质量的共识的惩罚。品茶者还可以选择秘密地向包管理器报告错误或漏洞。有效的报告导致项目资金的奖励，而无效的报告导致品茶者的股份被没收。最后，如果包维护者忽略了这些报告的问题，它将触发对项目资金的惩罚或“削减”。

像项目支持者一样，品茶师可以影响项目和包维护者的声誉。然而，考虑到它们在验证项目的安全性、功能和质量方面的作用，它们的影响更为重要。品茶师也需要建立自己的声誉来支持他们的主张。他们的工作质量和他们所冒的风险，因为他们将他们的评论与其他外部数据源相结合，将建立每个品茶者的声誉，为他们的工作带来更多价值。请参阅“[Package & Package维护者声誉](white-paper.md#package-and-package-maintainer-reputation)”一节，了解用于影响项目和包维护者声誉的机制的更多细节。

### 项目注册和贡献奖励证明

一个项目发布的注册需要多个事务自动发生。具体地说:

* 包维护者必须在去中心化注册中心注册项目。
* tea 协议必须实例化一个由包维护者根据包维护者定义的规则拥有、控制和配置的项目库。
* tea 协议必须在以太坊命名服务(ENS)中注册国库的唯一名称，从而简化用户与国库的所有交互。

Failure of any one of the operations will result in the protocol reverting to its previous state.

Upon successful registration of a project with a teaRank surpassing a governance-defined threshold, the tea Protocol initiates the distribution of Proof of Contribution rewards to the project's treasury. We suggest distributing these rewards following a predetermined curve from a predefined pool of tokens controlled by the tea Protocol and allocated from the TEA tokens total supply.

Package maintainers are required to bolster their project's reputation and trustworthiness by consistently staking a portion of the Proof of Contribution rewards received by the project's treasury. For each token staked, network participants will receive a non-transferrable “staked TEA”, or stTEA, at a 1:1 ratio, to participate in the governance of the tea Protocol. In line with the protocol's rules, these staked rewards, and their corresponding stTEA, may be subject to reduction (“slashing”) or redistribution if package maintainers fail to address bugs or vulnerabilities.

Lastly, failure to maintain the minimum staked treasury ratio defined in the governance rules will result in the suspension of Proof of Contribution reward distribution to the project. Instead, these rewards will be redistributed among compliant projects.

### Package & Package Maintainer Reputation

A reputation system that relies solely on the author’s economic contribution does not provide sufficient user protection and can be subject to Sybil attacks, where a single individual creates multiple representations of themselves to leave a large volume of positive reviews on their work, tricking users into believing their work was reviewed and approved of by many.

Several methodologies are available to prevent Sybil attacks, some of which are described by Nitish Balachandran and Sugata Sanyal in “[A Review of Techniques to Mitigate Sybil Attacks](https://arxiv.org/abs/1207.2617/)”. As tea is a decentralized protocol, using a trust certification system that relies on a centralized certificate issuance authority would be contrary to its core. We propose to focus on decentralized approaches to Sybil attack mitigation and, more specifically, on methodologies that rely on a large group of network participants incentivized to assess and publicly represent the reputation of each package and its maintainer.

Similar to the production of blocks on a proof-of-stake blockchain, where non-producing nodes can validate the work of others and, when necessary, highlight a violation of the rules of the network, leading to a penalization of the bad actor through slashing (destruction of a portion of their stake), we propose a system whereby third-parties, such as tea tasters, would be able to review packages produced by package maintainers and be incentivized to behave in the best interest of the open-source software community and its users, as well as recognize good behavior and penalize bad behavior. This system must be both Sybil-resistant and prevent large token holders from materially influencing the protocol or the reputation of specific packages. We believe this approach to be more aligned with open-source, providing a more fertile substrate to foster adoption and trust, and ultimately facilitate the growth of tea.

Additionally, as the reputation of any member of the tea community reaches key milestones, they may be granted access to elevated parts of the protocol.

### Package Review by Third Parties

The review of packages by third parties is an essential component of reputation building and the security of the software supply chain. However, third-party reviews come with their own set of unique threats including the aforementioned Sybil attacks.

Blockchain technology, and more explicitly staking, offers a unique opportunity for tea to tackle this challenge. Although wallet addresses may be available in infinite quantities, this is not the case with TEA tokens, whose total supply is expected to be 10 billion. Additionally, each action performed by developers, such as submitting, verifying, or staking packages, will contribute to their reputation, thus creating a unique profile each developer can use to both contribute to the tea community and participate in tea’s governance.

By requiring third-party reviewers to stake TEA tokens and incur the risk of losing a portion of their stake should they turn out to behave against the interest of the network or be a bad actor, third parties can provide additional credence to a package and receive a reward, in the form of TEA tokens.

We also propose extending the reputation system to the third parties who perform the independent verification of packages—the tea tasters. The completion of a positive review will require two operations to occur atomically:

* The submission of the code review, signed by the tea taster and publicly accessible to all members of the community, along with
* The act of staking the package, to substantiate their review.

The completion of a negative review that includes one or more critical vulnerabilities will require the tea tasters to first contact the package maintainer using a messaging protocol to notify them of the vulnerability and allow them to address the issue in a timely fashion. Upon expiry of the governance-defined period allocated to the package maintainer to address their vulnerability or as the corrected package becomes available, the same messaging protocol will be used to notify users and testers of this package (including dependents) that a vulnerability has been identified, and hopefully addressed, so they know to update their application or dependencies. To disincentivize wasting developers’ time, communication between the tea tasters and package maintainers will require the tea tasters to stake TEA tokens.

Upon completing both operations, the tea tasters will receive an NFT as evidence of their work on the specific package and package version. The accumulation of NFTs combined with the staking ratio of each of the packages reviewed and information extracted from external systems will inform a tea taster’s reputation. As their reputation reaches key milestones, tea tasters may earn access to elevated parts of the protocol or accelerated rewards from the protocol, as decided by the tea governance.

### Outdated or Corrupt Packages

tea’s mission is to enhance the sustainability and integrity of the software supply chain by allowing open-source developers to capture the value they create; however, rewards must be commensurate with the efforts deployed by package maintainers and tea tasters. Under-maintained, outdated, or corrupted packages are clear indications of package maintainers not living up to the community’s expectations or not delivering on the trust and support impressed upon them through the staking of packages. Another manifestation of outdated packages may be the continued use of a legacy language or legacy version of multi-version languages. Packages remaining outdated or corrupt for too long indicate that tea tasters need to review package maintainers’ work regularly and consistently.

tea tasters play a pivotal role in open-source communities, as their reviews and associated claims can influence package users, either guiding them towards or away from specific packages. To ensure that reviews can be trusted on an ongoing basis, we propose a mechanism whereby reviews posted by tea tasters must be associated with staked TEA tokens. Outdated or corrupted packages may see a portion of their treasury slashed, while another portion is sent to the tea taster who first recognized the lack of maintenance of any package.

As packages gain in popularity and usage, with more applications and potentially mission-critical systems depending on them, we must incentivize developers to discreetly report flaws to the package maintainer and encourage package maintainers to address such flaws before they can be exploited. Consequently, we propose that any negative review which outlines a flaw such as a zero-day vulnerability or the use of an outdated dependency and remains open beyond a grace period defined by governance should be considered a failure on the part of the package maintainer and be subject to the same penalties with the first tea taster to report the flaw receiving a portion of the slashed tokens.

The same can be said for package supporters who staked their reputation and TEA tokens on the work of delinquent package maintainers and received rewards for it. As they failed to identify the lack of maintenance or elected to continue to support the package regardless, we propose that all slashing activities extend to the supporters of the package.

Distribution to all tea tasters could be based on the age of their review and the number of TEA tokens they staked for their review.

## TEA Token

TEA is a cryptographic token which serves as the access key to certain parts and designated features of the tea Protocol.

Holders of TEA token have the ability to:

* Register their packages;
* Support packages by staking TEA tokens to specific packages;
* Contribute to the security of the software supply chain by challenging packages and conducting reviews to report bugs and/or vulnerabilities.

As discussed, the tea Protocol unlocks the open-source economy and creates value for builders, maintainers, and end-users of enterprise software. Ultimately, the value captured by the tea Protocol accrues back to token holders as the community scales, creating a feedback loop that further incentivizes participation.

### Rewarding Open-Source Developers

We expect tea’s Proof of Contribution and staking mechanisms to foster the growth of open-source by empowering its participants with the resources they need to pursue their passion unencumbered.

As outlined in "[Project Registration and Proof of Contribution Rewards](white-paper.md#project-registration-and-proof-of-contribution-rewards)", projects registered with the tea Protocol and with a teaRank that surpasses a governance-defined threshold will receive Proof of Contribution rewards in the form of TEA tokens from the tea Protocol. This distribution will persist as long as the package complies with the rules of the protocol. Specifically, the package will have to maintain a teaRank above the governance defined threshold and package maintainers will have to contribute to their project’s reputation and trustworthiness by continuously staking a portion of the Proof of Contribution rewards received by the project’s treasury. Failure to comply with these rules will result in the suspension of the distribution of Proof of Contribution rewards and the redistribution of future rewards among compliant projects.

Dependencies can significantly affect the reliability and security of a package, and the absence of registration for a package's dependencies should be seen as a potential risk. Package maintainers, being both validators and users of these dependencies, are in a prime position to connect with the maintainers of those dependencies. They can encourage them to register their projects with tea, thus making them subject to oversight by tea tasters and eligible for associated rewards. To encourage this community-wide engagement aimed at enhancing the reputation system, we recommend that any package with dependencies that are not registered with the tea Protocol see a fraction of its Proof of Contribution rewards burnt. This burn would be proportional to the number and contribution, quantified in teaRank, of each unregistered dependency, and continue as long as these dependencies remain unregistered.

Numerous cases have demonstrated that strong incentives can entice malicious actors to compromise open-source software. Most of the Internet’s critical infrastructure is running on open-source, and the race to find exploits and other vulnerabilities is on. At tea, we believe that package maintainers are not the ones that should be blamed (although they often are).

The tea Protocol's incentives address this issue by ensuring a fair and equitable distribution of incentives. A package like lodash with over 176k dependents is a pillar of open-source development, and its maintainers deserve to be rewarded proportionally. However, a reward system built solely on the number of dependents would prevent innovators from disrupting these monopolies unless they are sufficiently funded by third parties or have already accumulated enough resources to self-fund. This approach would likely lead to a shrinking number of contributors, resulting in the polar opposite of what tea is about.

To address this limitation and empower every TEA token holder with the ability to support package maintainers, we also recommend that a governance-defined fraction of all staking rewards received by all network participants be directed towards the treasury of the staked package, along with its dependencies.

### Staking to Secure the Software Supply Chain

Staking can be an effective methodology to support a decentralized reputation system. However, to facilitate the security of the software supply chain, the tea incentive distribution system must carefully consider the staking ratio of each package and adjust each package’s incentive accordingly.

To reduce the risk of a small number of packages used as dependencies across many applications collecting most staking rewards, we recommend the implementation of an optimum staking ratio, similar to the approach described in the [research produced by the web3 Foundation](https://research.web3.foundation/Polkadot/overview/token-economics).

When a package exceeds the governance-defined optimum staking ratio, the total amount of staking rewards allocated to the package will remain fixed, regardless of the number of TEA tokens staked to the package. This measure, designed to de-incentivize package supporters and tea tasters from further staking highly staked packages, will result in a linear decrease of the staking rewards received by each package supporter.

A curve-based approach, such as the one described in the web3 Foundation’s research would slow down the reduction of the staking rewards pool allocated to the package, thus continuing to take away from lesser staked packages and introducing negative externalities by granting more influence on large token holders over the distribution of the staking rewards pool.

The recommended linear design should allow lesser staked packages to become more attractive to both package supporters and tea tasters. It may also incentivize experienced developers to build alternatives to highly-staked packages, creating an opportunity for the tea community to balance supporting existing software and promoting innovation. In its initial design, the staking ratio will be calculated using the circulating supply. The tea community may alter this design to improve the system’s scalability further.

Just as good actors need to be rewarded; bad actors need to be identified and penalized. Open-source software provides many opportunities for bad actors to create pain points and reputational risks for an entire community of developers. From the misappropriation of work to the alteration and redistribution of software packages, or the injection of nefarious code, the war between good and bad actors goes on, often with well-funded bad actors who see the contamination of open-source packages as an opportunity to benefit financially. The downside has been relatively minimal, with packages potentially banned from digital shelves or subjected to a poor reputation.

To directly address malicious actors and intensify the repercussions for actions contrary to the open-source, we recommend implementing the slashing mechanism detailed in the “[Package Review by Third Parties](white-paper.md#package-review-by-third-parties)” and “[Outdated or Corrupt Packages](white-paper.md#outdated-or-corrupt-packages)” sections.

As tea tasters evaluate and analyze the code in newly submitted packages, we suggest tea tasters receive the tools and incentives to pinpoint and highlight nefarious code so

* package users can be made aware of the risks, and
* package maintainers and package supporters are penalized for submitting or supporting nefarious code.

To that extent, for all evidenced negative reviews performed per the network rules and which have been addressed by the package maintainer within the governance defined period, the package maintainer should not incur any penalty contrary to the package supporters or the tea tasters who provided a positive review of the package in question.

For negative reviews performed per the network rules and that the package maintainer has not addressed within the governance-defined period, a fraction of the TEA tokens staked by the project’s treasury, the package supporters, and previous tea tasters will be slashed and sent to the tea taster who identified the bug or vulnerability. Another fraction will be locked into an insurance pool controlled by the tea governance. The tea governance will establish policies and rules in close collaboration with the community to distribute the pool’s contents to those affected by vulnerabilities. The protocol will distribute a third fraction of the slashed TEA tokens across all tea tasters who contributed to the negative review.

Staking and slashing are vital components of the tea Protocol's incentive and penalty system. Package maintainers are required to stake a portion of their project's treasury, ensuring they have a substantial stake at risk in case they neglect to address bugs or vulnerabilities. Package users, supporters, and tea tasters can also stake TEA tokens to contribute to a package or package maintainer's reputation and actively participate in the protocol to uphold the software supply chain's sustainability and integrity.

Governance is closely tied to this active engagement. For each TEA token staked, participants receive non-transferrable "staked TEA" (stTEA) at a 1:1 ratio, enabling them to participate in the governance of the tea Protocol. Staked rewards and their corresponding stTEA tokens may face reduction (slashing) or redistribution if the protocol rules are not followed, reinforcing accountability within the ecosystem.

### TEA Token Supply Distribution

A majority of the TEA tokens created by the protocol are used as incentives to encourage package maintainers, users, and supporters to perform activities that provide value to the decentralized network. The distribution of TEA tokens to various stakeholders within the protocol is dictated by a “distribution schedule”.

Network incentives will be distributed directly by the tea Protocol, in the form of TEA tokens, to four groups of stakeholders:

* Package Maintainers;
* Package Users (which include all members of the tea community);
* Project Supporters; and,
* tea Tasters.

TEA tokens will also be utilized to support packages and secure the software supply chain through staking, including the right to challenge a package by conducting a review and reporting bugs or vulnerabilities, reward the open-source developers of registered projects, and participate in the governance of the tea Protocol.

It’s recommended that a 10 billion maximum token supply be distributed across all members of the tea community as described below:

<figure><img src=".gitbook/assets/Token Allocation-Updated.svg" alt=""><figcaption><p>Figure 3 - Token distribution of maximum supply</p></figcaption></figure>

Roughly 51.4% of the maximum token supply should be allocated to “Ecosystem & Governance”, which includes incentives for open-source projects to onboard and maintain their codebase as well as rewards for contributing to decentralized votes and consensus via the tea DAO. Tokens allocated to “Ecosystem & Governance” should be distributed as Proof of Contribution rewards, staking rewards, and other types of developer-centric incentives.

Roughly 18.6% of the maximum token supply should be allocated to the “Protocol Development” to ensure the sustainability and continued evolution of the tea Protocol. Roughly 12.7% should be earmarked for “Early Supporters & Advisors”. Roughly 11.0% should be earmarked for a Private sale,  3.0% for a public sale, while the remaining 3.2% should be allocated to support marketplace liquidity once a token generation event occurs.

Detailed Tokenomics, including a comprehensive Token Distribution and Emissions schedule will be the subject of a dedicated paper.

## Governance

Governance is critical to the development, sustainability, and adoption of any distributed system.

We propose that the tea Protocol incorporates governance mechanisms that enable active contributors who have staked TEA tokens to propose and vote on non-financial critical parameter changes. The voting process would be weighted by stTEA token ownership and individual reputation.

Protocol parameters could include the priority to support specific package managers or introduce new protocol features or functions, as well as the impact of external factors on user and package reputation. This functionality will ensure that critical parameters can evolve and be optimized over time by active members of the tea community. We anticipate governance will launch with a simple structure and progressively expand as the tea system matures, facilitating adoption and ensuring progressive decentralization.

Some system parameters may not be subject to governance or support high frequency changes to reduce the attack surface represented by governance. A progressive transition of parameters to open, decentralized governance will ensure the stability and predictability of the system.

## Third-Party Extensibility

As we build the initial tools to ignite the long-overdue support of the open-source communities, we believe part of our mission is to ensure that third parties can extend the overall toolset. In addition to providing the infrastructure for developers to build extensions to the protocol, including new ways to innovate and further the support of open-source developers, our plans include the potential for other package managers to contribute to the protocol.

The dreams and efforts of open-source developers have built the innovation that supports our everyday life. We look forward to discovering the new uses and extensions for the tea Protocol proposed by the tea community.

## Future Work and Potential Community Efforts

As the tea system matures, we foresee the community deciding and contributing to alterations and extensions of the tea system through governance. Below are some ideas that we believe may inspire some, however we do not guarantee any future performance.

### tea Wholesalers

Open-source software communities are vibrant and constantly looking to innovate and deliver value. This dedication and altruism lead to the constant building of new software and packages, each one pulling dependencies. As a result, we anticipate the dependencies map to evolve constantly, leading to frequent changes to the staking ratio and rewards. In the future, the tea community may propose the development of a system designed to dynamically monitor the staking ratio for each project and rebalance how project supporters stake their TEA tokens based on their own criteria.

### Royalties on Package Transfer

We recognize that package maintainers may decide to transfer their rewards stream to one or more developers. The governance of such transfer must remain the decision of the package maintainer and their partners, with no interference from tea. Tools will need to be provided for such transfer to be total or partial (perhaps through only a portion of the rewards being redirected to one or more developers, while the remaining rewards continue to flow to the original package maintainer) and for the staking rewards to flow through a single account controlled by a single network participant, multiple network participants, or automatically distributed across multiple accounts using static or dynamic ratios.

### Rewards Distribution Across Multiple Maintainers

The maintenance of a package can rely on the work of one more team of developers. Before rewards start to flow, teams should consider automating the distribution of value amongst themselves. How the distribution occurs must be decided by the maintainers themselves, as they are in the best position to evaluate who contributed and how they should be rewarded.

To accomplish that, each team (or teams) could set up their own decentralized autonomous organization ([DAO](https://ethereum.org/en/dao/)) and either automate the distribution or deploy more complex systems to determine the adequate value distribution based on external factors such as a vote from all DAO members, or time-based distributions based on continuous contribution, successful completion of bounties, etc.

### Handling Package “Forks”

We believe that forks are essential and largely under-utilized. Forks can be an effective tool for developing packages that compete in functionality, performance, security, and even attention. As useful as they may be, forks must recognize the original efforts. Through future work or potential contributions, the tea community may enhance the system to require forks to be declared, perhaps even detected when a project is registered. Undeclared forks revealed by tea tasters may result in a portion of the fork’s treasury’s stake being slashed, transferred to the original package maintainer, or sent to the tea tasters who revealed the fork.

### Runtime vs. Build Dependencies

tea may not distinguish build dependencies from runtime dependencies when distributing Proof of Contribution rewards at launch. However, provided the tea community feels strongly about making such a distinction, the tea community may propose enhancements to the rewards distribution algorithm to account for the criticality of each dependency and their contribution to the individual value of the packages that depend upon them. These proposals would be voted upon and implemented based on the community’s decision.

### Usage-based Rewards

As more applications are built using projects registered with tea, the community may augment the reward algorithm so that allocation may be influenced by external attested datasets such as usage. This update to the rewards mechanism could allow for a higher allocation of TEA token rewards to flow towards packages with the highest usage while still respecting the constraints of the staking ratio described in the TEA token section. Package maintainers could use a similar approach to distribute rewards across their dependencies based on the transparent logic of their choice. Note that all information used to affect the distribution of rewards across packages and dependencies in the tea system will need to be provably reliable.

## Acknowledgments

This white paper would not exist without the support and dedication of many teaophiles. The authors would like to acknowledge Jacob Heider, Jadid Khan, Josh Kruger, and Shane Molidor for their contribution to the tokenomics, Sanchit Ram for his contribution to the teaRank algorithm, and the many discrete individuals who volunteered their time to provide feedback on the contents of this document.

## Glossary of Terms

| Term     | Definition                                                                                                                                                                                        |
| -------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Leaf     | The smallest denomination of the TEA token. A leaf corresponds to one quintillionth (10^−18) of a tea.                                                                                            |
| Slashing | The action of penalizing stakers in response to behavior contrary to the protocol rules.                                                                                                          |
| Staking  | The action of locking TEA tokens to support your claim and receive rewards (or penalties) based on the consensus on the validity of your claim.                                                   |
| stTEA    | Non-transferrable “staked TEA” token or “stTEA” received by network participants for each token staked at a 1:1 ratio. stTEA can be utilised to participate in the governance of the tea Protocol |
| teaRank  | Dynamic impact score assigned to each project by the protocol’s “Proof of Contribution” algorithm.                                                                                                |

## References

1. [https://creativecommons.org/licenses/by-sa/4.0/](https://creativecommons.org/licenses/by-sa/4.0/)
2. [https://archive.org/details/historyofmodernc00ceru](https://archive.org/details/historyofmodernc00ceru)
3. [https://nvd.nist.gov/vuln/detail/CVE-2021-44228](https://nvd.nist.gov/vuln/detail/CVE-2021-44228)
4. [https://www.reuters.com/article/usa-cyber-vulnerability-idCNL1N2SY2PA](https://www.reuters.com/article/usa-cyber-vulnerability-idCNL1N2SY2PA)
5. [https://twitter.com/yazicivo/status/1469349956880408583](https://twitter.com/yazicivo/status/1469349956880408583)
6. [https://www.thestack.technology/core-js-maintainer-denis-pusharev-license-broke-angry/](https://www.thestack.technology/core-js-maintainer-denis-pusharev-license-broke-angry/)
7. [https://www.w3.org/TR/did-core/](https://www.w3.org/TR/did-core/)
8. [https://www.bleepingcomputer.com/news/security/npm-ecosystem-at-risk-from-manifest-confusion-attacks/](https://www.bleepingcomputer.com/news/security/npm-ecosystem-at-risk-from-manifest-confusion-attacks/)
9. [https://www.theregister.com/2016/03/23/npm\_left\_pad\_chaos/](https://www.theregister.com/2016/03/23/npm\_left\_pad\_chaos/)
10. [https://fossa.com/blog/npm-packages-colors-faker-corrupted/](https://fossa.com/blog/npm-packages-colors-faker-corrupted/)
11. [https://www.lunasec.io/docs/blog/node-ipc-protestware/](https://www.lunasec.io/docs/blog/node-ipc-protestware/)
12. [https://github.com/dominictarr/event-stream/issues/116](https://github.com/dominictarr/event-stream/issues/116)
13. [https://blog.npmjs.org/post/163723642530/crossenv-malware-on-thenpm-registry.html](https://blog.npmjs.org/post/163723642530/crossenv-malware-on-the-npm-registry.html)
14. [https://www.zdnet.com/article/open-source-software-how-many-bugs-are-hidden-there-on-purpose/](https://www.zdnet.com/article/open-source-software-how-many-bugs-are-hidden-there-on-purpose/)
15. [https://threatpost.com/backdoor-found-in-utility-for-linux/147581/](https://threatpost.com/backdoor-found-in-utility-for-linux/147581/)
16. [https://www.fbi.gov/news/stories/phantom-secure-takedown-031618](https://www.fbi.gov/news/stories/phantom-secure-takedown-031618)
17. [https://www.europol.europa.eu/media-press/newsroom/news/800-criminalsarrested-in-biggest-ever-law-enforcement-operation-against-encryptedcommunication](https://www.europol.europa.eu/media-press/newsroom/news/800-criminals-arrested-in-biggest-ever-law-enforcement-operation-against-encrypted-communication)
18. [https://medium.com/intrinsic-blog/compromised-npm-package-event-stream-d47d08605502](https://medium.com/intrinsic-blog/compromised-npm-package-event-stream-d47d08605502)
19. [https://www.npmjs.com/package/lodash](https://www.npmjs.com/package/lodash)
20. [https://www.npmjs.com/package/chalk](https://www.npmjs.com/package/chalk)
21. [https://www.npmjs.com/package/log4js/](https://www.npmjs.com/package/log4js/)
22. [https://www.bleepingcomputer.com/news/security/npm-ecosystem-at-risk-from-manifest-confusion-attacks/](https://www.bleepingcomputer.com/news/security/npm-ecosystem-at-risk-from-manifest-confusion-attacks/)
23. [https://medium.com/intrinsic-blog/compromised-npm-package-eventstream-d47d08605502](https://medium.com/intrinsic-blog/compromised-npm-package-event-stream-d47d08605502)
24. [https://semver.org/](https://semver.org/)
25. [https://arxiv.org/abs/1207.2617](https://arxiv.org/abs/1207.2617)
26. [https://research.web3.foundation/Polkadot/overview/token-economics](https://research.web3.foundation/Polkadot/overview/token-economics)

