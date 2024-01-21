---
descripción: Versión 2.1.0
---

# papel blanco

## Un protocolo descentralizado para que los desarrolladores de código abierto capturen el valor que crean

* Max Howell
* Thomas Borrel
* Timothy Lewis
* Troy Wong

## Abstract

Un sistema en el que los desarrolladores de código abierto pudieran recibir recompensas proporcionales a sus contribuciones mejoraría la sostenibilidad y la integridad de la cadena de suministro de software. Un protocolo descentralizado garantizado por la reputación y los incentivos podría lograr esto al facilitar la acumulación de valor para los desarrolladores que mantienen bases de código de código abierto como una utilidad pública, promoviendo así la innovación y el crecimiento futuros dentro del ecosistema de código abierto. Los mantenedores de paquetes registrarán sus proyectos en un registro impulsado por una cadena de bloques bizantina tolerante a fallas. El algoritmo exclusivo de "Prueba de contribución" del Protocolo del té determinará la contribución y el impacto de cada proyecto en la utilidad y la salud del sistema. Los proyectos registrados recibirán recompensas del Protocolo del té proporcionales a su contribución, se asegurarán mediante apuestas, se beneficiarán de un sistema de reputación que abarca proyectos y contribuyentes, y tendrán la opción de permitir que las comunidades gobiernen sus regiones del ecosistema de código abierto, independientemente de agendas externas. El Protocolo del té incentivará el mantenimiento del código abierto al permitir que los participantes de la red que registraron sus proyectos y cumplan con las reglas de la red reciban recompensas y contribuyan a su reputación y a sus proyectos. Si se encuentran problemas de seguridad o desarrollo, los desarrolladores pueden hacer afirmaciones respaldadas por pruebas contra el paquete, y es posible que se produzcan recortes. Los miembros de la comunidad de código abierto pueden revisar los paquetes en busca de problemas de calidad, y el protocolo puede responder a estas revisiones implementando eventos de reducción proporcional.

## Descargo de responsabilidad

La información contenida en este documento técnico es de carácter preliminar. En consecuencia, ni los autores ni ninguno de sus respectivos afiliados asumen ninguna responsabilidad de que la información contenida en este documento sea definitiva o correcta y cada uno de los anteriores renuncia, en la máxima medida permitida por la ley aplicable, a cualquier responsabilidad, ya sea que surja por agravio, contrato o de otro modo con respecto a este documento técnico. Ni este documento técnico ni nada de lo contenido en este documento constituirá la base ni será invocado en relación con ningún incentivo para celebrar ningún contrato o compromiso, ni actuará como incentivo para ello.

Nada en este documento técnico constituye una oferta de venta o una solicitud de compra de los tokens aquí analizados. En cualquier caso, si este documento técnico se considerara como una oferta o solicitud de este tipo, este documento técnico no pretende ni transmite dicha oferta o solicitud en ninguna jurisdicción donde sea ilegal hacerlo, donde dicha oferta o solicitud requiera una licencia o registro, o cuando dicha oferta o solicitud esté sujeta a restricciones. En particular, los tokens analizados en este documento no han sido, y, a la fecha de emisión de este documento técnico, no están destinados a serlo, registrados bajo las leyes de valores o similares de ninguna jurisdicción, ya sea que dicha jurisdicción considere que dichos tokens son válidos o no. ser un valor o instrumento similar y no puede ofrecerse ni venderse en ninguna jurisdicción donde hacerlo constituiría una violación de las leyes pertinentes de dicha jurisdicción. No compre ningún token a menos que esté dispuesto a perder el precio total de compra. Es una compra de alto riesgo y es poco probable que esté protegido si algo sale mal.

## Licencia

Este documento está disponible bajo la [licencia internacional Creative Commons Atribución-CompartirIgual 4.0](https://creativecommons.org/licenses/by-sa/4.0/).

## Introducción

La Internet moderna se compone predominantemente de proyectos de código abierto y así ha sido desde sus inicios. Los proyectos de código abierto se desarrollan y mantienen mediante la colaboración entre comunidades de desarrolladores globales, y sus bases de código están disponibles para que cualquiera pueda utilizarlas como un bien público. En los últimos 80 años (se [generalmente se cree](https://archive.org/details/historyofmodernc00ceru)(que el primer ejemplo de software libre y de código abierto se publicó en 1953), el software de código abierto ha evolucionado desde el producto de aficionados a la tecnología especializada hasta la infraestructura sobre la que se ha construido toda la innovación. A pesar de la importancia del software de código abierto, los desarrolladores que crean y mantienen el código base como una utilidad pública no reciben recompensas fungibles por su inmensa contribución como innovadores y mantenedores.

El software empresarial, que se ha convertido en una industria multimillonaria, se basa en los cimientos del código abierto. Sin embargo, casi no se acumula valor para los individuos que ingratamente mantienen sus fundamentos. Y si bien se han hecho fortunas con ello, el software de código abierto se crea y mantiene principalmente como una utilidad pública sin medios viables para que los desarrolladores capturen el valor que crean.

Creemos que el potencial de la Internet moderna se ha visto atrofiado al depender de un pequeño porcentaje de los ingenieros del mundo para mantener el software de código abierto por pura altruismo. El código abierto es una labor de amor que a menudo se ve obstaculizada por la falta de incentivos significativos para los mantenedores principales. Los desarrolladores de código abierto deben elegir entre un trabajo diario que proporcione salarios dignos o mantener la base misma del software empresarial. La falta de incentivos da como resultado que proyectos realmente valiosos nunca alcancen su potencial, mientras que otros sufren problemas de seguridad debido a la falta de mantenimiento durante todo el ciclo de vida del software. Para desbloquear todo el potencial del código abierto, necesitamos un método universal para evaluar el "valor justo" de los proyectos de código abierto, que permita a los desarrolladores de código abierto capturar el valor que crean al facilitar las entradas de capital a la comunidad de código abierto. todo sin alterar los principios básicos de cómo se desarrolla y utiliza el código abierto.

Las empresas a menudo envuelven modelos de negocios en torno al código abierto, generando ingresos directamente del trabajo de los desarrolladores benevolentes y al mismo tiempo confiando en ellos para corregir errores a medida que ocurren. Las bases de código de fuente abierta ofrecen funcionalidad central plug-and-play para empresas; sin embargo, las vulnerabilidades del software pueden representar un riesgo inmenso para las aplicaciones creadas sobre código abierto. Un gran ejemplo es un incidente reciente que involucró una vulnerabilidad de seguridad crítica en Log4j, un paquete de [Apache Software Foundation].(https://www.apache.org/) que encontró su camino a través de muchos software y servicios comerciales empleados por empresas y gobiernos. En noviembre de 2021, un investigador de seguridad que trabaja para [Alibaba Group Holding Ltd.](https://www.alibabagroup.com/) vulnerabilidad reportada [CVE-2021-44228](https://nvd.nist.gov/vuln/detail/CVE-2021-44228), which received the highest possible base score from the Apache Software Foundation. Amit Yoran, Chief Executive of [Tenable](https://www.tenable.com/) y director fundador del Equipo de preparación para emergencias informáticas de los Estados Unidos (US-CERT), describió esta vulnerabilidad como “[la vulnerabilidad más grande y crítica de la última década](https://www.reuters.com/article/usa-cyber-vulnerability-idCNL1N2SY2PA)”. Se desató el pánico y los pocos voluntarios que mantuvieron este paquete fueron criticados públicamente por el fracaso. Después de abordar la indignación con una humilde súplica de justicia, los sistemas fueron parcheados. Las empresas y los gobiernos finalmente se dieron cuenta de que Log4j, un paquete utilizado por una amplia gama de sistemas críticos durante dos décadas, era mantenido por unos pocos voluntarios no remunerados, los mismos héroes anónimos que entraron en acción a pesar de [el abuso de la industria].(https://twitter.com/yazicivo/status/1469349956880408583) y trabajó incansablemente para abordar la vulnerabilidad.

Lamentablemente, Log4j está lejos de ser el único ejemplo. core-js se descarga 30 millones de veces por semana como base de cada aplicación Node.js, pero apenas cuenta con financiación, lo que podría obligar a su principal responsable a [abandonar el proyecto o incluso cambiar la licencia a código cerrado].(https://www.thestack.technology/core-js-maintainer-denis-pusharev-license-broke-angry/). Recientemente, varios desarrolladores centrales de bitcoin renunciaron, citando, entre otras razones, la falta de compensación financiera por su decisión.

<figure><img src=".gitbook/assets/xkcd-dependency (1).png" alt=""><figcaption><p>Figure 1 - Dependency - Source: <a href="https://xkcd.com/2347/">https://xkcd.com/2347/</a></p></figcaption></figure>

Ha habido múltiples intentos de proporcionar estructuras de incentivos, que generalmente involucran sistemas de patrocinio y recompensas. El patrocinio hace posible que los consumidores de código abierto donen a los proyectos que prefieren. Sin embargo, imagine el código abierto como una torre de ladrillos donde las capas inferiores han sido olvidadas hace mucho tiempo, pero que aún son mantenidas por ingenieros dedicados y en las que confían aún más desarrolladores. Normalmente, sólo los proyectos en la cima de la torre son conocidos y reciben patrocinio. Esta selección sesgada lleva a que los ladrillos esenciales que sostienen la torre no atraigan donaciones, mientras que los favoritos reciben más de lo que necesitan. Las recompensas permiten a los consumidores de proyectos proponer pagos para que los desarrolladores creen características específicas, recompensando así solo a los proyectos por hacer cosas que pueden no ser lo mejor para ellos. Y de nuevo, sólo premiar a los favoritos.

En el té, hemos visto demasiados proyectos de código abierto que sufren estos intentos fallidos de apoyar a la comunidad de código abierto y nuestra misión es mejorar la sostenibilidad y la integridad de la cadena de suministro de software al permitir que los desarrolladores de código abierto capturen el valor que crean.

En este artículo, proponemos el té, un sistema descentralizado para

1. calcular y asignar una "[Prueba de contribución](white-paper.md#prueba de contribución)" a cada proyecto de código abierto en relación con todo el ecosistema,
2. garantizar que los proyectos de software de código abierto estén bien mantenidos,
3. empoderar a los desarrolladores de código abierto con recompensas equitativas y proporcionales a sus contribuciones en todo el ecosistema, logradas mediante la implementación del algoritmo de incentivos del té en cada entrada del registro de té, y
4. incentivar a los participantes de la red a seguir prácticas de divulgación responsable de vulnerabilidades y errores.

## Componentes

Un desarrollador de software que crea una aplicación necesita cuatro cosas: un navegador, una terminal, un editor y un administrador de paquetes. De estos cuatro, el administrador de paquetes es el que controla las herramientas y los marcos que un desarrollador necesita para construir su producto. En esta capa es donde vemos el potencial de cambiar la forma en que se protege y recompensa el código abierto.

### The Package Manager

El administrador de paquetes sabe de qué software de código abierto depende un paquete o aplicación para funcionar, desde la cima de la torre hasta su base. Cada proyecto, junto con cada versión empaquetada, documenta meticulosamente todos los componentes esenciales y sus versiones correspondientes.

Sabe que la cima de la torre selecciona cuidadosamente sus dependencias, y que esa cuidadosa selección continúa hacia abajo. El administrador de paquetes ocupa una ubicación única en la pila de herramientas del desarrollador para permitir una distribución de valor automatizada y precisa basada en la contribución real del mundo real.

Proponemos un registro descentralizado inmutable diseñado para distribuir valor basado en la "Prueba de Contribución" única del Protocolo del té, un algoritmo que determina la contribución y el impacto de cada proyecto en la utilidad y la salud del sistema. El valor puede ingresar al gráfico en puntos vértices, como bibliotecas esenciales, y distribuirse a las dependencias de esos paquetes y sus dependencias de forma recursiva, ya que el registro conoce todo el gráfico de código abierto..

Además, creemos que la información proporcionada por la Prueba de contribución del protocolo debe estar disponible para que los desarrolladores evalúen si pueden confiar en un proyecto y su autor. Esta información puede basarse en la reputación, elogios de la comunidad o datos recuperados de la identidad descentralizada. ("[DID](https://www.w3.org/TR/did-core/)") sistemas, otros administradores de paquetes o mecanismos de incentivos que potencialmente dependen de que los participantes de la red pongan en riesgo el valor.

Predecimos que la combinación de herramientas, información y recompensas del té incentivará justamente a los desarrolladores, ayudando a asegurar la cadena de suministro de software, estimulando el crecimiento del software de código abierto y fomentando la innovación.

### El Registro Descentralizado

Cada administrador de paquetes tiene su propio registro de paquetes que duplica los mismos metadatos repetidamente. En algunos casos, este registro puede incluir [información que difiere del manifiesto del proyecto](https://www.bleepingcomputer.com/news/security/npm-ecosystem-at-risk-from-manifest-confusion-attacks/), permitiendo así que los malos actores inyecten código potencialmente nefasto sin que el usuario lo sepa. Es hora de que exista un registro único, integral y definitivo diseñado y regido por las comunidades que de él dependen. Este registro descentralizado e inmutable podría proporcionar seguridad, estabilidad y prevenir intenciones malévolas.

Internet funciona con decenas de miles de componentes vitales de código abierto. Es notable que hasta ahora los incidentes causados ​​por la eliminación de infraestructura esencial de código abierto hayan sido mínimos. El más famoso fue la [eliminación de una dependencia del panel izquierdo del NPM](https://www.theregister.com/2016/03/23/npm\_left\_pad\_chaos/) en 2016, que desembocó en sistemas de integración y despliegue continuos, dejando a los desarrolladores en la estacada durante días. Este evento demostró que la propia Internet se basa en sistemas de desarrollo frágiles. Otros ejemplos involucraron la participación activa o intencional de los mantenedores de paquetes que sabotearon sus paquetes populares.(See [colors.js and faker.js](https://fossa.com/blog/npm-packages-colors-faker-corrupted/), así como [node-ipc](https://www.lunasec.io/docs/blog/node-ipc-protestware/)), o malos actores que buscan lucrarse pretendiendo ayudar a mantener paquetes y corrompiéndolos para robarlos, por ejemplo, claves privadas de Bitcoin (See [event-stream](https://github.com/dominictarr/event-stream/issues/116)), o paquetes maliciosos con errores ortográficos intencionales, también conocidos como “[typosquatting](https://en.wikipedia.org/wiki/Typosquatting)”, con la esperanza de engañar a los usuarios para que los instalen, por ejemplo [crossenv vs. cross-env NPM packages](https://blog.npmjs.org/post/163723642530/crossenv-malware-on-the-npm-registry.html).

Es necesario garantizar la integridad del software a medida que la industria avanza hacia un futuro en el que los activos digitales sean parte del software. No podemos seguir dejándonos vulnerables a que actores maliciosos modifiquen el software.

La mayoría de las herramientas que llamamos administradores de paquetes no pueden garantizar que estos paquetes integrados en las aplicaciones y dApps sean el código fuente abierto inalterado publicado por sus autores originales. [GitHub de Microsoft ha descubierto que el 17% de las vulnerabilidades en el software se colocaron con fines maliciosos](https://www.zdnet.com/article/open-source-software-how-many-bugs-are-hidden-there-on-purpose/),y algunos permanecen sin ser detectados durante períodos prolongados (consulte [Webmin 1.890](https://threatpost.com/backdoor-found-in-utility-for-linux/147581/)).

Un registro global descentralizado, aumentado por un sistema de reputación y respaldado por incentivos diseñados para exponer a los malos actores y recompensar a los buenos, puede brindar las garantías que las comunidades de desarrolladores han estado buscando para asegurar la cadena de suministro de software.

### El sistema de almacenamiento

Los proyectos de código abierto ofrecen una amplia gama de funciones, algunas de las cuales pueden estar restringidas o no deseadas. El cifrado es un excelente ejemplo de ello. Un caso de uso crítico para el cifrado es el respaldo a la privacidad de las personas en todo el mundo. Sin embargo, el cifrado también se puede utilizar con fines nefastos (consulte [Phantom Secure](https://www.fbi.gov/news/stories/phantom-secure-takedown-031618), desmantelado por las fuerzas del orden en marzo de 2018) o puede verse comprometido para apoyar actividades policiales (Ver [Operación Ironside (AFP), Operación Greenlight (Europol) y Operación Trojan Shield (FBI)](https://www.europol.europa.eu/media-press/newsroom /noticias/800-criminales-arrestados-en-la-operación-de-aplicación-de-la-ley-contra-la-comunicación-cifrada-más grande-hasta-la-historia) donde el FBI operó una plataforma de comunicación "cifrada", AN0M, y convenció a los delincuentes para que usaran sus teléfonos "cifrados" para una comunicación segura).

Las amplias aplicaciones del cifrado lo han convertido en un caso de uso perfecto para el software de código abierto y un gran ejemplo de que cualquier solución que almacene paquetes debe ser a prueba de manipulaciones y resistente a la censura. tea es un protocolo descentralizado que no pretende filtrar ni sancionar paquetes en función de su funcionalidad. Si bien la gobernanza del té puede optar por eliminar paquetes maliciosos comprobados (consulte la [sección de gobernanza](white-paper.md#governance) para obtener más información), es fundamental que el sistema del té se conecte con múltiples sistemas de almacenamiento, incluidos los descentralizados que demostrar que un paquete está inalterado y replicado correctamente. Los mantenedores de paquetes pueden elegir el sistema de almacenamiento que mejor se adapte a su necesidad de almacenar y distribuir sus paquetes de forma segura.

## Descripción general del protocolo

Diseñar un protocolo para recompensar las contribuciones de código abierto presenta desafíos formidables. El software de código abierto, al ser accesible universalmente, es susceptible de atribución errónea, apropiación y manipulación maliciosa. Sin embargo, la comunidad de código abierto ha demostrado constantemente su voluntad de destacar a los buenos actores y exponer a los malos. Históricamente, la energía invertida en revisar y comentar las contribuciones de otros desarrolladores ha sido estrictamente voluntaria, a pesar de lo crucial que puede ser informar y defender los hallazgos.

Tenemos la intención de crear un protocolo descentralizado asegurado por la reputación y los incentivos que mejore la sostenibilidad y la integridad de la cadena de suministro de software al permitir que los desarrolladores de código abierto capturen el valor que crean de una manera sin confianza. Creemos que las recompensas adecuadas por las contribuciones de código abierto no pueden tener éxito sin un sistema de reputación y la capacidad de los miembros de la comunidad de comunicar sus hallazgos y su apoyo (o desacuerdo) a un proyecto o el trabajo de un desarrollador. Además, debemos proporcionar a los desarrolladores herramientas para acceder y contribuir a este sistema de reputación. Herramientas que incluyen acceso visual y programable simple a la versión y reputación de todas las dependencias dentro de sus proyectos..

La transparencia en los tokens TEA apostados por los miembros de la comunidad para respaldar cada proyecto mejora la reputación de cada proyecto, de manera muy parecida a la cantidad de tokens que un mantenedor de un paquete apuesta en su propio trabajo indica su compromiso con el mismo. Estos puntos de datos combinados ayudarán a informar un sistema de reputación para todos los miembros de la comunidad y facilitarán la elección. Como el [truco del paquete event-stream](https://medium.com/intrinsic-blog/compromised-npm-package-event-stream-d47d08605502) no se realizó a través del paquete en sí, sino a través de una de sus dependencias, la visibilidad en todos los niveles de dependencias será vital para construir este sistema sin confianza. Sin embargo, consideraciones como los costos de cálculo y transacción (“gas”) deberán tener prioridad a medida que se diseñe y construya el sistema.

Nuestro objetivo es recompensar tanto a los desarrolladores Web 2.0 como a los desarrolladores Web3. Las complejidades y detalles de cada pila hacen que el seguimiento de instalaciones de paquetes pueda fácilmente ser víctima de uno o más actores maliciosos. Eso incluye “comprar” instalaciones para inflar artificialmente las cifras. Un escenario aún peor sería introducir cambios fundamentales en la naturaleza del software de código abierto creando fricciones innecesarias con las claves de licencia u otros mecanismos de seguimiento de la implementación. Para brindar la cobertura más amplia, creemos que las recompensas no deben depender de una noción simplista de instalaciones de seguimiento, sino más bien de mecanismos de incentivos que fomenten la presentación de paquetes de calidad y la denuncia de paquetes nefastos o de alto riesgo. Por último, muchos paquetes dependen de dependencias comunes. Por ejemplo, [lodash]
(https://www.npmjs.com/package/lodash) tiene 176.308 dependientes de código abierto, mientras que [tiza](https://www.npmjs.com/package/chalk) tiene 100.247 dependientes o [log4js](https://www.npmjs.com/package/log4js/) Tiene 3.809 dependientes. A medida que se crean más paquetes utilizando las mismas dependencias, ¿cómo garantizamos que las recompensas se distribuyan de manera justa y equitativa? ¿Cómo garantizamos que las dependencias más utilizadas sean recompensadas sin privar a los desarrolladores y paquetes nuevos o emergentes? ¿Cómo podemos garantizar que el sistema de incentivos no acabe alejando a los desarrolladores de lenguajes especializados para centralizarlos donde los incentivos son mejores? Pero también, como desarrolladores, ¿cómo identificamos los paquetes con más dependencias para crear alternativas: versiones más sencillas, más eficientes y mejor codificadas de estos paquetes?

En Tea creemos que la falta de visibilidad e incentivos ha impedido la evolución del software de código abierto. Con el respaldo de los incentivos y recompensas adecuados, más desarrolladores estarán en condiciones de crear, mejorar y aumentar el software de código abierto para el bien del mundo..

### Prueba de contribución

En este documento técnico, proponemos la "Prueba de contribución", un novedoso mecanismo de consenso diseñado para cuantificar el impacto de todos los proyectos en todos los sistemas de código abierto.

La Prueba de contribución asigna una puntuación dinámica, denominada teaRank de un proyecto, en función de la orientación de cada proyecto de código abierto dentro y la utilización del ecosistema de código abierto más amplio a lo largo del tiempo.

Creemos que este enfoque beneficia al software fundamental que está muy alejado de la capa de aplicación (que tiende a ser la capa más visible para el público y atrae la mayor parte del interés) y amplía el mecanismo de recompensa para garantizar que todos los componentes de un proyecto, desde la parte superior. del árbol, hasta su base, son recompensados por su contribución.

To calculate each project’s score, teaRank builds upon the foundation laid by [Google's PageRank](https://en.wikipedia.org/wiki/PageRank) algorithm. Google’s PageRank is the search product’s defining component and is built on the graph-like structure of web pages. PageRank, at its core, is a probability distribution algorithm that assigns scores to nodes in a graph, representing the likelihood that anything randomly navigating the graph will arrive at a particular node. This algorithm is particularly effective in a graph-like data structure, such as the internet, because it quantifies the impact of each node (or web page) based on the quantity and quality of edges (links) to it. This algorithm was modified over time to better discern the web’s topology and identify fraudulent links between web pages, allowing various attacks to be mitigated.

Because the graph structure of the internet and the tea Protocol’s decentralized registry share remarkable similarities, PageRank initially appeared to be a promising approach for analysis. However, upon further experimentation, it became apparent that PageRank's anti-spam strategies were less effective when applied to open-source.

The key distinction lies in open-source software metadata. Unlike web pages, most open-source package metadata, such as lines of code and commit messages, are user-generated and susceptible to spoofing. Package managers are vulnerable to spam campaigns, wherein malicious actors flood the registry with packages containing phishing links or other harmful content. Package manager registries may also inaccurately reflect the dependencies of specific projects. This issue, known as “[manifest confusion](https://www.bleepingcomputer.com/news/security/npm-ecosystem-at-risk-from-manifest-confusion-attacks/)” may allow bad actors to inject nefarious code or artificially inflate the impact of third-party dependencies, often for nefarious purposes.

The arduous task of identifying and addressing these spam packages typically falls to security firms or altruistic individuals, neither of which offers a scalable solution to combat spam attacks in open-source.

Proof of Contribution is an algorithm specifically designed to address the identification and isolation of spam packages and ensure only impactful projects receive a fair reward. The details of the Proof of Contribution algorithm will be the subject of a dedicated technical paper.

### Network Participants

In this white paper, we distinguish participants through their contributions. Some may contribute code or verify contributed code. Others may support developers and their reputation.

#### Package Maintainers

tea assumes that package creators maintain their work. In this white paper, we’ll refer to them as “package maintainers”.

Package maintainers must make sure their software continues to deliver increasing value as the industry evolves. They are pillars of open-source communities who need to be empowered and rewarded for their ongoing contributions. However, a package maintainer may decide to discontinue their maintenance efforts or realize they cannot operate at a pace that matches the project’s users’ expectations. To ensure continuity, they must have the ability to transfer control of their project to another developer or group of developers, thereby appointing them as maintainers and granting them ownership and control over existing and future rewards associated with the project.

Similarly, a developer may decide to take on the role of package maintainer by forking the existing project and registering a new one which they will maintain moving forward, thus becoming package maintainers. Once registered, projects whose teaRank exceeds a governance defined threshold start receiving rewards from the tea Protocol through the protocol's Proof of Contribution algorithm, in parallel with the legacy forked project. As the open-source community shifts away from the legacy project in favor of its newer iteration, the Proof of Contribution algorithm will gradually decrease the rewards allocated to the legacy project while boosting those assigned to the new forked project.

It is essential to provide developer communities with the right tools to determine which projects are being maintained and their past and present maintainers’ reputation and quality of work. We’ve too often seen open-source work being tampered with and the efforts of many ruined by bad actors. Although the work of these bad actors is largely discovered and remediated, it is often not until significant damage has been incurred through financial or data loss. Take for example the [event-stream npm package](https://medium.com/intrinsic-blog/compromised-npm-package-event-stream-d47d08605502) that was downloaded over 1.5 million times per week and relied upon by over 1,500 packages when a hacker managed to penetrate the open-source project, gain the trust of its original author, and modify event-stream to depend on a malicious package that would exfiltrate bitcoin wallet credentials to a third-party server. Although tools may help detect some of these attacks, they cannot always be relied upon, which creates an entire community dependent upon each other’s diligence and willingness to share their findings.

We propose introducing incentives via the TEA token described in the "[TEA token](white-paper.md#tea-token)" section, to encourage open-source communities to report their findings constructively, so package maintainers can address them before they are exploited.

#### Package Users and tea community members

“Package users” are software developers focused on solving a specific problem. They often look in the open-source community for the tools they need to experiment quickly and iterate at little to no cost, directly benefiting from the work of package maintainers.

With more than 10 million packages accessible across the top 30 package managers, the absence of universal value attribution to open-source projects can transform the selection of secure and efficient packages for development into a high-risk and daunting endeavor. With no discernible means to attribute and measure value, how do package users efficiently select secure packages for their development?

We believe that the tea Protocol’s Proof of Contribution algorithm combined with other incentives can provide package users with the information they need to select the foundation of their own project quickly and thoughtfully.

#### Project Supporters

In Web 2.0 and web3, a subset of package users, often called “sponsors”, has chosen to support package maintainers through donations or other forms of remuneration; however, this has rarely been the case.

These “project supporters” are organizations or open-source project users who use open-source software to build their commercial products, philanthropists looking to support the ecosystem, or entrepreneurs looking to fund teams to develop components of a larger system.

tea proposes to extend the communities of open-source project supporters to the entire tea community, whether organizations, developers, users, or tech enthusiasts. tea’s goal is to implement decentralized incentive mechanisms through unique use cases of the TEA token for any member of the tea community to contribute to the perpetual sustainability and continuous growth of open-source. Project supporters are free to decide which projects or package maintainers they want to support based on their work, beliefs, or any criteria and metric that would influence their decision. Additionally, project supporters are free to decide how they want to support these projects.

Sponsorship can be an effective system to support open-source development; however, these sponsorships do not typically extend to all dependencies. This limitation benefits favorites and gets in the way of innovation and software building. To strive as the foundation of software development, open-source must empower all developers, whether beginners or experts, across all layers in the tower.

To bolster the sustainability and integrity of the software supply chain and enable open-source developers to capture the value they create, tea aims to establish mechanisms where support benefits all aspects of a project. Support from backers will cascade through a project's dependencies, from the top to the base of the tree. This implicitly places trust in the package maintainer's ability to make informed choices about their stack, thus enhancing their reputation.

<figure><img src=".gitbook/assets/figure-2.png" alt=""><figcaption><p>Figure 2 - Rewards distribution across dependencies</p></figcaption></figure>

#### tea Tasters

As new projects or new versions of existing projects are released, the validity of the work needs to be provably demonstrated. This information is critical for package users to decide if they can trust the package and its maintainers. Within the tea Protocol, this function is provided by the “tea tasters”.

tea tasters, typically, are experienced software developers willing to dedicate some of their time to check the claims associated with a package (functionality, security, [semantic versioning](https://semver.org/), license accuracy, etc.) and stake both their reputation and TEA tokens to demonstrate the outcome of their research and support their reviews. In the tea Protocol, “staking your tea” is the process of locking TEA tokens to support your reviews, potentially earning rewards or facing penalties based on the consensus about the quality of your reviews. tea tasters also have the option to report bugs or vulnerabilities to package managers confidentially. Valid reports result in rewards from the project's treasury, while invalid reports lead to the forfeiture of the tea taster's stake. Lastly, if package maintainers ignore these reported issues, it triggers penalties, or “slashing”, for the project's treasury.

Like project supporters, tea tasters can influence a project and package maintainer’s reputation; however, their impact is more significant given their role in validating a project’s security, functionality, and quality. tea tasters will also need to build their reputation to support their claims. The quality of their work and the TEA tokens they put at risk as they stake their reviews combined with other external data sources will build each tea taster’s reputation, bringing more value to their work. See the "[Package & Package Maintainer Reputation](white-paper.md#package-and-package-maintainer-reputation)" section for more details on the mechanisms used to influence a project and package maintainer’s reputation.

### Project Registration and Proof of Contribution Rewards

The registration of a project release requires multiple transactions to occur atomically. Specifically:

* The package maintainer must register the project with the decentralized registry,
* The tea Protocol must instantiate a project treasury owned, controlled, and configured by the package maintainers according to the rules defined by the package maintainers, and
* The tea Protocol must register the treasury’s unique name with the Ethereum Naming Service, or ENS, thus simplifying all user interactions with the treasury.

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

A majority of the TEA tokens created by the protocol are used as incentives to encourage package maintainers, users, and supporters to perform activities that provide value to the decentralized network. The distribution of TEA tokens to various stakeholders within the protocol is dictated by a “distribution schedule.”

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
