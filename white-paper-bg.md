# Декларация за отказ от отговорност

Цялата информацията, изложена в тази "бяла книга" носи предварителен характер. 
Следователно нито авторите, нито който и да е от свързаните с тях лица поемат каквато и да е отговорност относно това, че информацията, изложена в този документ е окончателна или достоверно точна и всеки от изброените лица носи отказ от отговорност, 
до максимална степен, която разрешена от съществуващото законодателство, от всякаква отговорност независимо дали произтича от някакъв вид правонарушение, договор или е свързана с тази "бяла книга" по друг начин. 
Нито предложената "бяла книга", нито каквато и да е информаиця, съдържаща се в нея не може да служи като основание за спор или да бъде използвана за такова или да действа като подканване за сключване на какъвто и да е договор или ангажимент. 

Нищо в тази "бяла книга" не представлява оферта за продажба или подкана към покупка на токени, обсъждани в документацията.
Във всеки случай, ако в някои места тази "бяла книга" ще се разглежда като подобно предложение или подкана, заявяваме, че никакво подобно предложение или подкана са били намерение или цел от настоящата документация във всяка юрисдикция, където това е незаконно, 
където подобна оферта или подкана изискват лиценз или регистрация, или където подобна оферта или подкана подлежат на ограничения. 
По-специално, всички токени, за които ще става въпрос в документацията не са били, и към датата на издаване на тази "бяла книга" не са предназначени да бъдат регистрирани съгласно законите, касаещи ценни книжа на която и да е юрисдикция, 
и дали тази юрисдикция приема или не токени като като вид ценни книжа или подобен инструмент и не може да се предлага или продава в която и да е юрисдикция, където подобни действия представляват нарушение на съответнните закони на тази юрисдикция. 


# Лиценз

Изходният код [^src] на даденият документ е достъпен под лиценз на Creative Commons Attribution-ShareAlike 4.0 International[^cc] .

[^src]: See: @sources
[^cc]: See: @cc


# Въведение

Интернет пространството е съставено предимно от проекти с отворен код и е бил такъв от самото му създаване. 
С течение на времето, много от тези проекти са се превърнали във фундаментални, върху които са изградени всички последващи иновации. 
И докато върху тази технология бяха изградени цели състояния, отворения код основно се създава и поддържа без компенсации. 

Ние смятаме, че цялата съвременна човешка дейност е закърняла поради факта, че разчита основно на малък процент инженери от целия свят, които са принудени да избират между заплата и поддържане на Интернет дейността. 
Отвореният код е продукт на грижовен труд, често възпрепятстван от липса на значими икономически стимули, водещи до невъзможност на наистина значими проекти да достигнат своя потенциал, при други проекти възникват проблеми със сигурността поради липса на достатъчно стимули за поддържане на софтуера.
За да се реализира напълно потенциала е необходимо създаване на справедлива система на възнаграждения към цялата екосистема с отворен код, което обаче не променя фундаментално начина, по който е изградена или използвана. 

Предприятията често използват бизнес модели свързани с отворения код, генеририрайки приходи директно от работата на добросъвестните разработчици, докато разчита на тях за коригиране на грешки при възникване на проблеми. 
Чудесен пример е скорошният инцидент, включващ критична уязвимост на сигурността в Log4j, пакет от Apache Software Foundation, който намери своето приложение в много от търговските софтуери и услуги, използвани от различни предприятия и от правителството. 
През Ноември 2021г, изследовател по сигурността, работещ за Alibaba Group Holding Ltd. съобщава за уязвимост CVE-2021-44228[^1], която получава най-висока възможна оценка от Apache Software Foundation. 
Amit Yoran, Главен изпълнителен директор на Tenable и директор основател на United States Computer Emergency Readiness Team (US-CERT), описа този вид уязвимост като “най-голямата и най-критична уязвимост от последното десятилетие”[^2].
След тези събития последва паника и няколко доброволци, отговорни за поддръжка на въпросния пакет, бяха публично критикувани за провала. 
След като в отговор на възникналото възмущение се появи скромна молба за възстановяване на справедливост, системите бяха поправени. 
Предприятията и правителствата разбраха в крайна сметка, че Log4j, пакет, използван от голям брой критично важни системи в продължение на две десятилетия, беше поддържан от няколко доброволци за собсвена сметка, същите невъзпяти герои, които се впускат в действие въпреки злоупотребите от индустрията[^3] и работят неуморно за справяне с уязвимостта.

За съжаление Log4j далеч не е единственият пример.
core-js се изтегля 30 милиона пъти седмично като база за всяко Node.js приложение, което също така почти не се финансира. 
Наскоро няколко от основните биткойн разработчици подадоха оставка, посочвайки наред с други причини *липса на финансова компенсация* за решението си.

Отбелязваме многобройни опити за предлагане на различни структури за стимулиране, обикновено включващи системи за спонсорство и различни награди.
Системите за спонсорство дават възможност за потребителите, използващи отворен код да даряват в полза на проекти, които те самите предпочитат. 
Въпреки това, представете си отворения код като кула от тухли, където долните слоеве са отдавна забравени, но все още поддържани от отдадени на каузата инженери и където все още се разчита на доста разработчици. 
Обикновено само проектите на върха на кулата са известни и получават спонсорство. 
Този вид избирателна селекция води до това, че тухлите в основата, които поддържат цялата кула без да привличат дарения, докато горните предпочитани тухли получават повече, отколкото им е необходимо. 
Наградите позволяват на потребителите на проекти възможности за предлагане на плащане на разработчиците за изграждане на специфични функции, като по този начин се предлага възнаграждение за проекти, които извършват дейности, не задължително в техен интерес. 
И отново, награждават се само фаворитите.

В този документ, ви представяме tea — децентрализирана система за справедливо възнаграждение на разработчиците с отворен код въз основа на техния принос към цялата екосистема, въведена чрез алгоритъма за финансово стимулиране, прилаган за всички записи в регистъра на tea.

![Simplified view of the tea steeping rewards system.](img/figure-1.svg)

$\parskip=0pt plus 1pt$

[^1]: Source: @nist
[^2]: Source: @reuters
[^3]: Source: @twitter


# Компоненти

Всеки разработчик на софтуер, създаващ приложения, се нуждае от четири неща: браузър, терминал, редактор и мениджър на пакети.
От изброените четири неща, мениджърът на пакети е това, което контролира инструментите и основите, необходими на разработчика, за създаването на своя продукт.
Точно това ниво представлява елемента, където виждаме потенциала за промяна на начина, по който се възнаграждава отвореният код. 

## Мениджър на пакети

В самия мениджър на пакети е заложено да знае от какъв софтуер с отворен код зависи функционирането на дадено приложение, от върха на кулата до основата.
Всеки компонент и версия, които са от съществено значение за приложението, са известни и записани. 
Той знае, че върхът на кулата внимателно избира своите зависимости и този прецизен подбор продължава надолу. 
Мениджърът на пакети заема уникално място в стека с инструменти за разработчици, за да позволи автоматизирано и прецизно разпределение на стойности въз основа на действителното им използване в реалния свят. 

Ние предлагаме неизменен децентрализиран регистър, предназначен за разпределяне на стойност въз основа на алгоритъм, определящ приноса на всеки запис към полезността и здравето на системата.
Стойността може да стане част от графиката във връхните точки – приложения и основни библиотеки – и да бъде разпределена към зависимостите на тези връхни точки рекурсивно, тъй като регистърът познава цялата графика с отворен код. 

Също така смятаме, че съществена информация трябва да бъде достъпна чрез мениджъра на пакети, за да могат разработчиците да направят прецененка дали да се доверят на избрания пакет и неговия автор. 
Дадена информация може да се основава на репутация, позитивни отзиви откъм общността, данни, извлечени от системи за децентрализирана самоличност (DID[^4]), други мениджъри на пакети или механизми за финансово стимулиране, които потенциално разчитат на участници в мрежата, излагащи на риск икономическата стойност. 

Предвиждаме, че комбинацията от инструменти, информация и награди на tea справедливо ще стимулират разработчиците, помагайки за стимулиране на развитието на софтуера с отворен код и насърчавайки иновациите. 

[^4]: See: @w3

## Децентрализираният регистър

Всеки един от мениджърите на пакети има свой собствен регистър на пакети, който дублира едни и същи метаданни многократно.
Дойде време за създаване на единен, пълен и окончателен регистър, проектиран и управляван от общностите, които зависят от него.
Такъв тип децентрализиран, постоянен регистър може да осигури сигурност, стабилност и да предотврати 
злонамерени намерения.

Интернет работи с десетки хиляди жизненоважни компоненти с отворен код. 
Интересен факт е, че досега инцидентите, причинени от премахването на основна инфраструктура с отворен код, са минимални. 
Най-известниятият пример беше премахването на зависимостта на NPM left-pad[^5] през 2016 г., която каскадно оказа влияние върху системите за непрекъсната интеграция и непрекъснато внедряване, оставяйки разработчиците без финансиране в продължение на дни. 
Това събитие показа, че самият интернет е основан върху крехки системи за разработка. 
Другите примери включват активно или умишлено участие от поддържащите пакети, саботиращи техните популярни пакети (вижте colors.js, faker.js[^6], и node-ipc[^7]),
или лоши участници, които искат да спечелят, като се преструват, че помагат в поддръжката на пакети и ги повреждат за да крадат, например, Bitcoin частни ключове (Вижте event-stream[^8]),
или злонамерени пакети с умишлени правописни грешки, известни също като typosquatting, 
чиято цел е да подмамят потребителите за да ги инсталират, например пакети crossenv vs. cross-env NPM [^npmjsCrossenv].

Целостта на софтуера трябва да бъде гарантирана, докато цялата индустрията напредва към бъдещето, в което цифровите активи ще са част от самия софтуер. 
Нив не можем да позволим да се оставяме уязвими към злонамерените участници, модифициращите софтуера. 

Повечето инструменти, които наричаме мениджъри на пакети, не могат да гарантират, че тези пакети, вградени в приложенията и dApps, представляват непроменен код с отворен код, публикуван от оригиналните им автори. 
В GitHub на Microsoft се установи, че 17% от уязвимостите в софтуерните програми са създадени със злонамерени цели[^9], като някои от тях остават неоткрити за дълъг период от време (See Webmin 1.890[^10]).

Децентрализираният регистър, подкрепен от система за репутация и от икономическите стимули, създадени да разкриват лошите участници и да възнаграждават добрите участници, може да предостави необходимите гаранциите, които общностите на разработчиците толкова търсят. 

[^5]: Source: @theregister
[^6]: Source: @fossa
[^7]: Source: @lunasec
[^8]: Source: @github
[^npmjsCrossenv]: Source: @npmjsCrossenv
[^9]: Source: @zdnet
[^10]: Source: @threatpost


## Система за съхранение

Пакетите с отворен код предоставят широк набор от функции, някои от които може да са ограничени или нежелани. 
Шифроването е отличен пример за това.
Важен случай за използване на криптирането е поддържането на поверителността на хората по целия свят. 
Шифроването също така може да се използва и за нечестни цели (вижте Phantom Secure, демонтиран от правоприлагащите органи през март 2018[^11]) или може да бъде компрометирано, за да се подкрепят дейностите на правоприлагащите органи (Вижте Операция Ironside (AFP), Операция Greenlight (Europol),
и Операция Trojan Shield (FBI)[^12], където ФБР управляваха „криптирана“ комуникационна платформа, AN0M, и убеждават престъпниците да използват своите „криптирани“ телефони за сигурна комуникация). 

Голямото приложение на криптирането го превърна в идеален случай за използване на софтуер с отворен код и чудесен пример, че всяко решение, което съхранява пакети, трябва да бъде защитено от подправяне и цензура. 
tea е децентрализиран протокол, който не е предназначен за филтриране или санкциониране на пакети въз основа на тяхната функционалност. 
Докато управлението на tea може да избере да премахне доказано злонамерени пакети (вижте раздела за управление за повече информация), за системата tea е от решаващо значение да се свърже с множество системи за съхранение, включително децентрализирани, които показват, че пакетът е непроменен и правилно репликиран.
Поддържащите пакети могат да изберат системата за съхранение, която е най-подходяща за техните нужди за сигурно съхранение и разпространение на своите пакети.

[^11]: Source: @fbi
[^12]: Source: @europol

# Участници в мрежата

Мисията на проекта tea е да даде по-голяма възможност на общностите с отворен код и да гарантира подкрепа за техните сътрудници, създаващи инструментите за изграждане на интернет.
В настоящата "бяла книга" ние ще разпределим участниците съответно техния принос. 
Някои може да допринесат чрез създаване на код или да потвърждаване на вече създаден такъв.
Други могат да предоставят икономическа стойност в подкрепа на разработчиците и тяхната репутация. 

## Package Maintainers

Package maintainers must make sure their software continues to deliver increasing value as the industry evolves.

tea assumes that package creators maintain their work.
Package maintainers are pillars of open-source communities who need to be empowered and rewarded for their ongoing contributions.
A package maintainer may decide to discontinue their maintenance efforts or realize they cannot operate at a pace that matches the package users' expectations.
Package maintainers receive a non-fungible token (NFT) when they complete a package submission (see the maintainer NFT section for additional details).
This NFT is used to evidence their work and is the key that directs tea rewards.
The holder of a package’s NFT can transfer its ownership to another developer (or group of developers), thus making them maintainers of the package and recipients of any future rewards.
Similarly, a developer may decide to take on the role of package maintainer by forking the existing package and submitting a new one which they will maintain moving forward, thus becoming themselves both package creator and maintainer.

It is essential to provide developer communities with the right tools to determine which packages are being maintained and their past and present maintainers’ reputation and quality of work.
We’ve too often seen open-source work being tampered with and the efforts of many ruined by bad actors.
Although the work of these bad actors is largely discovered and remediated, it is often not until significant damage has been incurred through financial or data loss.
Take for example the EventStream npm package[^13] that was downloaded over 1.5 million times per week and relied upon by over 1,500 packages when a hacker managed to penetrate the open-source project,
gain the trust of its original author and modify EventStream to depend on a malicious package that would exfiltrate bitcoin wallet credentials to a third-party server\.
Although tools may help detect some of these attacks, they cannot always be relied upon, which creates an entire community dependent upon each other’s diligence and willingness to share their findings.

We propose introducing incentives via the tea token described in the tea token section, encouraging open-source communities to report their findings constructively, so package maintainers can address them before they are exploited.

[^13]: Source: @medium

## Package Users

Package users are software developers focused on solving a specific problem.
They often look in the open-source community for the tools they need to experiment quickly and iterate at very little to no cost, directly benefiting from the work of package creators and maintainers.
Traditionally, a subset may have chosen to support package maintainers through donations or other forms of remuneration; however, this has rarely been the case.

Sponsorship can be an effective system to support open-source development; however, remuneration does not typically extend to all dependencies.
This limitation benefits favorites and gets in the way of innovation and software building.
To strive as the foundation of software development, open-source must empower all developers, whether beginners or experts, across all layers in the tower.

tea’s purpose is to maintain the core values of open-source software while providing a decentralized system to remunerate package maintainers for their work.
To deliver on this mission, tea intends to develop — and incentivize others to develop — mechanisms for package users to support package maintainers through unique use cases of the tea token, as described in the tea token and future work and potential community effort sections.

## Package Supporters and Sponsors

In Web 2.0 and web3, package supporters have often been called “sponsors.” They are organizations or package users who use open-source software to build their commercial products, philanthropists looking to support the ecosystem, or entrepreneurs looking to fund teams to develop components of a larger system.

tea proposes to extend the communities of package supporters to the entire tea community, whether organizations, developers, users, or tech enthusiasts.
tea’s goal is to implement decentralized incentive mechanisms through unique use cases of the tea token for any member of the tea community to contribute to the perpetual sustainability and continuous growth of open-source.
Package supporters and sponsors are free to decide which packages or package maintainers they want to support based on their work, beliefs, or any criteria and metric that would influence their decision.
Additionally, the support provided by package supporters and sponsors will flow to each package’s dependencies, thus implicitly trusting the package maintainer to make good choices about their stack and using this information to contribute to their reputation.

Provided that the package maintainer offers such service, a package supporter and sponsor may receive a premium support level NFT in return, thus benefiting from accelerated SLAs or more flexible licensing.
Additionally, package supporters and sponsors may decide to support packages or package maintainers and automatically redirect all or a percentage of their rewards to incentivize teams to build new open-source software.
In other words, packages don’t need to exist for tea to start pouring in.
Nascent projects can be supported just as well as more mature ones, further incentivizing a constantly evolving open-source landscape.

## tea Tasters

As new packages or new versions of existing packages are released, the validity of the work needs to be provably demonstrated.
This information is critical for package users to decide whether or not to trust both the package and its maintainers.
With the tea protocol, this function is provided by the tea tasters.

tea tasters, typically, are experienced software developers willing to dedicate some of their time to check the claims associated with a package (functionality, security, semantic versioning[^14], license accuracy, etc.)
and stake both their reputation and economic value to demonstrate the outcome of their research and analysis and support their reviews.
tea tasters receive rewards for their diligence and efforts.
At tea, we call  “steeping your tea” the action of locking tea tokens to support your reviews and receive rewards (or penalties) based on the consensus on the validity of your reviews.

Like package supporters, tea tasters can influence a package and package maintainer’s reputation; however, their impact is more significant given their role in validating a package’s security, functionality, and quality.
tea tasters will also need to build their reputation to support their claims.
The quality of their work and the economic value they put at risk as they steep their reviews combined with other external data sources will build each tea taster’s reputation, bringing more value to their work.
See the package reputation section for more details on the mechanisms used to influence a package and package maintainer’s reputation.

[^14]: See: @semver

# Protocol Overview

The design of a protocol to reward open-source contributions is mired with challenges.
Open-source software is by definition open to all and can, as a result, be subjected to misattribution, appropriation, or malicious tampering.
However, the open-source community has consistently demonstrated its willingness to highlight good actors and expose bad actors.
Historically, the energy spent reviewing and commenting on other developers’ contributions has been strictly voluntary, despite how time-consuming and crucial reporting and defending findings may be.

We intend to create a trustless distribution platform for applications secured by reputation and financial incentives, as we believe adequate rewards for open-source contributions cannot succeed without both a reputation system and the ability for members of the community to communicate their findings and support (or dissent) for a package or the work of a developer.

We must provide developers with tools to access and contribute to this reputation system.
Tools that include simple visual and programmable access to the version and reputation of all dependencies within their packages.
A clear understanding of which community members support each package and how many tea tokens they are steeping will contribute to the reputation of each package, just as how much a package maintainer is steeping their work communicates how much they stand behind their work.
These combined data points will help inform a reputation system for all community members and facilitate choice.
As the EventStream package hack was not conducted through the package itself, but via one of its dependencies, visibility across all layers of dependencies will be vital to building this trustless system.
However, considerations such as computation and transaction (“gas”) costs will need to take priority as the system is designed and built.

Our goal is to reward both Web 2.0 and web3 developers.
The intricacies and specifics of each stack make it so that tracking installations and uninstallations of packages could easily fall victim to one or more bad actors.
That includes “buying” installations to artificially inflate numbers.
An even worse scenario would be introducing fundamental changes to the nature of open-source software by creating unnecessary friction with license keys or other deployment tracking mechanisms.
To provide the broadest coverage, we believe that rewards mustn’t rely on a simplistic notion of tracking installations or uninstallations, but rather on incentive mechanisms that encourage the submission of quality packages and the reporting of nefarious or high-risk packages.
Lastly, many packages rely on common dependencies.
For example, Lodash has 151,209 dependents[^15] while chalk has 78,854 dependents[^16] or Log4js has 3,343 dependents[^17].
As more packages are created using the same dependencies, how do we ensure that incentives are distributed fairly and equitably?
How do we ensure that the most utilized dependencies are rewarded without starving new or emerging packages and developers?
How do we ensure that the incentive system does not end-up steering developers away from niche languages to centralize them where incentives are better?
But also, as developers, how do we identify packages with the most dependents to build alternatives - leaner, more efficient, better-coded versions of these packages?
At tea, we believe that the lack of incentive has impeded the evolution of open-source software.
Supported by the right economic incentives and rewards, more developers will be in a position to build, improve and augment open–source software for the betterment of the world.
Only then will the tea token be able to represent the total value of open-source software.

[^15]: Source: @npmjsLodash
[^16]: Source: @npmjsChalk
[^17]: Source: @npmjsLogFourjs

## Package Submission

The submission of a package release requires multiple transactions to occur atomically.
Specifically, the package maintainer must:

* Register the package (and its semantic version) with the decentralized registry.
* Upload the package into the decentralized storage system for resilience, censorship resistance, and ease of distribution.
* Contribute to the package’s reputation and trustworthiness by *steeping* tea tokens.

Failure of any one of the three operations will result in the protocol reverting to its previous state, thus eliminating any evidence of the submission.

When a package is successfully submitted, the package maintainer will receive a maintainer NFT to evidence their work and contribution to open-source.
The package maintainer may transfer the steeping rewards associated with the maintainer NFT to a third party.
However, the reputation associated with the creation and maintenance of the asset will remain with the package maintainer, so their reputation can be affected over time.
As the reputation of any member of the tea community reaches key milestones, they may be granted access to elevated parts of the protocol or receive accelerated rewards, as decided by the tea governance.
For more details on the maintainer NFT, see the maintainer NFT section.

### Dependencies Analysis

Package dependencies can run deep, as each package often has both dependents and dependencies.
To provide a simple methodology that rewards all developers who have contributed to open-source software while keeping the creation of the dependencies tree quick and computationally efficient, we propose to verify only first-level dependencies upon submission of a package.

This design is driven by the hypothesis that each dependency is itself a package that was independently submitted to the tea tree.
In doing so, each of its dependencies can be mapped, and if its dependencies have dependencies themselves, those will be mapped at the time the dependency package is submitted.

![Dependencies analysis diagram.](img/figure-3.svg){#fig:dep-analysis}


In @fig:dep-analysis, the submission of package A triggers an analysis of runtime dependencies 1 through n and build dependencies 1 through n, while runtime dependencies 1.1 through 1.n and build dependencies 1.1 through 1.n were analyzed when package B was submitted.
We will apply the same methodology for incentive distribution as the steeped tokens are distributed across all dependencies, thus recursively steeping the packages listed as dependencies (see @fig:steeping-rewards).

![Steeping rewards distribution across dependencies.](img/figure-2.svg){#fig:steeping-rewards}


Versioning and conflicting dependencies are significant challenges, and troubleshooting them can turn into massive time drains.
To address this, we propose each package be subject to a comprehensive dependency scan upon submission so we can ensure that the package complies with the following rules for semantic version ranges.

* Packages may only constrain their dependencies to a major version, though the start of the range can be any valid semantic version (e.g., >=5.2.1 <6).
* If a dependency is upgraded to a more recent major version, tea may require that the package’s major version be increased.
* Similarly, if a dependency is upgraded to a more recent minor version, tea may require that the package’s minor version be increased.
* If a new dependency is added, tea may require that the package’s minor version be increased.

Considering the unnecessary effort imposed upon any package user when the above rules are transgressed, we propose that a portion of the tea token steeped by the package maintainer be slashed to reflect their lack of due diligence.
If a developer forces everyone to juggle their cups, someone will spill some tea.
Since the dependency scan is expected to occur at submission, we should note that no steeping from package supporters and sponsors or tea tasters will have happened.

## Package & Package Maintainer Reputation

Package maintainers must contribute to their package’s reputation and trustworthiness by steeping tea tokens.
However, a reputation system that relies solely on the author’s economic contribution does not provide sufficient user protection and can be subject to Sybil attacks, where a single individual creates multiple representations of themselves to leave a large volume of positive reviews on their work,
tricking users into believing their work was reviewed and approved by many.

Several methodologies are available to prevent Sybil attacks, some of which are described by Nitish Balachandran and Sugata Sanyal in “A Review of Techniques to Mitigate Sybil Attacks”[^18].
As tea is a decentralized protocol, using a trust certification system that relies on a centralized certificate issuance authority would be contrary to its core.
We propose to focus on decentralized approaches to Sybil attack mitigation and, more specifically, on methodologies that rely on a large group of network participants incentivized to assess and publicly represent the reputation of each package and its maintainer.

Similar to the production of blocks on a proof-of-stake blockchain, where non-producing nodes can validate the work of others and, when necessary, highlight a violation of the rules of the network, which leads to a penalization of the bad actor through slashing (destruction of a portion of their stake),
we propose a system whereby third-parties (aka tea tasters) would be able to review packages produced by package maintainers and be economically incentivized to behave in the best interest of the open-source software community and its users as well as recognize good behavior and penalize bad behavior.
This system must be both Sybil resistant and prevent large token holders from materially influencing the protocol or the reputation of specific packages.
We believe this approach to be more aligned with open-source, providing a more fertile substrate to foster adoption and trust, and ultimately facilitate the growth of tea.

[^18]: Source: @arxiv

## Package Review by Third Parties

The review of packages by third parties is an essential component of reputation building, however, third-party review has its own set of unique threats including the aforementioned Sybil attacks.

Blockchain technology, and more explicitly staking, offers a unique opportunity for tea to tackle this challenge.
Although wallet addresses may be available in infinite quantities, this is not the case with tea tokens, whose initial supply is expected to be 10 billion.
Additionally, each action performed by developers, such as submitting packages, verifying packages, or steeping them, will contribute to their reputation, thus creating a unique profile each developer can use to both contribute to the tea community and participate in tea’s governance.

By requiring third-party reviewers to steep tea tokens and incur the risk of losing a portion of their steeped tokens should they turn out to behave against the interest of the network or be a bad actor, third parties can provide additional credence to a package and receive a reward, in the form of tea tokens.

We also propose extending the reputation system to the third parties who perform the independent verification of packages - the tea tasters.
The completion of a positive review will require two operations to occur atomically:

* The submission of the code review, signed by the tea taster and publicly accessible to all members of the community, along with
* The act of steeping “for” the package (vs. “against” the package), to substantiate their review.

The completion of a negative review that includes one or more critical vulnerabilities will require the tea tasters first to contact the package maintainer using a messaging protocol to notify them of the vulnerability and allow them to address the issue in a timely fashion.
Upon expiry of the governance-defined period allocated to the package maintainer to address their vulnerability or as the corrected package becomes available, the same messaging protocol will be used to notify all users and testers of this package (including dependents) that a vulnerability has been identified,
and hopefully addressed, so they know to update their application or dependencies.
To disincentivize wasting developers’ time, communication between the tea tasters and package maintainers will require the tea tasters to steep tea tokens.

Upon completing both operations, the tea tasters will receive an NFT as evidence of their work on the specific package and package version.
The accumulation of NFTs combined with the steeping ratio of each of the packages reviewed and information extracted from external systems will inform a tea taster’s reputation.
As their reputation reaches key milestones, tea tasters may earn access to elevated parts of the protocol or accelerated rewards, as decided by the tea governance.

## Outdated or Corrupt Packages

tea’s mission is to reward contributors and participants in the open-source communities; however, rewards must be commensurate with the efforts deployed by package maintainers and tea tasters.
Under-maintained, outdated, or corrupted packages are clear indications of package maintainers not living up to the community’s expectations or not delivering on the trust and support impressed upon them through the steeping of packages.
Another manifestation of outdated packages may be the continued use of a legacy language or legacy version of multi-version languages.
Packages remaining outdated or corrupt for too long indicate that tea tasters need to review package maintainers’ work regularly and consistently.

tea tasters are critical members of the open-source communities in that their reviews and associated claims can steer package users towards or away from packages.
To ensure that reviews can be trusted on an ongoing basis, we propose a mechanism whereby outdated or corrupted packages may see a portion of their steeped tokens sent to the tea tasters who were first to recognize the lack of maintenance of any package.

Any negative review which outlines a flaw such as a zero-day vulnerability or the use of an outdated dependency and remains open past a grace period defined by governance should be considered a failure on the part of the package maintainer.
They have not completed the task they were entrusted with and rewarded for.
The same can be said for package supporters and sponsors who staked their reputation on the work of delinquent package maintainers and received rewards for it, but failed to identify the lack of maintenance or elected to continue to support the package regardless.

As packages gain in popularity and usage, with more applications and potentially mission-critical systems depending on them, we must incentivize developers to discreetly report flaws to the package maintainer and package maintainers to address such flaws before they can be exploited.
Consequently, we propose that any outdated or corrupted package which is subject to one or more evidenced negative reviews and remains in such state past the governance-defined grace period see a portion of its steeped tokens be slashed regardless of their origin (package maintainer, package supporters, and sponsors or prior tea tasters),
while another portion is sent to the tea tasters who submitted the negative reviews.
Distribution to all tea tasters could be based on the age of their review and the number of tea tokens they steeped for their review.

## Maintainer NFT

Upon successful submission of a package, the package maintainer will receive an NFT to evidence their work and contribution.
The holder of this NFT will automatically receive all rewards associated with the package.
Package maintainers may transfer maintenance ownership over a package to another package maintainer by simply transferring the package’s NFT.
Successful transfer of the NFT will lead to the new owner automatically receiving future package rewards.

An important part of reputation building relies on the frequency and quantity of quality package submissions.
The NFT delivered to package maintainers as evidence of their work may be used by the reputation system to update a package maintainer’s reputation and give them access to elevated parts of the protocol, as decided by the tea governance.
However, to prevent attack vectors, such as community members buying their reputation, the transfer of the maintainer NFT will not result in a transfer of reputation.
Reputation must remain directly associated with a specific developer’s work and must not be transferable.

# tea Token

## Securing the Network

While many blockchains may appear as effective and secure infrastructure solutions to support tea’s objectives, we believe that careful consideration must be given to the technology stack upon which the tea system is built.

Scalability, cost-effectiveness, ESG, and third-party extensibility are important design considerations that a tea-sovereign proof-of-stake system could better serve.
In proof-of-stake, node operators and network participants stake economic value in the form of the chain’s native token to increase the system’s security.
Node operators and network participants receive rewards for the successful production of blocks that comply with the rules of the network and include accurate transaction information.
Inactivity (aka node down) or malicious/incorrect activity are penalized by destroying a fraction of the staked tokens through slashing.

A proof-of-stake system powered by the tea token will allow tea token holders to contribute to the system’s security by *staking* tea and support open-source developers by *steeping* tea.
We're fully aware economic factors may prevent some developers from staking or steeping tea; as such, staking and steeping will be available for as little as a leaf, the smallest denomination of tea representing one one-hundred-millionth ($10^{-8}$) of a tea.

Both applications of the tea token serve vital functions in the support and growth of the open-source ecosystem.
Staking tea will ensure that the tea system continues to operate securely, so all network participants can submit and access packages to review them, integrate them into their application, etc.
In contrast, the steeping of tea will support tea’s goal of providing tools for all network participants to support and use packages that meet quality and dependability requirements, as formulated by the tea community through their support and dissent of each package.
Care will be taken when defining and implementing staking and steeping parameters so one does not become parasitic on the other.

## Incentives and Penalties

As discussed earlier, there can be strong incentives for bad actors to compromise open-source software.
The majority of the Internet’s critical infrastructure is running on open-source, and the race to find exploits and other vulnerabilities is on.
At tea, we believe that package maintainers are not the ones that should be blamed (although they often are).

tea protocol incentives fix this through a fair and equitable incentive distribution.
A package like Lodash with over 151k dependents is a pillar of open-source development, and its maintainer deserves to be rewarded proportionally.
However, a reward system built solely on the number of dependents would prevent innovators from disrupting these monopolies unless they are sufficiently funded by third parties or have already accumulated enough resources to self-fund.
This approach would likely lead to a shrinking number of contributors, resulting in the polar opposite of what tea is about.

tea’s goal is to represent the value of open-source software and, in doing so, foster its growth by empowering its participants with the resources they need to pursue their passion unencumbered.
The tea incentive distribution system needs to carefully consider the steeping ratio of each package and adjust each package’s incentive accordingly.
To reduce the risk of a small number of packages used as dependencies across many applications collecting the majority of steeping rewards, we will leverage the research produced by the web3 Foundation[^19] for the Polkadot proof-of-stake-based rewards mechanism.
We may further adjust the implementation and its variables based on the results of practical experiments.

As a package steep approaches a governance-defined optimum steeping ratio, its steeping rewards ratio will decrease progressively.
When a package exceeds its optimum steeping ratio, the steeping rewards ratio will decrease sharply to de-incentivize package supporters and tea tasters from further steeping highly steeped packages.
This design could allow lesser steeped packages to become more attractive to both package supporters and tea tasters.
It may also incentivize experienced developers to build alternatives to highly-steeped packages, creating an opportunity for the tea community to balance supporting existing software and promoting innovation.
The steeping ratio will be calculated using the circulating supply in its initial design.
The tea community may alter this design to improve the system’s scalability further.
Let $\chi$ be the steeping ratio across all packages.
It represents the total number of tea tokens steeped by package maintainers, package users, package supporters and sponsors, and tea tasters divided by the total tea token supply.
Given how many open-source packages are available today and their expected growth, $\chi$ will always be a very small value between $0$ and $1$.

Let $\psi$ be the staking ratio.
It represents the total number of tea tokens staked by any network participant to secure the network.

Let $\chi_{ideal}$ be the steeping ratio we would like each package to attain for a fair distribution of rewards across all packages and their dependencies.
The value of $\chi_{ideal}$ must be updated as new packages are added to the decentralized registry, and dependencies are created.
To determine the best value for $\chi_{ideal}$, we will use a popularity bell curve updated at the start of each reward cycle.

Let $\tau = \tau(\chi)$ be the annual steeping interest rate distributed to all tea community members who steep tea tokens to support open-source developers.
In other words, $\tau(\chi)$ corresponds to the steeping reward received over a year by a community member that steeps tea tokens for the entire year.

Let $\gamma = \gamma(\psi)$ be the annual staking interest rate distributed to all node operators and network participants who stake tea tokens to secure the network.
In other words, $\gamma(\psi)$ corresponds to the staking reward received over a year by a community member that stakes tea tokens for the entire year.

Let $\delta$ be the annual inflation directed at the network treasury.
$\delta$ may vary as external factors affect the token supply.

We consider the annual steeping reward rate as a function of $\chi$ and the annual staking reward rate as a function of $\psi$.

* $\tau(\chi)$ corresponds to the incentive for people to steep a package.
As $\chi$ increases, fewer rewards $\tau(\chi)$ are needed.
* $\gamma(\psi)$ corresponds to the incentive for people to stake the network.
As $\psi$ increases, fewer rewards $\gamma(\psi)$ are needed to secure the network.

The annual inflation $I$ will be equivalent to $(\tau + \gamma + \delta)$ and calculated as follows:

$$
I = \frac{\textrm{token supply at the end of the year} - \textrm{token supply at the beginning of the year}}{\textrm{token supply at the beginning of the year}} = (\tau + \gamma + \delta)
$$

The contribution to inflation of $\tau_{\textsc{all}}$ (incentive distributed to all package steepers) and $\gamma_{\textsc{all}}$ (incentive distributed across all contributors to the network security) should be weighed to ensure that the system incentivizes the optimal steeping/staking ratio.

As we focus on the incentives distributed across all package steepers, we determine that
$\tau_{\textsc{all}}$
is a function of the steeping ratio $\chi$ and therefore
$\tau_{\textsc{all}}(\chi) = \chi \cdot \tau(\chi)$.
From our previous analysis, we can see that
$\tau_{\textsc{all}}(\chi_{ideal}) = \chi_{ideal} \cdot \tau_{ideal}$.
Since the goal is to reach a state where
$\chi = \chi_{ideal}$
, rewards
$\tau_{ideal}(\chi)$
should be maximal at that value.

Let $\tau_{ideal} = \tau(\chi_{ideal})$
be the reward rate delivered by the network at the ideal scenario where
$\chi = \chi_{ideal}$.

Let $\tau_{0}$ be the limit of  $\tau_{\textsc{all}}(\chi)$ as $\chi$ goes to zero when no members of the tea community steep any packages.
The value of $\tau_{0}$ should be close to zero but not zero to incentivize early adopters.
As suggested by the web3 Foundation’s research, we propose that:

* the inflation function grows linearly between $\chi = 0$ and $\chi = \chi_{ideal}$, and
* it decay exponentially between $\chi = \chi_{ideal}$ and $\chi = 1$.

We chose a similar exponential decrease for $\tau_{\textsc{all}}(\chi)$ because it implies an exponential decrease of $\tau(\chi)$, and we want rewards to fall sharply beyond $\chi_{ideal}$ to prevent a single package from receiving all the rewards.

The decay is defined so that the inflation rate decreases by at most 50% when  $\chi$ shifts $d$ units to the right of $\chi_{ideal}$ – i.e.
$\tau_{\textsc{all}}(\chi_{ideal} + d) \geq \tau_{\textsc{all}} \cdot 0.5$.

We propose the following interest rate and inflation rate functions, which depend on the parameters $\chi_{ideal}$, $\tau_{ideal}$, $\tau_{0}$ and $d$.

\begin{align*}
&\tau_{\textsc{all}}(\chi) = \tau_{0} + (\tau_{\textsc{all}}(\chi_{ideal}) - \tau_{0})\frac{\chi}{\chi_{ideal}}\enspace\textrm{for}\;0 < \chi \leq \chi_{ideal} \\
&\tau_{\textsc{all}}(\chi) = \tau_{0} + (\tau_{\textsc{all}}(\chi_{ideal}) - \tau_{0}) \cdot 2^{(\chi_{ideal}-\chi)/d}\enspace\textrm{for}\;\chi_{ideal} < \chi \leq 1
\end{align*}

Just as good actors need to be rewarded; bad actors need to be identified and penalized.
Open-source software provides many opportunities for bad actors to create pain points and reputational risks for an entire community of developers.
From the misappropriation of work to the alteration and redistribution of software packages, or the injection of nefarious code, the war between good and bad actors goes on, often with well-funded bad actors who see the contamination of open-source packages as an opportunity to benefit financially.
The downside has been relatively minimal, with packages potentially banned from digital shelves or subjected to a poor reputation.

We propose introducing a slashing mechanism to establish a more material downside that directly affects bad actors’ economic value.
As tea tasters evaluate and analyze the code in newly submitted packages, we suggest tea tasters receive the tools and incentives to pinpoint and highlight nefarious code so package users can be made aware of the risks, and package maintainers, package supporters, and sponsors are penalized for submitting or supporting nefarious code.
To that extent, for all evidenced negative reviews performed per the network rules and which have been addressed by the package maintainer within the governance-defined period, the package maintainer should not incur any penalty contrary to the package supporters and sponsors or the tea tasters who provided a positive review of the package in question.
For negative reviews performed per the network rules and that the package maintainer has not addressed within the governance-defined period, a fraction of the tokens steeped by the package maintainer, the package supporters and sponsors, and previous tea tasters will be slashed.
Another fraction will be locked into an insurance pool controlled by the tea governance.
The tea governance will establish policies and rules in close collaboration with the community to distribute the pool’s contents to those affected by vulnerabilities.
The protocol will distribute a third fraction of the steeped tokens across all tea tasters who contributed to the negative review and steeped against the package, based on the number of tea tokens they steeped “against” the package and how long their tokens have steeped.
In other words, the sooner one or more tea tasters identify and report the flaw according to the rules of the network, the higher the reward they will get for supporting safe and productive open-source development.

To prevent community members from randomly voting “against” highly steeped packages hoping to receive the majority of any penalty, all tea tokens steeped “against” will not be rewarded with inflation and may be subject to a decay mechanism, thus reducing their value over time.

[^19]: Source: @web3


# Governance

Governance is critical to the development, sustainability, and adoption of any distributed system.

We propose that tea includes on-chain governance where all tea token holders can suggest and vote on changes to critical parameters weighted by token ownership and reputation.
These parameters could include inflation, transaction fees, staking rewards, steeping rewards, or optimum steeping ratio.
This functionality will ensure that critical parameters can evolve and be optimized over time by members of the tea community.
We anticipate governance will launch with a simple structure and progressively expand as the tea system matures, facilitating adoption and ensuring progressive decentralization.

Some system parameters may not be subject to governance or support high-frequency changes to reduce the attack surface represented by governance.
A progressive transition of parameters to open, decentralized governance will ensure the stability and predictability of the system.


# Third-Party Extensibility

As we build the initial tools to ignite the long-overdue support of the open-source communities, we believe part of our mission is to ensure that third parties can extend the overall toolset.
In addition to providing the infrastructure for developers to build extensions to the protocol, including new ways to innovate and further the support of open-source developers, our plans include the potential for other package managers to contribute to the protocol.
The dreams and efforts of open-source developers have built the innovation that supports our everyday life.
We look forward to discovering the new uses and extensions for tea proposed by the tea community.


# Future Work and Potential Community Efforts

As the tea system matures, we foresee the community deciding and contributing to alterations and extensions of the tea system through governance.
Below are some ideas that we believe may inspire some.

## tea Wholesalers

Open-source software communities are vibrant and constantly looking to innovate and deliver value.
This dedication and altruism lead to the constant building of new software and packages, each one pulling dependencies.
As a result, we anticipate the dependencies map to evolve constantly, leading to frequent changes to the steeping ratio and rewards.
In the future, the tea community may propose the development of a system designed to dynamically monitor the steeping ratio for each package and rebalance how package supporters steep their tokens based on their own criteria.

## Royalties on Package Transfer

We recognize that package maintainers may decide to transfer their steeping rewards stream to one or more developers.
The governance of such transfer must remain the decision of the package maintainer and their partners, with no interference from tea.
Tools will need to be provided for such transfer to be total or partial (perhaps through only a portion of the steeping rewards being redirected to one or more developers, while the remaining rewards continue to flow to the original package maintainer)
and for the steeping rewards to flow through a single account controlled by a single network participant, multiple network participants, or automatically distributed across multiple accounts using static or dynamic ratios.

## Rewards Distribution Across Multiple Maintainers

The maintenance of a package can rely on the work of one more team of developers.
Before steeping rewards start to flow, teams should consider automating the distribution of steeping rewards amongst themselves.
How the distribution occurs must be decided by the maintainers themselves, as they are in the best position to evaluate who contributed and how they should be rewarded.

To accomplish that, each team (or teams) could set up their own decentralized autonomous organization (DAO) and either automate the distribution of rewards or deploy more complex systems to determine the adequate rewards distribution based on external factors such as a vote from all DAO members,
or time-based distributions based on continuous contribution, successful completion of bounties, etc.

## Handling Package “Forks”

We believe that forks are essential and largely under-utilized.
Forks can be an effective tool for developing packages that compete in functionality, performance, security, and even attention.
As useful as they may be, forks must recognize the original efforts.
Through future work or potential contributions, the tea community may enhance the system to require forks to be declared, perhaps even detected when a package is submitted.
Undeclared forks revealed by tea tasters may result in a portion of the steeped tokens being slashed, transferred to the original package maintainer, and sent to the tea tasters who revealed the fork.

## Runtime vs. Build Dependencies

tea may not distinguish build dependencies from runtime dependencies when distributing steeping rewards at launch.
However, provided the tea community feels strongly about making such a distinction, the tea community may propose enhancements to the steeping rewards distribution algorithm to account for the criticality of each dependency and their contribution to the value of the packages that depend upon them.
These proposals would be voted upon and implemented based on the community’s decision.

## Usage-based Remuneration

As more applications are built using packages registered with tea, the community may augment the reward algorithm so that allocation may be influenced by external attested datasets such as usage.
This update to the rewards mechanism could allow for a higher allocation of tea token rewards to flow towards packages with the highest usage while still respecting the constraints of the steeping ratio described in the tea token section.
Package maintainers could use a similar approach to distribute steeping rewards across their dependencies based on the transparent logic of their choice.
Note that all information used to affect the distribution of rewards across packages and dependencies in the tea system will need to be provably reliable.


# Acknowledgments

This white paper would not exist without the support and dedication of many teaophiles.
The authors would like to acknowledge Josh Kruger, Jadid Khan, and Jacob Heider for their contribution to the tokenomics and the many discreet individuals who volunteered their time to provide feedback on the contents of this document.

$\parskip=0pt plus 1pt$

# Glossary of Terms

| Term | Definition |
|------|------------|
| Leaf | The smallest denomination of the tea token. A leaf corresponds to one one-hundred-millionth ($10^{-8}$) of a tea. |
| Slashing | The action of penalizing steepers or stakers in response to behavior contrary to the network rules. |
| Staking | The action of locking tea tokens to secure the proof-of-stake network upon which the tea system is built. |
| Steeping | The action of locking tea tokens to support your claim and receive rewards (or penalties) based on the consensus on the validity of your claim. |


# References
