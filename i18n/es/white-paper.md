---
descripción: Versión 2.1.0
---

# white-paper

## Un Protocolo Descentralizado para que Desarrolladores de Código Abierto Capturen el Valor que Crean

* Max Howell
* Thomas Borrel
* Timothy Lewis
* Troy Wong

## Resumen

Un sistema en el que los desarrolladores de código abierto puedan recibir recompensas proporcionales a sus contribuciones mejoraría la sostenibilidad e integridad de la cadena de suministro de software. Un protocolo descentralizado, asegurado por la reputación y los incentivos, podría lograr esto facilitando la acumulación de valor de vuelta a los desarrolladores que mantienen bases de código abierto como una utilidad pública, promoviendo así la innovación futura y el crecimiento dentro del ecosistema de código abierto. Los mantenedores de paquetes registrarán sus proyectos en un registro impulsado por una blockchain tolerante a faltas bizantinas. El algoritmo único de “Prueba de Contribución” del Protocolo tea determinará la contribución e impacto de cada proyecto en la utilidad y salud del sistema. Los proyectos registrados recibirán recompensas del Protocolo tea proporcionales a su contribución, estarán asegurados mediante staking, se beneficiarán de un sistema de reputación que abarca proyectos y colaboradores, y tendrán la opción de permitir que las comunidades gobiernen sus regiones del ecosistema de código abierto, independientemente de agendas externas. El Protocolo tea incentivará el mantenimiento del código abierto permitiendo a los participantes de la red que registraron sus proyectos y cumplen con las reglas de la red recibir recompensas y contribuir a su reputación y la de sus proyectos. Si se encuentran problemas de seguridad o desarrollo, los desarrolladores pueden hacer reclamos respaldados por evidencia contra el paquete, y puede ocurrir un slashing. Los miembros de la comunidad de código abierto pueden revisar paquetes por problemas de calidad, y el protocolo puede responder a estas revisiones realizando eventos de slashing proporcionales.

## Descargo de Responsabilidad

La información presentada en este documento técnico es de naturaleza preliminar. En consecuencia, ni los autores ni ninguna de sus respectivas afiliadas asumen responsabilidad alguna de que la información aquí presentada sea definitiva o correcta y cada uno de los anteriores rechaza, en la medida máxima permitida por la ley aplicable, toda responsabilidad, ya sea que surja en agravio, contrato u otra forma, con respecto a este documento técnico. Ni este documento técnico ni nada de lo que contiene formarán la base de o serán considerados en conexión con, o actuarán como un incentivo para entrar en cualquier contrato o compromiso de cualquier tipo.

Nada en este documento técnico constituye una oferta de venta o una solicitud de compra de los tokens aquí discutidos. En cualquier caso, si este documento técnico fuera considerado como tal oferta o solicitud, ninguna oferta o solicitud está intencionada o transmitida por este documento técnico en ninguna jurisdicción donde esto sea ilegal, donde dicha oferta o solicitud requiriera licencia o registro, o donde tal oferta o solicitud esté sujeta a restricciones. En particular, cualquier token aquí discutido no ha sido, y, a la fecha de emisión de este documento técnico, no se pretende que sea, registrado bajo las leyes de valores o leyes similares de ninguna jurisdicción, ya sea que dicha jurisdicción considere tales tokens como un valor o instrumento similar y no se puede ofrecer o vender en ninguna jurisdicción donde hacerlo constituiría una violación de las leyes relevantes de dicha jurisdicción. No compre ningún token a menos que esté preparado para perder el precio total de la compra. Es una compra de alto riesgo y es poco probable que esté protegido si algo sale mal.

## Licencia

Este documento está disponible bajo la licencia [Creative Commons Attribution-ShareAlike 4.0 International license](https://creativecommons.org/licenses/by-sa/4.0/).

## Introducción

El Internet moderno está predominantemente compuesto por proyectos de código abierto y ha sido así desde su inicio. Los proyectos de código abierto se desarrollan y mantienen a través de la colaboración entre comunidades de desarrolladores globales, y sus bases de código están disponibles para que cualquiera las utilice como un bien público. En los últimos 80 años (se cree generalmente que el primer ejemplo de software libre y de código abierto se lanzó en 1953), el software de código abierto ha evolucionado desde ser el producto de aficionados tecnológicos de nicho hasta la infraestructura sobre la cual se ha construido toda innovación. A pesar de la importancia del software de código abierto, los desarrolladores que crean y mantienen la base de código como un servicio público no reciben recompensas fungibles por su inmensa contribución como innovadores y mantenedores.

El software empresarial, que se ha convertido en una industria de miles de millones de dólares, se construye sobre la base establecida por el código abierto. Sin embargo, casi no hay acumulación de valor de vuelta a los individuos que mantienen desinteresadamente sus cimientos. Y aunque se han hecho fortunas a partir de él, el software de código abierto se crea y mantiene principalmente como un servicio público sin medios viables para que los desarrolladores capturen el valor que crean.

Creemos que el potencial del Internet moderno ha sido limitado al depender de un pequeño porcentaje de los ingenieros del mundo para mantener el software de código abierto puramente por altruismo. El código abierto es un trabajo de amor a menudo obstaculizado por la falta de incentivos significativos para los mantenedores principales. Los desarrolladores de código abierto deben elegir entre un trabajo diario que proporciona salarios dignos o mantener la base misma del software empresarial. La falta de incentivos resulta en que proyectos realmente valiosos nunca alcancen su potencial mientras que otros sufren de problemas de seguridad debido a la falta de mantenimiento a lo largo del ciclo de vida del software. Para desbloquear todo el potencial del código abierto, necesitamos un método universal para evaluar el "valor justo" de los proyectos de código abierto, permitiendo a los desarrolladores de código abierto capturar el valor que crean facilitando la entrada de capital a la comunidad de código abierto, todo sin alterar los principios fundamentales de cómo se desarrolla y utiliza el código abierto.

Las empresas a menudo envuelven modelos de negocio alrededor del código abierto, generando ingresos directamente del trabajo de los desarrolladores benevolentes y también dependiendo de ellos para corregir errores a medida que ocurren. Las bases de código de código abierto ofrecen funcionalidad central plug-and-play para las empresas; sin embargo, las vulnerabilidades de software pueden representar un riesgo inmenso para las aplicaciones construidas sobre código abierto. Un gran ejemplo es un incidente reciente que involucra una vulnerabilidad crítica de seguridad en Log4j, un paquete de la [Apache Software Foundation](https://www.apache.org/) que se encontró en muchos software y servicios comerciales empleados por empresas y gobiernos. En noviembre de 2021, un investigador de seguridad que trabajaba para [Alibaba Group Holding Ltd.](https://www.alibabagroup.com/) reported vulnerability [CVE-2021-44228](https://nvd.nist.gov/vuln/detail/CVE-2021-44228), que recibió la puntuación base más alta posible de la Apache Software Foundation. Amit Yoran, Director Ejecutivo de [Tenable](https://www.tenable.com/) y director fundador del Equipo de Preparación para Emergencias Informáticas de los Estados Unidos (US-CERT), describió esta vulnerabilidad como “["la vulnerabilidad más crítica y grande de la última década"](https://www.reuters.com/article/usa-cyber-vulnerability-idCNL1N2SY2PA)”. Se desató el pánico y los pocos voluntarios que mantenían este paquete se vieron públicamente criticados por el fallo. Tras abordar la indignación con un humilde llamado a la justicia, los sistemas se parchearon. Las empresas y los gobiernos eventualmente se dieron cuenta de que Log4j, un paquete utilizado por una amplia gama de sistemas críticos durante dos décadas, fue mantenido por unos pocos voluntarios no remunerados, los mismos héroes anónimos que entraron en acción a pesar de [los abusos de la industria](https://twitter.com/yazicivo/status/1469349956880408583) y trabajaron incansablemente para abordar la vulnerabilidad.

Lamentablemente, Log4j está lejos de ser el único ejemplo. core-js se descarga 30 millones de veces por semana como la base de cada aplicación de Node.js, pero también está apenas financiado, lo que podría obligar a su mantenedor principal [a alejarse del proyecto o incluso cambiar la licencia a código cerrado](https://www.thestack.technology/core-js-maintainer-denis-pusharev-license-broke-angry/). Recientemente, varios desarrolladores principales de bitcoin renunciaron, citando, entre otras razones, la falta de compensación financiera por su decisión.

<figure><img src=".gitbook/assets/xkcd-dependency (1).png" alt=""><figcaption><p>Figura 1 - Dependencia - Fuente:<a href="https://xkcd.com/2347/">https://xkcd.com/2347/</a></p></figcaption></figure>

Ha habido múltiples intentos de proporcionar estructuras de incentivos, que típicamente involucran sistemas de patrocinio y recompensas. El patrocinio hace posible que los consumidores de código abierto donen a los proyectos que prefieren. Sin embargo, imagina el código abierto como una torre de ladrillos donde las capas inferiores son largamente olvidadas, pero aún mantenidas por ingenieros dedicados y en las que confían aún más desarrolladores. Solo los proyectos en la parte superior de la torre son típicamente conocidos y reciben patrocinio. Esta selección sesgada lleva a que los ladrillos esenciales que sostienen la torre no atraigan donaciones, mientras que los favoritos reciben más de lo que necesitan. Las recompensas permiten a los consumidores de proyectos proponer pagos para que los desarrolladores construyan características específicas, recompensando así solo a los proyectos por hacer cosas que pueden no estar en su mejor interés. Y, nuevamente, solo recompensando a los favoritos.

En tea, hemos visto demasiados proyectos de código abierto sufrir por estos intentos fallidos de apoyar a la comunidad de código abierto y hemos hecho de nuestra misión mejorar la sostenibilidad e integridad de la cadena de suministro de software permitiendo a los desarrolladores de código abierto capturar el valor que crean. 

En este documento, proponemos tea — un sistema descentralizado para

1. calcular y asignar una “[Prueba de Contribución](white-paper.md#proof-of-contribution)” cada proyecto de código abierto en relación con todo el ecosistema,
2. asegurando que los proyectos de software de código abierto estén bien mantenidos,
3. empoderando a los desarrolladores de código abierto con recompensas equitativas proporcionales a sus contribuciones en todo el ecosistema, logrado a través de la implementación del algoritmo de incentivos de tea en cada entrada del registro de tea, e
4. incentivando a los participantes de la red a seguir prácticas de divulgación responsable de vulnerabilidades y errores.

## Componentes

Un desarrollador de software que construye una aplicación necesita cuatro cosas: un navegador, una terminal, un editor y un gestor de paquetes. De estos cuatro, el gestor de paquetes es lo que controla las herramientas y marcos que un desarrollador necesita para construir su producto. Esta capa es donde vemos el potencial para cambiar cómo se asegura y se recompensa el código abierto.

### El Gestor de Paquetes

El gestor de paquetes sabe qué software de código abierto necesita un paquete o aplicación para funcionar, desde la cima de la torre hasta su base. Cada proyecto, junto con cada versión empaquetada, documenta meticulosamente todos los componentes esenciales y sus correspondientes versiones.

Sabe que la cima de la torre selecciona cuidadosamente sus dependencias, y que esta selección cuidadosa continúa hacia abajo. El gestor de paquetes está ubicado de manera única en el conjunto de herramientas del desarrollador para permitir una distribución de valor automatizada y precisa basada en la contribución real y práctica.

Proponemos un registro descentralizado e inmutable diseñado para distribuir valor basado en el “Prueba de Contribución” único del Protocolo tea, un algoritmo que determina la contribución de cada proyecto y su impacto en la utilidad y salud del sistema. El valor puede entrar en el gráfico en puntos ápice, como bibliotecas esenciales, y distribuirse a las dependencias de esos paquetes y sus dependencias de manera recursiva, ya que el registro conoce todo el graph de código abierto.

Además, creemos que la información proporcionada por el Prueba de Contribución del protocolo debe estar disponible para que los desarrolladores evalúen si pueden confiar en un proyecto y su autor. Esta información puede basarse en la reputación, el reconocimiento de la comunidad, datos obtenidos de sistemas de identidad descentralizada ("[DID](https://www.w3.org/TR/did-core/)") otros gestores de paquetes o mecanismos de incentivos que potencialmente dependen de que los participantes de la red pongan valor en riesgo.

Predecimos que la combinación de herramientas, información y recompensas de tea incentivará justamente a los desarrolladores, ayudando a asegurar la cadena de suministro de software, estimulando el crecimiento del software de código abierto y fomentando la innovación.

### El Registro Descentralizado

Cada gestor de paquetes tiene su propio registro de paquetes, duplicando repetidamente los mismos metadatos. En algunos casos, este registro puede incluir [información que difiere del manifiesto del proyecto](https://www.bleepingcomputer.com/news/security/npm-ecosystem-at-risk-from-manifest-confusion-attacks/), permitiendo así que actores maliciosos potencialmente inyecten código nefasto sin que el usuario lo sepa. Es hora de que exista un registro único, integral y definitivo diseñado y gobernado por las comunidades que dependen de él. Este registro descentralizado e inmutable podría proporcionar seguridad, estabilidad y prevenir intenciones malévolas.

Internet funciona con decenas de miles de componentes esenciales de código abierto. Es notable que hasta ahora, los incidentes causados por la eliminación de infraestructura esencial de código abierto hayan sido mínimos. El más famoso fue la [la eliminación de una dependencia de NPM left-pad](https://www.theregister.com/2016/03/23/npm\_left\_pad\_chaos/) en 2016, que se propagó a sistemas de integración continua y despliegue continuo, dejando a los desarrolladores en la estacada durante días. Este evento demostró que Internet en sí está basado en sistemas de desarrollo frágiles. Otros ejemplos involucraron la participación activa o intencional de los mantenedores de paquetes saboteando sus paquetes populares (ver [colors.js and faker.js](https://fossa.com/blog/npm-packages-colors-faker-corrupted/), así como [node-ipc](https://www.lunasec.io/docs/blog/node-ipc-protestware/)), o actores maliciosos buscando beneficiarse pretendiendo ayudar a mantener paquetes y corrompiéndolos para robar, por ejemplo, claves privadas de Bitcoin (Ver [event-stream](https://github.com/dominictarr/event-stream/issues/116)), o paquetes maliciosos con errores intencionales de ortografía, también conocidos como “[typosquatting](https://en.wikipedia.org/wiki/Typosquatting)”, con la esperanza de engañar a los usuarios para que los instalen, por ejemplo [crossenv vs. cross-env NPM packages](https://blog.npmjs.org/post/163723642530/crossenv-malware-on-the-npm-registry.html).

La integridad del software necesita ser garantizada a medida que la industria avanza hacia un futuro donde los activos digitales son parte del software. No podemos continuar dejándonos vulnerables a actores maliciosos que modifican el software.

La mayoría de las herramientas que llamamos gestores de paquetes no pueden garantizar que estos paquetes incorporados en las aplicaciones y dApps sean el código de código abierto sin alterar publicado por sus autores originales. [GitHub de Microsoft ha encontrado que el 17% de las vulnerabilidades en el software fueron plantadas con fines maliciosos](https://www.zdnet.com/article/open-source-software-how-many-bugs-are-hidden-there-on-purpose/), con algunas permaneciendo sin ser detectadas durante períodos prolongados (Ver [Webmin 1.890](https://threatpost.com/backdoor-found-in-utility-for-linux/147581/)).

Un registro descentralizado global, complementado por un sistema de reputación y respaldado por incentivos diseñados para exponer a los actores maliciosos y recompensar a los buenos, puede proporcionar las garantías que las comunidades de desarrolladores han estado buscando para asegurar la cadena de suministro de software.

### El Sistema de Almacenamiento

Los proyectos de código abierto ofrecen una amplia gama de funcionalidades, algunas de las cuales pueden ser restringidas o no deseadas. La encriptación es un excelente ejemplo de esto. Un caso de uso crítico para la encriptación es el apoyo a la privacidad de las personas en todo el mundo. Sin embargo, la encriptación también puede ser utilizada con fines nefastos (ver [Phantom Secure](https://www.fbi.gov/news/stories/phantom-secure-takedown-031618), desmantelada por agencias de aplicación de la ley en marzo de 2018) o puede ser comprometida para apoyar actividades de las fuerzas del orden (ver [Operation Ironside (AFP), Operation Greenlight (Europol), and Operation Trojan Shield (FBI)](https://www.europol.europa.eu/media-press/newsroom/news/800-criminals-arrested-in-biggest-ever-law-enforcement-operation-against-encrypted-communication) donde el FBI operó una plataforma de comunicación “encriptada”, AN0M, y convenció a criminales a usar sus teléfonos “encriptados” para comunicación segura).

Las amplias aplicaciones de la encriptación la han hecho un caso de uso perfecto para el software de código abierto y un gran ejemplo de que cualquier solución que almacene paquetes debe ser a prueba de manipulaciones y resistente a la censura. tea es un protocolo descentralizado que no pretende filtrar ni sancionar paquetes basados en su funcionalidad. Aunque la gobernanza de tea puede optar por eliminar paquetes maliciosos comprobados (ver la [sección de gobernanza](white-paper.md#governance) para más información), es crítico para el sistema tea conectarse con múltiples sistemas de almacenamiento, incluyendo aquellos descentralizados que demuestren que un paquete no está alterado y correctamente replicado. Los mantenedores de paquetes pueden elegir el sistema de almacenamiento más adecuado para sus necesidades para almacenar y distribuir sus paquetes de forma segura.

## Resumen del Protocolo

Diseñar un protocolo para recompensar las contribuciones de código abierto presenta desafíos formidables. El software de código abierto, al ser universalmente accesible, es susceptible a la mala atribución, apropiación y manipulación maliciosa. Sin embargo, la comunidad de código abierto ha demostrado consistentemente su voluntad de destacar a los buenos actores y exponer a los malos actores. Históricamente, la energía dedicada a revisar y comentar sobre las contribuciones de otros desarrolladores ha sido estrictamente voluntaria, a pesar de lo que consume tiempo y lo crucial que puede ser informar y defender los hallazgos.

Nuestra intención es crear un protocolo descentralizado asegurado por la reputación y los incentivos que mejoren la sostenibilidad e integridad de la cadena de suministro de software permitiendo a los desarrolladores de código abierto capturar el valor que crean de una manera sin confianza. Creemos que las recompensas adecuadas para las contribuciones de código abierto no pueden tener éxito sin un sistema de reputación y la capacidad de los miembros de la comunidad para comunicar sus hallazgos y apoyar (o disentir) un proyecto o el trabajo de un desarrollador. Además, debemos proporcionar a los desarrolladores herramientas para acceder y contribuir a este sistema de reputación. Herramientas que incluyan acceso visual y programable simple a la versión y reputación de todas las dependencias dentro de sus proyectos.

La transparencia en los tokens TEA en staking por los miembros de la comunidad para apoyar cada proyecto mejora la reputación de cada proyecto, de manera similar a cómo la cantidad de tokens que un mantenedor de paquetes pone en staking en su propio trabajo señala su compromiso con él. Estos puntos de datos combinados ayudarán a informar un sistema de reputación para todos los miembros de la comunidad y facilitarán la elección. Como el [event-stream package hack](https://medium.com/intrinsic-blog/compromised-npm-package-event-stream-d47d08605502) no se realizó a través del paquete en sí, sino a través de una de sus dependencias, la visibilidad en todas las capas de dependencias será vital para construir este sistema sin confianza. Sin embargo, consideraciones como los costos de computación y transacción (“gas”) necesitarán tener prioridad a medida que el sistema se diseñe y construya.

Nuestro objetivo es recompensar tanto a los desarrolladores de Web 2.0 como a los de web3. Las complejidades y especificidades de cada pila hacen que el seguimiento de instalaciones de paquetes pueda fácilmente caer víctima de uno o más actores maliciosos. Esto incluye "comprar" instalaciones para inflar artificialmente los números. Un escenario aún peor sería introducir cambios fundamentales en la naturaleza del software de código abierto creando fricciones innecesarias con claves de licencia u otros mecanismos de seguimiento de implementación. Para proporcionar la cobertura más amplia, creemos que las recompensas no deben depender de una noción simplista de seguimiento de instalaciones, sino más bien de mecanismos de incentivo que fomenten la presentación de paquetes de calidad y la denuncia de paquetes nefastos o de alto riesgo. Por último, muchos paquetes dependen de dependencias comunes. Por ejemplo, [lodash](https://www.npmjs.com/package/lodash) tiene 176,308 dependientes de código abierto, mientras que [chalk](https://www.npmjs.com/package/chalk) tiene 100,247 dependientes o [log4js](https://www.npmjs.com/package/log4js/) tiene 3,809 dependientes. A medida que se crean más paquetes utilizando las mismas dependencias, ¿cómo aseguramos que las recompensas se distribuyan de manera justa y equitativa? ¿Cómo garantizamos que las dependencias más utilizadas sean recompensadas sin dejar de lado a los paquetes y desarrolladores nuevos o emergentes? ¿Cómo aseguramos que el sistema de incentivos no termine desviando a los desarrolladores de lenguajes de nicho para centralizarlos donde los incentivos son mejores? Pero también, como desarrolladores, ¿cómo identificamos los paquetes con más dependientes para construir alternativas - versiones más ligeras, más eficientes y mejor codificadas de estos paquetes?

En tea, creemos que la falta de visibilidad e incentivos ha impedido la evolución del software de código abierto. Respaldados por los incentivos y recompensas adecuados, más desarrolladores estarán en posición de construir, mejorar y aumentar el software de código abierto para el beneficio del mundo.

### Prueba de Contribución

En este documento técnico, proponemos la "Prueba de Contribución", un novedoso mecanismo de consenso diseñado para cuantificar el impacto de todos los proyectos en todos los sistemas de código abierto.

Prueba de Contribución asigna una puntuación dinámica, denominada teaRank del proyecto, basada en la orientación de cada proyecto de código abierto dentro de, y su utilización desde, el ecosistema de código abierto más amplio a lo largo del tiempo.

Creemos que este enfoque beneficia al software fundamental alejado de la capa de aplicación (que tiende a ser la capa más visible para el público y atrae la mayor parte del interés) y extiende el mecanismo de recompensa para asegurar que todos los componentes de un proyecto, desde la cima del árbol hasta su base, sean recompensados por su contribución.

Para calcular la puntuación de cada proyecto, teaRank se basa en los fundamentos establecidos por el algoritmo [Google's PageRank](https://en.wikipedia.org/wiki/PageRank). PageRank de Google es el componente definitorio del producto de búsqueda y se basa en la estructura similar a un graph de las páginas web. PageRank, en su esencia, es un algoritmo de distribución de probabilidad que asigna puntuaciones a los nodos en un graph, representando la probabilidad de que algo que navegue al azar por el graph llegue a un nodo particular. Este algoritmo es particularmente efectivo en una estructura de datos similar a un graph, como internet, porque cuantifica el impacto de cada nodo (o página web) basado en la cantidad y calidad de los bordes (enlaces) hacia él. Este algoritmo fue modificado con el tiempo para discernir mejor la topología de la web e identificar enlaces fraudulentos entre páginas web, permitiendo mitigar varios ataques.

Dado que la estructura de graph de internet y el registro descentralizado del Protocolo tea comparten notables similitudes, PageRank inicialmente pareció ser un enfoque prometedor para el análisis. Sin embargo, tras experimentación adicional, se hizo evidente que las estrategias anti-spam de PageRank eran menos efectivas cuando se aplicaban a código abierto.

La distinción clave radica en los metadatos del software de código abierto. A diferencia de las páginas web, la mayoría de los metadatos de paquetes de código abierto, como líneas de código y mensajes de commit, son generados por el usuario y susceptibles de ser falsificados. Los gestores de paquetes son vulnerables a campañas de spam, donde actores maliciosos inundan el registro con paquetes que contienen enlaces de phishing u otro contenido dañino. Los registros de los gestores de paquetes también pueden reflejar de manera inexacta las dependencias de proyectos específicos. Este problema, conocido como “[manifest confusion](https://www.bleepingcomputer.com/news/security/npm-ecosystem-at-risk-from-manifest-confusion-attacks/)” puede permitir a los actores maliciosos inyectar código nefasto o inflar artificialmente el impacto de dependencias de terceros, a menudo con fines nefastos.

La ardua tarea de identificar y abordar estos paquetes de spam generalmente recae en firmas de seguridad o individuos altruistas, ninguno de los cuales ofrece una solución escalable para combatir ataques de spam en código abierto.

Prueba de Contribución es un algoritmo específicamente diseñado para abordar la identificación y aislamiento de paquetes de spam y asegurar que solo los proyectos impactantes reciban una recompensa justa. Los detalles del algoritmo de Prueba de Contribución serán el tema de un documento técnico dedicado.

### Participantes de la Red

En este documento técnico, distinguimos a los participantes por sus contribuciones. Algunos pueden contribuir con código o verificar el código contribuido. Otros pueden apoyar a los desarrolladores y su reputación.

#### Mantenedores de Paquete

tea asume que los creadores de paquetes mantienen su trabajo. En este documento, nos referiremos a ellos como "mantenedores de paquetes".

Los mantenedores de paquetes deben asegurarse de que su software continúe entregando un valor creciente a medida que evoluciona la industria. Son pilares de las comunidades de código abierto que necesitan ser empoderados y recompensados por sus contribuciones continuas. Sin embargo, un mantenedor de paquetes puede decidir discontinuar sus esfuerzos de mantenimiento o darse cuenta de que no pueden operar al ritmo que las expectativas de los usuarios del proyecto requieren. Para garantizar la continuidad, deben tener la capacidad de transferir el control de su proyecto a otro desarrollador o grupo de desarrolladores, nombrándolos como mantenedores y otorgándoles propiedad y control sobre las recompensas existentes y futuras asociadas con el proyecto.

De manera similar, un desarrollador puede decidir asumir el papel de mantenedor de paquetes al bifurcar el proyecto existente y registrar uno nuevo que mantendrán en adelante, convirtiéndose así en mantenedores de paquetes. Una vez registrado, los proyectos cuyo teaRank exceda un umbral definido por la gobernanza comienzan a recibir recompensas del Protocolo tea a través del algoritmo de Prueba de Contribución del protocolo, en paralelo con el proyecto bifurcado legado. A medida que la comunidad de código abierto se aleja del proyecto legado en favor de su nueva iteración, el algoritmo de Prueba de Contribución disminuirá gradualmente las recompensas asignadas al proyecto legado mientras aumenta las asignadas al nuevo proyecto bifurcado.

Es esencial proporcionar a las comunidades de desarrolladores las herramientas adecuadas para determinar qué proyectos se están manteniendo y la reputación y calidad del trabajo de sus mantenedores pasados y presentes. Hemos visto con demasiada frecuencia cómo el trabajo de código abierto es manipulado y los esfuerzos de muchos arruinados por actores maliciosos. Aunque el trabajo de estos actores maliciosos generalmente se descubre y se remedia, a menudo no es hasta que se ha incurrido en daños significativos a través de pérdidas financieras o de datos. Tomemos como ejemplo el [event-stream npm package](https://medium.com/intrinsic-blog/compromised-npm-package-event-stream-d47d08605502) que fue descargado más de 1.5 millones de veces por semana y en el que confiaban más de 1,500 paquetes cuando un hacker logró penetrar en el proyecto de código abierto, ganar la confianza de su autor original y modificar event-stream para que dependiera de un paquete malicioso que exfiltrara credenciales de billetera de bitcoin a un servidor de terceros. Aunque las herramientas pueden ayudar a detectar algunos de estos ataques, no siempre se pueden confiar, lo que crea una comunidad entera dependiente de la diligencia de los demás y la voluntad de compartir sus hallazgos.

Proponemos introducir incentivos a través del token TEA descrito en la sección "[token TEA](white-paper.md#tea-token)", para alentar a las comunidades de código abierto a informar sus hallazgos de manera constructiva, para que los mantenedores de paquetes puedan abordarlos antes de que sean explotados.

#### Usuarios de Paquetes y miembros de la comunidad tea

Los "usuarios de paquetes" son desarrolladores de software enfocados en resolver un problema específico. A menudo buscan en la comunidad de código abierto las herramientas que necesitan para experimentar rápidamente e iterar con poco o ningún costo, beneficiándose directamente del trabajo de los mantenedores de paquetes.

Con más de 10 millones de paquetes accesibles a través de los 30 principales gestores de paquetes, la ausencia de una atribución de valor universal a los proyectos de código abierto puede transformar la selección de paquetes seguros y eficientes para el desarrollo en un esfuerzo arriesgado y desalentador. Sin medios discernibles para atribuir y medir el valor, ¿cómo seleccionan los usuarios de paquetes de manera eficiente paquetes seguros para su desarrollo?

Creemos que el algoritmo de Prueba de Contribución del Protocolo tea, combinado con otros incentivos, puede proporcionar a los usuarios de paquetes la información que necesitan para seleccionar rápidamente y con reflexión la base de su propio proyecto.

#### Participantes del Proyecto

En Web 2.0 y web3, un subconjunto de usuarios de paquetes, a menudo llamados "patrocinadores", ha optado por apoyar a los mantenedores de paquetes a través de donaciones u otras formas de remuneración; sin embargo, esto raramente ha sido el caso.

Estos "participantes del proyecto" son organizaciones o usuarios de proyectos de código abierto que utilizan software de código abierto para construir sus productos comerciales, filántropos que buscan apoyar el ecosistema, o emprendedores que buscan financiar equipos para desarrollar componentes de un sistema más grande.

tea propone extender las comunidades de participantes de proyectos de código abierto a toda la comunidad tea, ya sean organizaciones, desarrolladores, usuarios o entusiastas de la tecnología. El objetivo de tea es implementar mecanismos de incentivos descentralizados a través de casos de uso únicos del token TEA para que cualquier miembro de la comunidad tea contribuya a la sostenibilidad perpetua y el crecimiento continuo del código abierto. Los participantes del proyecto son libres de decidir qué proyectos o mantenedores de paquetes quieren apoyar en función de su trabajo, creencias o cualquier criterio y métrica que influya en su decisión. Además, los participantes del proyecto son libres de decidir cómo quieren apoyar estos proyectos.

El patrocinio puede ser un sistema efectivo para apoyar el desarrollo de código abierto; sin embargo, estos patrocinios no suelen extenderse a todas las dependencias. Esta limitación beneficia a los favoritos y obstaculiza la innovación y la construcción de software. Para esforzarse como la base del desarrollo de software, el código abierto debe empoderar a todos los desarrolladores, ya sean principiantes o expertos, en todas las capas de la torre.


#### Usuarios de Paquetes y miembros de la comunidad tea

Los "usuarios de paquetes" son desarrolladores de software enfocados en resolver un problema específico. A menudo buscan en la comunidad de código abierto las herramientas que necesitan para experimentar rápidamente e iterar con poco o ningún costo, beneficiándose directamente del trabajo de los mantenedores de paquetes.

Con más de 10 millones de paquetes accesibles a través de los 30 principales gestores de paquetes, la ausencia de una atribución de valor universal a los proyectos de código abierto puede transformar la selección de paquetes seguros y eficientes para el desarrollo en un esfuerzo arriesgado y desalentador. Sin medios discernibles para atribuir y medir el valor, ¿cómo seleccionan los usuarios de paquetes de manera eficiente paquetes seguros para su desarrollo?

Creemos que el algoritmo de Prueba de Contribución del Protocolo tea, combinado con otros incentivos, puede proporcionar a los usuarios de paquetes la información que necesitan para seleccionar rápidamente y con reflexión la base de su propio proyecto.

Participantes del Proyecto
En Web 2.0 y web3, un subconjunto de usuarios de paquetes, a menudo llamados "patrocinadores", ha optado por apoyar a los mantenedores de paquetes a través de donaciones u otras formas de remuneración; sin embargo, esto raramente ha sido el caso.

Estos "participantes del proyecto" son organizaciones o usuarios de proyectos de código abierto que utilizan software de código abierto para construir sus productos comerciales, filántropos que buscan apoyar el ecosistema, o emprendedores que buscan financiar equipos para desarrollar componentes de un sistema más grande.

tea propone extender las comunidades de participantes de proyectos de código abierto a toda la comunidad tea, ya sean organizaciones, desarrolladores, usuarios o entusiastas de la tecnología. El objetivo de tea es implementar mecanismos de incentivos descentralizados a través de casos de uso únicos del token TEA para que cualquier miembro de la comunidad tea contribuya a la sostenibilidad perpetua y el crecimiento continuo del código abierto. Los participantes del proyecto son libres de decidir qué proyectos o mantenedores de paquetes quieren apoyar en función de su trabajo, creencias o cualquier criterio y métrica que influya en su decisión. Además, los participantes del proyecto son libres de decidir cómo quieren apoyar estos proyectos.

El patrocinio puede ser un sistema efectivo para apoyar el desarrollo de código abierto; sin embargo, estos patrocinios no suelen extenderse a todas las dependencias. Esta limitación beneficia a los favoritos y obstaculiza la innovación y la construcción de software. Para esforzarse como la base del desarrollo de software, el código abierto debe empoderar a todos los desarrolladores, ya sean principiantes o expertos, en todas las capas de la torre.

Para reforzar la sostenibilidad e integridad de la cadena de suministro de software y permitir que los desarrolladores de código abierto capturen el valor que crean, tea tiene como objetivo establecer mecanismos donde el apoyo beneficie a todos los aspectos de un proyecto. El apoyo de los patrocinadores se extenderá a través de las dependencias de un proyecto, desde la cima hasta la base del árbol. Esto coloca implícitamente la confianza en la capacidad del mantenedor de paquetes para tomar decisiones informadas sobre su pila, mejorando así su reputación.

<figure><img src=".gitbook/assets/figure-2.png" alt=""><figcaption><p>Figura 2 - Distribución de recompensas a través de las dependencias</p></figcaption></figure>

#### Catacatadores de tea

A medida que se lanzan nuevos proyectos o nuevas versiones de proyectos existentes, la validez del trabajo necesita ser demostrada de manera comprobable. Esta información es crítica para que los usuarios de paquetes decidan si pueden confiar en el paquete y sus mantenedores. Dentro del Protocolo tea, esta función es proporcionada por los "catacatadores de tea".

Los catacatadores de tea, típicamente, son desarrolladores de software experimentados dispuestos a dedicar parte de su tiempo a verificar las afirmaciones asociadas con un paquete (funcionalidad, seguridad, [versionado semántico](https://semver.org/) precisión de la licencia, etc.) y apostar tanto su reputación como tokens TEA para demostrar el resultado de su investigación y respaldar sus revisiones. En el Protocolo tea, "apostar tu tea" es el proceso de bloquear tokens TEA para respaldar tus revisiones, potencialmente ganando recompensas o enfrentando penalizaciones basadas en el consenso sobre la calidad de tus revisiones. Los catacatadores de tea también tienen la opción de informar confidencialmente sobre errores o vulnerabilidades a los mantenedores de paquetes. Los informes válidos resultan en recompensas del tesoro del proyecto, mientras que los informes inválidos llevan a la pérdida de la apuesta del catacatador de tea. Por último, si los mantenedores de paquetes ignoran estos problemas reportados, desencadena penalizaciones, o "reducciones", para el tesoro del proyecto.

Al igual que los partidarios del proyecto, los catacatadores de tea pueden influir en la reputación de un proyecto y de un mantenedor de paquetes; sin embargo, su impacto es mayor dado su papel en validar la seguridad, funcionalidad y calidad de un proyecto. Los catacatadores de tea también necesitarán construir su reputación para respaldar sus afirmaciones. La calidad de su trabajo y los tokens TEA que ponen en riesgo al apostar sus revisiones combinados con otras fuentes de datos externas construirán la reputación de cada catacatador de tea, aportando más valor a su trabajo. Ver la sección "[Reputación del Paquete y del Mantenedor del Paquete](white-paper.md#package-and-package-maintainer-reputation)" para más detalles sobre los mecanismos utilizados para influir en la reputación de un proyecto y de un mantenedor de paquetes.

### Registro de Proyecto y Recompensas de Prueba de Contribución

El registro de un lanzamiento de proyecto requiere que ocurran múltiples transacciones de manera atómica. Específicamente:

* El mantenedor del paquete debe registrar el proyecto en el registro descentralizado,
* El Protocolo tea debe instanciar un tesoro del proyecto propiedad, controlado y configurado por los mantenedores de paquetes de acuerdo con las reglas definidas por los mantenedores de paquetes, y
* El Protocolo tea debe registrar el nombre único del tesoro en el Servicio de Nombres de Ethereum, o ENS, simplificando así todas las interacciones de los usuarios con el tesoro.

El fracaso de cualquiera de las operaciones resultará en que el protocolo vuelva a su estado anterior.

ras el registro exitoso de un proyecto con un teaRank que supera un umbral definido por la gobernanza, el Protocolo tea inicia la distribución de recompensas de Prueba de Contribución al tesoro del proyecto. Sugerimos distribuir estas recompensas siguiendo una curva predeterminada desde un grupo predefinido de tokens controlado por el Protocolo tea y asignado desde el suministro total de tokens TEA.

Se requiere que los mantenedores de paquetes refuercen la reputación y confiabilidad de su proyecto apostando constantemente una parte de las recompensas de Prueba de Contribución recibidas por el tesoro del proyecto. Por cada staked token, los participantes de la red recibirán un “staked TEA” no transferible, o stTEA, en una relación de 1:1, para participar en la gobernanza del Protocolo tea. De acuerdo con las reglas del protocolo, estas recompensas apostadas, y sus correspondientes stTEA, pueden estar sujetas a reducción (“reducción”) o redistribución si los mantenedores de paquetes no abordan errores o vulnerabilidades.

Por último, el no mantener la proporción mínima del tesoro apostado definida en las reglas de gobernanza resultará en la suspensión de la distribución de recompensas de Prueba de Contribución al proyecto. En su lugar, estas recompensas se redistribuirán entre los proyectos que cumplan con las normas.

### Reputación del Paquete y del Mantenedor del Paquete

Un sistema de reputación que depende únicamente de la contribución económica del autor no proporciona suficiente protección al usuario y puede estar sujeto a ataques Sybil, donde un individuo crea múltiples representaciones de sí mismo para dejar un gran volumen de reseñas positivas sobre su trabajo, engañando a los usuarios para que crean que su trabajo fue revisado y aprobado por muchos.

Existen varias metodologías disponibles para prevenir ataques Sybil, algunas de las cuales son descritas por Nitish Balachandran y Sugata Sanyal en “[A Review of Techniques to Mitigate Sybil Attacks](https://arxiv.org/abs/1207.2617/)”. Como tea es un protocolo descentralizado, usar un sistema de certificación de confianza que dependa de una autoridad centralizada de emisión de certificados sería contrario a su esencia. Proponemos enfocarnos en enfoques descentralizados para la mitigación de ataques Sybil y, más específicamente, en metodologías que dependan de un gran grupo de participantes de la red incentivados para evaluar y representar públicamente la reputación de cada paquete y su mantenedor.

Similar a la producción de bloques en una blockchain de prueba de participación, donde los nodos no productores pueden validar el trabajo de otros y, cuando sea necesario, destacar una violación de las reglas de la red, lo que lleva a una penalización del actor malicioso a través del slashing (destrucción de una parte de su staking), proponemos un sistema donde terceros, como los catacatadores de tea, puedan revisar los paquetes producidos por los mantenedores de paquetes y ser incentivados para actuar en el mejor interés de la comunidad de software de código abierto y sus usuarios, así como reconocer el buen comportamiento y penalizar el mal comportamiento. Este sistema debe ser resistente a Sybil y evitar que los poseedores de grandes cantidades de tokens influyan materialmente en el protocolo o en la reputación de paquetes específicos. Creemos que este enfoque está más alineado con el código abierto, proporcionando un sustrato más fértil para fomentar la adopción y la confianza, y facilitar en última instancia el crecimiento de tea.

Además, a medida que la reputación de cualquier miembro de la comunidad tea alcance hitos clave, se le puede otorgar acceso a partes elevadas del protocolo.

### Revisión de Paquetes por Terceros

La revisión de paquetes por terceros es un componente esencial en la construcción de reputación y la seguridad de la cadena de suministro de software. Sin embargo, las revisiones de terceros vienen con su propio conjunto de amenazas únicas, incluyendo los ataques Sybil mencionados anteriormente.

La tecnología blockchain, y más explícitamente el staking, ofrece una oportunidad única para que tea aborde este desafío. Aunque las direcciones de billetera pueden estar disponibles en cantidades infinitas, no es el caso con los tokens TEA, cuyo suministro total se espera sea de 10 mil millones. Además, cada acción realizada por los desarrolladores, como enviar, verificar o staking paquetes, contribuirá a su reputación, creando así un perfil único que cada desarrollador puede usar tanto para contribuir a la comunidad tea como para participar en la gobernanza de tea.

Al requerir que los revisores realicen staking de TEA tokens e incurran en el riesgo de perder una parte de su apuesta si resultan actuar en contra del interés de la red o ser un actor malicioso, los terceros pueden proporcionar credibilidad adicional a un paquete y recibir una recompensa, en forma de tokens TEA.

También proponemos extender el sistema de reputación a los terceros que realizan la verificación independiente de los paquetes, los catacatadores de tea. La finalización de una revisión positiva requerirá que ocurran dos operaciones de manera atómica:

* La presentación de la revisión de código, firmada por el catacatador de tea y accesible públicamente para todos los miembros de la comunidad, junto con
* El acto de staking del paquete, para fundamentar su revisión.

La finalización de una revisión negativa que incluye una o más vulnerabilidades críticas requerirá que los catacatadores de tea primero contacten al mantenedor del paquete usando un protocolo de mensajería para notificarles sobre la vulnerabilidad y permitirles abordar el problema de manera oportuna. Tras la expiración del período definido por la gobernanza asignado al mantenedor del paquete para abordar su vulnerabilidad o a medida que el paquete corregido esté disponible, el mismo protocolo de mensajería se utilizará para notificar a los usuarios y probadores de este paquete (incluyendo dependientes) que se ha identificado una vulnerabilidad, y con suerte abordado, para que sepan actualizar su aplicación o dependencias. Para desincentivar la pérdida de tiempo de los desarrolladores, la comunicación entre los catacatadores de tea y los mantenedores de paquetes requerirá que los catacatadores de tea apuesten tokens TEA.

Tras completar ambas operaciones, los catacatadores de tea recibirán un NFT como evidencia de su trabajo en el paquete y versión específica del paquete. La acumulación de NFTs combinada con la proporción de staking de cada uno de los paquetes revisados e información extraída de sistemas externos informará la reputación de un catacatador de tea. A medida que su reputación alcance hitos clave, los catacatadores de tea pueden ganar acceso a partes elevadas del protocolo o recompensas aceleradas del protocolo, según lo decida la gobernanza de tea.

### Paquetes Desactualizados o Corruptos

La misión de tea es mejorar la sostenibilidad e integridad de la cadena de suministro de software permitiendo a los desarrolladores de código abierto capturar el valor que crean; sin embargo, las recompensas deben ser proporcionales a los esfuerzos desplegados por los mantenedores de paquetes y los catacatadores de tea. Los paquetes poco mantenidos, desactualizados o corruptos son claras indicaciones de que los mantenedores de paquetes no están cumpliendo con las expectativas de la comunidad o no están entregando en la confianza y el apoyo impresionados sobre ellos a través del staking de paquetes. Otra manifestación de paquetes desactualizados puede ser el uso continuado de un lenguaje heredado o una versión heredada de lenguajes multi-versión. Paquetes que permanecen desactualizados o corruptos durante demasiado tiempo indican que los catacatadores de tea necesitan revisar regular y consistentemente el trabajo de los mantenedores de paquetes.

Los catacatadores de tea juegan un papel pivotal en las comunidades de código abierto, ya que sus revisiones y reclamaciones asociadas pueden influir en los usuarios de paquetes, guiándolos hacia o alejándolos de paquetes específicos. Para garantizar que las revisiones puedan ser confiables de manera continua, proponemos un mecanismo por el cual las revisiones publicadas por los catacatadores de tea deben estar asociadas con tokens TEA apostados. Los paquetes desactualizados o corruptos pueden ver una parte de su tesoro reducida, mientras que otra parte se envía al catacatador de tea que primero reconoció la falta de mantenimiento de cualquier paquete.

A medida que los paquetes ganan popularidad y uso, con más aplicaciones y potencialmente sistemas críticos dependiendo de ellos, debemos incentivar a los desarrolladores a informar discretamente los defectos al mantenedor del paquete y animar a los mantenedores de paquetes a abordar tales defectos antes de que puedan ser explotados. En consecuencia, proponemos que cualquier revisión negativa que describa un defecto, como una vulnerabilidad de día cero o el uso de una dependencia desactualizada y que permanezca abierta más allá de un período de gracia definido por la gobernanza, debe considerarse un fallo por parte del mantenedor del paquete y estar sujeto a las mismas penalizaciones, con el primer catacatador de tea que informe del defecto recibiendo una parte de los tokens reducidos.

Lo mismo se puede decir de los partidarios del paquete que apostaron su reputación y tokens TEA en el trabajo de mantenedores de paquetes delincuentes y recibieron recompensas por ello. Como no lograron identificar la falta de mantenimiento o eligieron continuar apoyando el paquete independientemente, proponemos que todas las actividades de reducción se extiendan a los partidarios del paquete.

La distribución a todos los catacatadores de tea podría basarse en la antigüedad de su revisión y la cantidad de tokens TEA que apostaron por su revisión.

## Token TEA

TEA es un token criptográfico que sirve como clave de acceso a ciertas partes y características designadas del Protocolo tea.

Los poseedores del token TEA tienen la capacidad de:

* Registrar sus paquetes;
* Apoyar paquetes apostando tokens TEA en paquetes específicos;
* Contribuir a la seguridad de la cadena de suministro de software desafiando paquetes y realizando revisiones para informar sobre errores y/o vulnerabilidades.

Como se ha discutido, el Protocolo tea desbloquea la economía de código abierto y crea valor para los constructores, mantenedores y usuarios finales del software empresarial. En última instancia, el valor capturado por el Protocolo tea se acumula de nuevo a los poseedores de tokens a medida que la comunidad escala, creando un ciclo de retroalimentación que incentiva aún más la participación.

### Recompensando a los Desarrolladores de Código Abierto

Esperamos que los mecanismos de Prueba de Contribución y staking de tea fomenten el crecimiento del código abierto al empoderar a sus participantes con los recursos que necesitan para seguir su pasión sin trabas.

Como se detalla en "[Registro de Proyecto y Recompensas de Prueba de Contribución](white-paper.md#project-registration-and-proof-of-contribution-rewards)", los proyectos registrados en el Protocolo tea y con un teaRank que supere un umbral definido por la gobernanza recibirán recompensas de Prueba de Contribución en forma de tokens TEA del Protocolo tea. Esta distribución persistirá siempre y cuando el paquete cumpla con las reglas del protocolo. Específicamente, el paquete deberá mantener un teaRank por encima del umbral definido por la gobernanza y los mantenedores del paquete tendrán que contribuir a la reputación y confiabilidad de su proyecto apostando continuamente una parte de las recompensas de Prueba de Contribución recibidas por el tesoro del proyecto. El incumplimiento de estas reglas resultará en la suspensión de la distribución de recompensas de Prueba de Contribución y la redistribución de futuras recompensas entre proyectos que cumplan con las normas.

Las dependencias pueden afectar significativamente la fiabilidad y seguridad de un paquete, y la ausencia de registro para las dependencias de un paquete debe ser vista como un riesgo potencial. Los mantenedores de paquetes, siendo tanto validadores como usuarios de estas dependencias, están en una posición privilegiada para conectar con los mantenedores de esas dependencias. Pueden animarlos a registrar sus proyectos en tea, haciéndolos así sujetos a la supervisión de los catacatadores de tea y elegibles para recompensas asociadas. Para fomentar este compromiso comunitario dirigido a mejorar el sistema de reputación, recomendamos que cualquier paquete con dependencias que no estén registradas en el Protocolo tea vea una fracción de sus recompensas de Prueba de Contribución quemadas. Esta quema sería proporcional al número y contribución, cuantificada en teaRank, de cada dependencia no registrada, y continuaría mientras estas dependencias permanezcan sin registrarse.

Numerosos casos han demostrado que fuertes incentivos pueden tentar a actores maliciosos a comprometer el software de código abierto. La mayoría de la infraestructura crítica de Internet funciona con código abierto, y la carrera para encontrar exploits y otras vulnerabilidades está en marcha. En tea, creemos que los mantenedores de paquetes no son los que deberían ser culpados (aunque a menudo lo son).

Los incentivos del Protocolo tea abordan este problema asegurando una distribución justa y equitativa de incentivos. Un paquete como lodash con más de 176k dependientes es un pilar del desarrollo de código abierto, y sus mantenedores merecen ser recompensados proporcionalmente. Sin embargo, un sistema de recompensas basado únicamente en el número de dependientes impediría a los innovadores perturbar estos monopolios a menos que estén suficientemente financiados por terceros o ya hayan acumulado suficientes recursos para autofinanciarse. Este enfoque probablemente llevaría a un número decreciente de contribuyentes, resultando en lo opuesto a lo que tea pretende.

Para abordar esta limitación y empoderar a cada poseedor de tokens TEA con la capacidad de apoyar a los mantenedores de paquetes, también recomendamos que una fracción definida por la gobernanza de todas las recompensas de staking recibidas por todos los participantes de la red se dirija hacia el tesoro del paquete apostado, junto con sus dependencias.

### Apostando para Asegurar la Cadena de Suministro de Software

El staking puede ser una metodología efectiva para apoyar un sistema descentralizado de reputación. Sin embargo, para facilitar la seguridad de la cadena de suministro de software, el sistema de distribución de incentivos de tea debe considerar cuidadosamente la proporción de staking de cada paquete y ajustar el incentivo de cada paquete en consecuencia.

Para reducir el riesgo de que un pequeño número de paquetes utilizados como dependencias en muchas aplicaciones recolecten la mayoría de las recompensas de staking, recomendamos la implementación de una proporción óptima de staking, similar al enfoque descrito en la [investigación producida por la web3 Foundation](https://research.web3.foundation/Polkadot/overview/token-economics).

Cuando un paquete excede la proporción óptima de staking definida por la gobernanza, la cantidad total de recompensas de staking asignadas al paquete permanecerá fija, independientemente del número de tokens TEA apostados al paquete. Esta medida, diseñada para desincentivar a los partidarios del paquete y a los catacatadores de tea de seguir apostando paquetes altamente apostados, resultará en una disminución lineal de las recompensas de staking recibidas por cada partidario del paquete.

Un enfoque basado en curvas, como el descrito en la investigación de la web3 Foundation, ralentizaría la reducción del fondo de recompensas de staking asignado al paquete, continuando así quitando a paquetes menos apostados e introduciendo externalidades negativas al otorgar más influencia a los grandes poseedores de tokens sobre la distribución del fondo de recompensas de staking.

El diseño lineal recomendado debería permitir que los paquetes menos apostados sean más atractivos tanto para los partidarios del paquete como para los catacatadores de tea. También puede incentivar a los desarrolladores experimentados a construir alternativas a paquetes altamente apostados, creando una oportunidad para que la comunidad tea equilibre el apoyo al software existente y promueva la innovación. En su diseño inicial, la proporción de staking se calculará utilizando el suministro circulante. La comunidad tea puede alterar este diseño para mejorar aún más la escalabilidad del sistema.

Así como es necesario recompensar a los buenos actores, también es necesario identificar y penalizar a los malos actores. El software de código abierto ofrece muchas oportunidades para que los malos actores creen puntos de dolor y riesgos reputacionales para toda una comunidad de desarrolladores. Desde la apropiación indebida de trabajo hasta la alteración y redistribución de paquetes de software, o la inyección de código nefasto, la guerra entre buenos y malos actores continúa, a menudo con malos actores bien financiados que ven la contaminación de paquetes de código abierto como una oportunidad para beneficiarse financieramente. Las desventajas han sido relativamente mínimas, con paquetes potencialmente prohibidos de los estantes digitales o sujetos a una mala reputación.

Para abordar directamente a los actores maliciosos e intensificar las repercusiones por acciones contrarias al código abierto, recomendamos implementar el mecanismo de slashing detallado en las secciones  “[Revisión de Paquetes por Terceros](white-paper.md#package-review-by-third-parties)” and “[Paquetes Desactualizados o Corruptos](white-paper.md#outdated-or-corrupt-packages)” sections.

A medida que los catacatadores de tea evalúan y analizan el código en paquetes recién enviados, sugerimos que los catacatadores de tea reciban las herramientas e incentivos para identificar y resaltar código nefasto para que:

* los usuarios de paquetes puedan ser conscientes de los riesgos, y
* los mantenedores de paquetes y los partidarios de paquetes sean penalizados por enviar o apoyar código nefasto.

En ese sentido, para todas las revisiones negativas evidenciadas realizadas según las reglas de la red y que hayan sido abordadas por el mantenedor del paquete dentro del período definido por la gobernanza, el mantenedor del paquete no debería incurrir en ninguna penalización, a diferencia de los partidarios del paquete o los catacatadores de tea que proporcionaron una revisión positiva del paquete en cuestión.

Para las revisiones negativas realizadas según las reglas de la red y que el mantenedor del paquete no haya abordado dentro del período definido por la gobernanza, una fracción de los tokens TEA en staking por el tesoro del proyecto, los partidarios del paquete y los catacatadores de tea anteriores será reducida y enviada al catador de tea que identificó el error o vulnerabilidad. Otra fracción será bloqueada en un fondo de seguro controlado por la gobernanza de tea. La gobernanza de tea establecerá políticas y reglas en estrecha colaboración con la comunidad para distribuir los contenidos del fondo a los afectados por vulnerabilidades. El protocolo distribuirá una tercera fracción de los tokens TEA reducidos entre todos los catacatadores de tea que contribuyeron a la revisión negativa.

El staking y el slashing son componentes vitales del sistema de incentivos y penalizaciones del Protocolo tea. Se requiere que los mantenedores de paquetes apuesten una parte del tesoro de su proyecto, asegurando que tengan una participación sustancial en riesgo en caso de que descuiden abordar errores o vulnerabilidades. Los usuarios de paquetes, partidarios y catacatadores de tea también pueden hacer staking de tokens TEA para contribuir a la reputación de un paquete o mantenedor de paquetes y participar activamente en el protocolo para mantener la sostenibilidad e integridad de la cadena de suministro de software.

La gobernanza está estrechamente vinculada a este compromiso activo. Por cada token TEA en staking, los participantes reciben "staked TEA" no transferible (stTEA) en una relación de 1:1, lo que les permite participar en la gobernanza del Protocolo tea. Las recompensas apostadas y sus correspondientes tokens stTEA pueden enfrentar reducción (slashing) o redistribución si no se siguen las reglas del protocolo, reforzando la responsabilidad dentro del ecosistema.

### Distribución del Suministro de Tokens TEA

La mayoría de los tokens TEA creados por el protocolo se utilizan como incentivos para animar a los mantenedores de paquetes, usuarios y partidarios a realizar actividades que aporten valor a la red descentralizada. La distribución de tokens TEA a varios interesados dentro del protocolo está dictada por un "calendario de distribución".

Los incentivos de la red serán distribuidos directamente por el Protocolo tea, en forma de tokens TEA, a cuatro grupos de interesados:

* Mantenedores de Paquetes;
* Usuarios de Paquetes (que incluyen a todos los miembros de la comunidad tea);
* Partidarios del Proyecto; y,
* Catacatadores de tea.

Los tokens TEA también se utilizarán para apoyar paquetes y asegurar la cadena de suministro de software a través del staking, incluyendo el derecho de desafiar un paquete realizando una revisión e informando errores o vulnerabilidades, recompensar a los desarrolladores de código abierto de proyectos registrados y participar en la gobernanza del Protocolo tea.

Se recomienda que un suministro máximo de 10 mil millones de tokens sea distribuido entre todos los miembros de la comunidad tea como se describe a continuación:

<figure><img src=".gitbook/assets/Token Allocation-Updated.svg" alt=""><figcaption><p>Figura 3 - Distribución de tokens del suministro máximo</p></figcaption></figure>

Aproximadamente el 51.4% del suministro máximo de tokens debería asignarse a "Ecosistema y Gobernanza", que incluye incentivos para que los proyectos de código abierto se unan y mantengan su base de código, así como recompensas por contribuir a votaciones descentralizadas y consenso a través del tea DAO. Los tokens asignados a "Ecosistema y Gobernanza" deben distribuirse como recompensas de Prueba de Contribución, recompensas de staking y otros tipos de incentivos centrados en el desarrollador.

Aproximadamente el 18.6% del suministro máximo de tokens debería asignarse al "Desarrollo del Protocolo" para garantizar la sostenibilidad y la evolución continua del Protocolo tea. Aproximadamente el 12.7% debería reservarse para "Partidarios y Asesores Iniciales". Aproximadamente el 11.0% debería reservarse para una venta privada, el 3.0% para una venta pública, mientras que el 3.2% restante debería asignarse para apoyar la liquidez del mercado una vez que ocurra un evento de generación de tokens.

Tokenomics detallados, incluyendo una Distribución de Tokens integral y un calendario de Emisiones serán el tema de un documento dedicado.

## Gobernanza

La gobernanza es crítica para el desarrollo, la sostenibilidad y la adopción de cualquier sistema distribuido.

Proponemos que el Protocolo tea incorpore mecanismos de gobernanza que permitan a los contribuyentes activos que han puesto sus tokens TEA en staking proponer y votar sobre cambios de parámetros críticos no financieros. El proceso de votación estaría ponderado por la propiedad de tokens stTEA y la reputación individual.

Los parámetros del protocolo podrían incluir la prioridad para apoyar gestores de paquetes específicos o introducir nuevas características o funciones del protocolo, así como el impacto de factores externos en la reputación de usuarios y paquetes. Esta funcionalidad asegurará que los parámetros críticos puedan evolucionar y optimizarse a lo largo del tiempo por miembros activos de la comunidad tea. Anticipamos que la gobernanza se lanzará con una estructura simple y se expandirá progresivamente a medida que el sistema tea madure, facilitando la adopción y garantizando una descentralización progresiva.

Algunos parámetros del sistema pueden no estar sujetos a la gobernanza o admitir cambios de alta frecuencia para reducir la superficie de ataque representada por la gobernanza. Una transición progresiva de parámetros a una gobernanza abierta y descentralizada asegurará la estabilidad y previsibilidad del sistema.

## Extensibilidad de Terceros

Mientras construimos las herramientas iniciales para encender el tan esperado apoyo a las comunidades de código abierto, creemos que parte de nuestra misión es asegurar que terceros puedan extender el conjunto total de herramientas. Además de proporcionar la infraestructura para que los desarrolladores construyan extensiones al protocolo, incluyendo nuevas formas de innovar y apoyar aún más a los desarrolladores de código abierto, nuestros planes incluyen la posibilidad de que otros gestores de paquetes contribuyan al protocolo.

Los sueños y esfuerzos de los desarrolladores de código abierto han construido la innovación que respalda nuestra vida cotidiana. Esperamos descubrir los nuevos usos y extensiones para el Protocolo tea propuestos por la comunidad tea.

## El Futuro y Posibles Esfuerzos de la Comunidad

A medida que el sistema tea madure, prevemos que la comunidad decida y contribuya a alteraciones y extensiones del sistema tea a través de la gobernanza. A continuación, presentamos algunas ideas que creemos que pueden inspirar a algunos, sin embargo, no garantizamos ningún rendimiento futuro.

### Mayoristas de tea

Las comunidades de software de código abierto son vibrantes y constantemente buscan innovar y entregar valor. Esta dedicación y altruismo llevan a la construcción constante de nuevo software y paquetes, cada uno utilizando dependencias. Como resultado, anticipamos que el mapa de dependencias evolucione constantemente, llevando a cambios frecuentes en la proporción de staking y recompensas. En el futuro, la comunidad tea puede proponer el desarrollo de un sistema diseñado para monitorear dinámicamente la proporción de staking para cada proyecto y reequilibrar cómo los partidarios del proyecto apuestan sus tokens TEA basándose en sus propios criterios.

### Regalías por Transferencia de Paquetes

Reconocemos que los mantenedores de paquetes pueden decidir transferir su flujo de recompensas a uno o más desarrolladores. La gobernanza de tal transferencia debe permanecer como la decisión del mantenedor del paquete y sus socios, sin interferencia de tea. Se necesitarán herramientas para que dicha transferencia sea total o parcial (tal vez a través de solo una porción de las recompensas siendo redirigidas a uno o más desarrolladores, mientras que las recompensas restantes continúan fluyendo al mantenedor del paquete original) y para que las recompensas de staking fluyan a través de una única cuenta controlada por un único participante de la red, múltiples participantes de la red, o distribuidas automáticamente entre múltiples cuentas usando proporciones estáticas o dinámicas.

### Distribución de Recompensas Entre Varios Mantenedores

El mantenimiento de un paquete puede depender del trabajo de un equipo o más de desarrolladores. Antes de que comiencen a fluir las recompensas, los equipos deberían considerar automatizar la distribución del valor entre ellos mismos. Cómo ocurre la distribución debe ser decidido por los propios mantenedores, ya que están en la mejor posición para evaluar quién contribuyó y cómo deben ser recompensados.

Para lograrlo, cada equipo (o equipos) podría configurar su propia organización autónoma descentralizada ([DAO](https://ethereum.org/en/dao/)) y automatizar la distribución o desplegar sistemas más complejos para determinar la distribución de valor adecuada basada en factores externos como un voto de todos los miembros de la DAO, o distribuciones basadas en tiempo en función de la contribución continua, la finalización exitosa de recompensas, etc.

### Manejo de Paquetes "forks"

Creemos que los forks son esenciales y en gran medida subutilizados. Los forks pueden ser una herramienta efectiva para desarrollar paquetes que compiten en funcionalidad, rendimiento, seguridad e incluso atención. Por útiles que puedan ser, los forks deben reconocer los esfuerzos originales. A través del trabajo futuro o posibles contribuciones, la comunidad tea puede mejorar el sistema para requerir que los forks sean declarados, tal vez incluso detectados cuando un proyecto se registre. Los forks no declarados revelados por los catacatadores de tea pueden resultar en una reducción de una parte de la apuesta del tesoro del fork, transferida al mantenedor del paquete original o enviada a los catacatadores de tea que revelaron el fork.

### Dependencias de Ejecución vs. Construcción

tea puede no distinguir entre dependencias de construcción y dependencias de ejecución al distribuir recompensas de Prueba de Contribución en el lanzamiento. Sin embargo, si la comunidad tea siente fuertemente acerca de hacer tal distinción, la comunidad tea puede proponer mejoras al algoritmo de distribución de recompensas para tener en cuenta la criticidad de cada dependencia y su contribución al valor individual de los paquetes que dependen de ellas. Estas propuestas serían votadas e implementadas según la decisión de la comunidad.

### Recompensas Basadas en el Uso

A medida que se construyan más aplicaciones utilizando proyectos registrados con tea, la comunidad puede aumentar el algoritmo de recompensas para que la asignación pueda ser influenciada por conjuntos de datos externos atestiguados como el uso. Esta actualización al mecanismo de recompensas podría permitir una mayor asignación de recompensas de tokens TEA hacia paquetes con el uso más alto, respetando aún las restricciones de la proporción de staking descrita en la sección de tokens TEA. Los mantenedores de paquetes podrían usar un enfoque similar para distribuir recompensas a través de sus dependencias basado en la lógica transparente de su elección. Tenga en cuenta que toda la información utilizada para afectar la distribución de recompensas entre paquetes y dependencias en el sistema tea necesitará ser comprobablemente confiable.

## Agradecimientos

Este documento técnico no existiría sin el apoyo y la dedicación de muchos teaófilos. Los autores desean reconocer a Jacob Heider, Jadid Khan, Josh Kruger y Shane Molidor por su contribución a la tokenomía, Sanchit Ram por su contribución al algoritmo teaRank, y a los muchos individuos discretos que ofrecieron voluntariamente su tiempo para proporcionar retroalimentación sobre el contenido de este documento.

## Glosario de Términos

| Término     | Definición                                                                                                                                                                                        |
| -------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Leaf     | TLa denominación más pequeña del token TEA. Un "leaf" corresponde a una quintillonésima parte (10^−18) de un TEA.                                                                                            |
| Slashing | La acción de penalizar a los que hacen staking en respuesta a comportamientos contrarios a las reglas del protocolo.                                                                                                       |
| Staking  | 	La acción de bloquear tokens TEA para respaldar tu reclamo y recibir recompensas (o penalizaciones) basadas en el consenso sobre la validez de tu reclamo.                                                |
| stTEA    | Token “TEA en staking” no transferible o “stTEA” recibido por los participantes de la red por cada token apostado en una relación de 1:1. stTEA puede utilizarse para participar en la gobernanza del Protocolo tea |
| teaRank  | Puntuación de impacto dinámica asignada a cada proyecto por el algoritmo “Prueba de Contribución” del protocolo.                                                                                              |

## Referencias

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
