# Ansvarsfraskrivelse

Informasjonen i denne hvitboken er av foreløpig karakter.
Følgelig påtar verken forfatterne eller noen av deres respektive tilknyttede selskaper noe ansvar for at informasjonen oppgitt her er endelig eller korrekt, og hver av de foregående fraskriver seg,
i den grad det er tillatt i henhold til gjeldende lov, ethvert og alt ansvar, enten det oppstår i form av erstatning, kontrakt eller på annen måte i forhold til denne hvitboken.
Verken denne hvitboken eller noe som helst heri skal danne grunnlaget for eller stoles på i forbindelse med eller virke som en oppmuntring til å inngå noen kontrakt eller forpliktelse overhodet.

Ingenting i denne hvitboken utgjør et tilbud om å selge eller en oppfordring om å kjøpe noen tokens som er omtalt her.
I alle fall, dersom denne hvitboken skulle anses å være et slikt tilbud eller oppfordring, er ingen slikt tilbud eller oppfordring tiltenkt eller formidlet av denne hvitboken i noen jurisdiksjon der det er ulovlig å gjøre det,
der et slikt tilbud eller oppfordring vil kreve en lisens eller registrering, eller hvor et slikt tilbud eller oppfordring er underlagt restriksjoner.
Spesielt noen tokens som er omtalt her har ikke blitt, og fra datoen for utstedelse av denne hvitboken, ikke ment å være, registrert under verdipapirer eller lignende lover i noen jurisdiksjon,
hvorvidt en slik jurisdiksjon anser slike tokens for å være et verdipapir eller lignende instrument og ikke kan tilbys eller selges i noen jurisdiksjon der å gjøre det ville utgjøre et brudd på de relevante lovene i slik jurisdiksjon.


# Tillatelse

Kildekoden[^src] til denne artikkelen er tilgjengelig under Creative Commons Attribution-ShareAlike 4.0 International[^cc]-lisensen.

[^src]: Se: @sources
[^cc]: Se: @cc


# Introduksjon

Internett består hovedsakelig av åpen kildekode-prosjekter og har vært det siden starten.
Over tid har mange av disse prosjektene blitt grunnleggende deler som all fremtidig innovasjon er bygget på.
Og mens det har blitt tjent formuer på det, skapes og vedlikeholdes åpen kildekode hovedsakelig uten kompensasjon.

Vi tror at hele moderne menneskelige bestrebelser har blitt hemmet ved å stole på at den minste prosentandelen av verdens ingeniører velger mellom en lønn eller å holde Internett i gang.
Åpen kildekode er et kjærlighetsarbeid som ofte hindres av mangel på meningsfulle økonomiske insentiver, noe som resulterer i at genuint verdifulle prosjekter aldri når sitt potensiale mens andre lider av sikkerhetsproblemer på grunn av mangelen på insentiver til å vedlikeholde programvare gjennom hele livssyklusen.
For å realisere potensialet vårt fullt ut, trenger vi et rettferdig godtgjørelsessystem for åpen kildekode-økosystemet som ikke fundamentalt endrer hvordan det bygges eller brukes.

Bedrifter omslutter ofte forretningsmodeller rundt åpen kildekode, og genererer inntekter direkte fra arbeidet til de velvillige utviklerne, samtidig som de stoler på dem for å fikse feil etter hvert som problemer oppstår.
Et godt eksempel er en nylig hendelse som involverte en kritisk sikkerhetssårbarhet i Log4j, en pakke fra Apache Software Foundation som fant veien gjennom mange kommersielle programvarer og tjenester ansatt av bedrifter og myndigheter.
I november 2021 rapporterte en sikkerhetsforsker som jobbet for Alibaba Group Holding Ltd. om sårbarheten CVE-2021-44228[^1], som fikk høyest mulig grunnscore fra Apache Software Foundation.
Amit Yoran, administrerende direktør i Tenable og grunnlegger av United States Computer Emergency Readiness Team (US-CERT), beskrev denne sårbarheten som «den største, mest kritiske sårbarheten det siste tiåret»[^2].
Panikk fulgte og de få frivillige som opprettholdt denne pakken ble offentlig under ild for feilen.
Etter å ha adressert forargelsen med en ydmyk bønn om rettferdighet, ble systemene lappet.
Bedrifter og myndigheter innså etter hvert at Log4j, en pakke som ble brukt av et bredt spekter av kritiske systemer i to tiår, ble vedlikeholdt av noen få ubetalte frivillige, de samme usungne heltene som kom til handling til tross for misbruk fra industrien[^3] og jobbet utrettelig for å adressere sårbarheten.

Dessverre er Log4j langt fra det eneste eksemplet.
core-js lastes ned 30 millioner ganger per uke som base for hver Node.js-applikasjon, men den er også knapt finansiert.
Nylig trakk flere bitcoin-kjerneutviklere seg, blant annet med henvisning til en *mangel på økonomisk kompensasjon* for avgjørelsen deres.

Det har vært flere forsøk på å tilby insentivstrukturer, vanligvis med sponsing og dusørsystemer.
Sponsing gjør det mulig for forbrukere av åpen kildekode å donere til prosjektene de favoriserer.
Men se for deg åpen kildekode som et tårn av murstein der lavere lag for lenge siden er glemt, men fortsatt vedlikeholdt av dedikerte ingeniører og stolt på av enda flere utviklere.
Bare prosjekter på toppen av tårnet er typisk kjent og mottar sponsing.
Dette partiske utvalget fører til viktige klosser som holder tårnet oppe og tiltrekker seg ingen donasjoner, mens favoritter mottar mer enn de trenger.
Dusør tillater forbrukere av prosjekter å foreslå betaling for utviklere for å bygge spesifikke funksjoner, og dermed bare lønne prosjekter for å gjøre ting som ikke nødvendigvis er i deres beste interesse.
Og igjen, bare givende favoritter.

I denne artikkelen foreslår vi te - et desentralisert system for rettferdig lønning av åpen kildekode-utviklere basert på deres bidrag til hele økosystemet og vedtatt gjennom te-incentivalgoritmen som brukes på tvers av alle oppføringer i te-registeret.

![Forenklet visning av belønningssystemet for te-steeping.](img/figure-1.svg)

$\parskip=0pt plus 1pt$

[^1]: Source: @nist
[^2]: Source: @reuters
[^3]: Source: @twitter


# Komponenter

En programvareutvikler som bygger en applikasjon trenger fire ting: en nettleser, en terminal, en editor og en pakkebehandling.
Av disse fire er pakkebehandleren det som kontrollerer verktøyet og rammeverket en utvikler trenger for å konstruere produktet sitt.
Dette laget er der vi ser potensialet for å endre hvordan åpen kildekode belønnes.

## Pakkebehandleren

Pakkebehandleren vet hvilken åpen kildekode-programvare en applikasjon er avhengig av for å fungere, fra toppen av tårnet til basen.
Hver komponent og versjon som er viktig for applikasjonen er kjent og registrert.
Den vet at toppen av tårnet nøye velger sine avhengigheter og at nøye utvelgelse fortsetter nedover.
Pakkebehandlingen er unikt plassert i utviklerverktøystabelen for å muliggjøre automatisert og presis verdidistribusjon basert på faktisk bruk i den virkelige verden.

Vi foreslår et uforanderlig desentralisert register designet for å distribuere verdi basert på en algoritme som bestemmer hver oppførings bidrag til systemets nytte og helse.
Verdien kan gå inn i grafen ved apex-punkter – apper og essensielle biblioteker – og distribueres til avhengighetene til disse apex-punktene og deres avhengigheter rekursivt siden registret kjenner hele open source-grafen.

I tillegg mener vi at materiell informasjon må være tilgjengelig via pakkebehandlingen for utviklere å vurdere om de kan stole på en pakke og dens forfatter.
Denne informasjonen kan være basert på omdømme, fellesskaps-kudos, data hentet fra desentraliserte identitetssystemer (DID[^4]), andre pakkeforvaltere eller insentivmekanismer som potensielt er avhengige av nettverksdeltakere som setter økonomisk verdi i fare.

Vi spår at tes kombinasjon av verktøy, informasjon og belønninger rettferdig vil stimulere utviklere, bidra til å stimulere veksten av åpen kildekode-programvare og fremme innovasjon.
[^4]: See: @w3

## Det desentraliserte registeret

Hver pakkebehandler har sitt eget pakkeregister som dupliserer de samme metadataene gjentatte ganger.
Det er på tide at det er et enkelt, omfattende og definitivt register designet og styrt av samfunnene som er avhengige av det.
Dette desentraliserte, uforanderlige registeret kan gi sikkerhet, stabilitet og forebygge
ondsinnet hensikt.

Internett kjører på titusenvis av viktige åpen kildekodekomponenter.
Det er bemerkelsesverdig at så langt har hendelser forårsaket av fjerning av viktig åpen kildekode-infrastruktur vært minimale.
Den mest kjente var fjerningen av en NPM venstre-pad[^5]-avhengighet i 2016, som gikk over i kontinuerlig integrasjon og kontinuerlige distribusjonssystemer som etterlot utviklere høyt og tørre i flere dager.
Denne hendelsen demonstrerte at Internett i seg selv er basert på skjøre utviklingssystemer.
Andre eksempler involverte aktiv eller tilsiktet deltakelse fra pakkevedlikeholderne som saboterte deres populære pakker (se colors.js, faker.js[^6] og node-ipc[^7]),
eller dårlige skuespillere som ønsker å tjene penger ved å late som de hjelper til med å vedlikeholde pakker og korrumpere dem til å stjele, for eksempel private Bitcoin-nøkler (se event-stream[^8]),
eller ondsinnede pakker med tilsiktede stavefeil, også kjent som skrivefeil,
i håp om å lure brukere til å installere dem, for eksempel crossenv vs cross-env NPM-pakker[^npmjsCrossenv].

Programvareintegritet må garanteres etter hvert som industrien skrider frem mot en fremtid der digitale eiendeler er en del av programvaren.
Vi kan ikke fortsette å forlate oss selv sårbare for ondsinnede aktører som endrer programvaren.

De fleste verktøyene som vi kaller pakkeadministratorer kan ikke garantere at disse pakkene som er innebygd i appene og dApps, er den uendrede åpen kildekode som er publisert av deres opprinnelige forfattere.
Microsofts GitHub har funnet ut at 17 % av sårbarhetene i programvare ble plantet for ondsinnede formål[^9], mens noen gjenstår uoppdaget i lengre perioder (se Webmin 1.890[^10]).

Et desentralisert register forsterket av et omdømmesystem og støttet av økonomiske insentiver designet for å avsløre dårlige aktører og belønne gode aktører kan gi garantiene utviklermiljøer har lett etter.

[^5]: Source: @theregister
[^6]: Source: @fossa
[^7]: Source: @lunasec
[^8]: Source: @github
[^npmjsCrossenv]: Source: @npmjsCrossenv
[^9]: Source: @zdnet
[^10]: Source: @threatpost


## Lagringssystemet

Åpen kildekode-pakker leverer et bredt spekter av funksjonalitet, hvorav noen kan være begrenset eller uønsket.
Kryptering er et utmerket eksempel på det.
Et kritisk bruksområde for kryptering er støtten til enkeltpersoners personvern over hele verden.
Kryptering kan imidlertid også brukes til ondsinnede formål (se Phantom Secure, demontert av rettshåndhevelsesbyråer i mars 2018[^11]) eller kan bli kompromittert for å støtte rettshåndhevelsesaktiviteter (Se Operation Ironside (AFP), Operation Greenlight (Europol) ),
og Operation Trojan Shield (FBI)[^12] der FBI opererte en "kryptert" kommunikasjonsplattform, AN0M, og overbeviste kriminelle om å bruke sine "krypterte" telefoner for sikker kommunikasjon).

Kryptering sine brede applikasjoner har gjort det til et perfekt bruksområde for åpen kildekode-programvare og et godt eksempel på at enhver løsning som lagrer pakker må være manipulasjonssikker og sensurbestandig.
te er en desentralisert protokoll som ikke har til hensikt å filtrere eller sanksjonere pakker basert på deres funksjonalitet.
Selv om te-styringen kan velge å fjerne påviste skadelige pakker (se styringsdelen for mer informasjon), er det avgjørende for te-systemet å koble til flere lagringssystemer, inkludert desentraliserte som viser at en pakke er uendret og korrekt replikert.
Pakkevedlikeholdere kan velge det lagringssystemet som passer best for deres behov for å lagre og distribuere pakkene deres sikkert.

[^11]: Source: @fbi
[^12]: Source: @europol

# Nettverksdeltakere

teas oppgave er å styrke åpen kildekode-fellesskap og sikre at deres bidragsytere støttes når de lager verktøyene som bygger Internett.
I denne hvitboken skiller vi deltakere gjennom deres bidrag.
Noen kan bidra med kode eller bekrefte bidraget kode.
Andre kan gi økonomisk verdi for å støtte utviklere og deres omdømme.

## Pakkevedlikeholdere

Pakkevedlikeholdere må sørge for at programvaren deres fortsetter å levere økende verdi etter hvert som industrien utvikler seg.

tea forutsetter at pakkeskapere opprettholder arbeidet sitt.
Pakkevedlikeholdere er pilarene i fellesskap med åpen kildekode som må styrkes og belønnes for deres pågående bidrag.
En pakkevedlikeholder kan bestemme seg for å avbryte vedlikeholdsarbeidet eller innse at de ikke kan operere i et tempo som samsvarer med pakkebrukernes forventninger.
Pakkevedlikeholdere mottar et ikke-fungibelt token (NFT) når de fullfører en pakkeinnsending (se NFT-delen for vedlikeholder for ytterligere detaljer).
Denne NFT-en brukes til å bevise arbeidet deres og er nøkkelen som styrer te-belønninger.
Innehaveren av en pakkes NFT kan overføre eierskapet til en annen utvikler (eller gruppe av utviklere), og dermed gjøre dem til vedlikeholdere av pakken og mottakere av eventuelle fremtidige belønninger.
På samme måte kan en utvikler bestemme seg for å ta på seg rollen som pakkevedlikeholder ved å splitte den eksisterende pakken og sende inn en ny som de vil opprettholde fremover, og dermed bli både pakkeoppretter og vedlikeholder.

Det er viktig å gi utviklermiljøer de riktige verktøyene for å bestemme hvilke pakker som vedlikeholdes og deres tidligere og nåværende vedlikeholders omdømme og kvaliteten på arbeidet.
Vi har altfor ofte sett åpen kildekode-arbeid bli tuklet med og innsatsen til mange ødelagt av dårlige skuespillere.
Selv om arbeidet til disse dårlige aktørene i stor grad blir oppdaget og utbedret, er det ofte ikke før det er påført betydelig skade gjennom økonomisk tap eller tap av data.
Ta for eksempel EventStream npm-pakken[^13] som ble lastet ned over 1,5 millioner ganger per uke og ble brukt av over 1500 pakker da en hacker klarte å trenge gjennom åpen kildekode-prosjektet,
få tilliten til den opprinnelige forfatteren og modifiser EventStream til å være avhengig av en ondsinnet pakke som vil eksfiltrere bitcoin-lommeboklegitimasjonen til en tredjepartsserver\.
Selv om verktøy kan hjelpe med å oppdage noen av disse angrepene, kan de ikke alltid stole på, noe som skaper et helt fellesskap avhengig av hverandres flid og vilje til å dele funnene sine.

Vi foreslår å introdusere insentiver via te-tokenet som er beskrevet i te-token-delen, og oppmuntrer åpen kildekode-samfunn til å rapportere funnene sine på en konstruktiv måte, slik at pakkevedlikeholdere kan ta tak i dem før de blir utnyttet.

[^13]: Source: @medium

## Pakkebrukere

Pakkebrukere er programvareutviklere som fokuserer på å løse et spesifikt problem.
De ser ofte i åpen kildekode-fellesskapet etter verktøyene de trenger for å eksperimentere raskt og iterere til svært liten eller ingen kostnad, og drar direkte fordel av arbeidet til pakkeskapere og vedlikeholdere.
Tradisjonelt kan et undersett ha valgt å støtte pakkevedlikeholdere gjennom donasjoner eller andre former for godtgjørelse; dette har imidlertid sjelden vært tilfelle.

Sponsing kan være et effektivt system for å støtte åpen kildekode-utvikling; men godtgjørelse omfatter vanligvis ikke alle avhengigheter.
Denne begrensningen kommer favoritter til gode og kommer i veien for innovasjon og programvarebygging.
For å arbeide som grunnlaget for programvareutvikling, må åpen kildekode styrke alle utviklere, enten det er nybegynnere eller eksperter, på tvers av alle lag i tårnet.

teas formål er å opprettholde kjerneverdiene til åpen kildekode-programvare og samtidig tilby et desentralisert system for å lønne pakkevedlikeholdere for arbeidet deres.
For å oppfylle dette oppdraget, har te til hensikt å utvikle – og motivere andre til å utvikle – mekanismer for pakkebrukere for å støtte pakkevedlikeholdere gjennom unike brukstilfeller av te-tokenet, som beskrevet i delene for te-token og fremtidig arbeid og potensiell samfunnsinnsats.

## Pakkestøtter og sponsorer

I Web 2.0 og web3 har pakkestøtte ofte blitt kalt "sponsorer". De er organisasjoner eller pakkebrukere som bruker åpen kildekode-programvare for å bygge sine kommersielle produkter, filantroper som ønsker å støtte økosystemet, eller gründere som ønsker å finansiere team for å utvikle komponenter i et større system.

tea foreslår å utvide fellesskapene til pakkestøtte til hele tesamfunnet, enten det er organisasjoner, utviklere, brukere eller teknologientusiaster.
teas mål er å implementere desentraliserte insentivmekanismer gjennom unike brukstilfeller av te-tokenet for ethvert medlem av tesamfunnet for å bidra til evig bærekraft og kontinuerlig vekst av åpen kildekode.
Pakkestøttespillere og sponsorer står fritt til å bestemme hvilke pakker eller pakkevedlikeholdere de vil støtte basert på deres arbeid, tro eller andre kriterier og beregninger som vil påvirke avgjørelsen deres.
I tillegg vil støtten fra pakkesupportere og sponsorer strømme til hver pakkes avhengigheter, og dermed implisitt stole på at pakkevedlikeholderen tar gode valg om stabelen deres og bruker denne informasjonen til å bidra til deres omdømme.

Forutsatt at pakkevedlikeholderen tilbyr en slik tjeneste, kan en pakkesupporter og sponsor motta et premium støttenivå NFT i retur, og dermed dra nytte av akselererte SLAer eller mer fleksibel lisensiering.
I tillegg kan pakkesupportere og sponsorer bestemme seg for å støtte pakker eller pakkevedlikeholdere og automatisk omdirigere hele eller en prosentandel av belønningene for å motivere team til å bygge ny åpen kildekode-programvare.
Med andre ord, pakker trenger ikke å eksistere for at te skal begynne å strømme inn.
Nye prosjekter kan støttes like godt som mer modne prosjekter, og stimulerer et stadig utviklende åpen kildekodelandskap ytterligere.

## te Tasters

Etter hvert som nye pakker eller nye versjoner av eksisterende pakker utgis, må gyldigheten av arbeidet beviselig demonstreres.
Denne informasjonen er avgjørende for at pakkebrukere skal avgjøre om de skal stole på både pakken og dens vedlikeholdere.
Med te-protokollen leveres denne funksjonen av tesmakerne.

tesmakere er vanligvis erfarne programvareutviklere som er villige til å bruke litt av tiden sin på å sjekke påstandene knyttet til en pakke (funksjonalitet, sikkerhet, semantisk versjonering[^14], lisensnøyaktighet, etc.)
og satse både deres omdømme og økonomiske verdi for å demonstrere resultatet av deres forskning og analyse og støtte deres vurderinger.
tesmakere får belønning for deres flid og innsats.
Hos tea kaller vi å "stepe din te" handlingen med å låse te-tokens for å støtte anmeldelsene dine og motta belønninger (eller straffer) basert på konsensus om gyldigheten av anmeldelsene dine.

I likhet med pakkesupportere kan tesmakere påvirke omdømmet til en pakke- og pakkevedlikeholder; deres innvirkning er imidlertid mer betydelig gitt deres rolle i å validere en pakkes sikkerhet, funksjonalitet og kvalitet.
tesmakere må også bygge opp sitt rykte for å støtte påstandene sine.
Kvaliteten på arbeidet deres og den økonomiske verdien de setter i fare når de øker anmeldelsene sine kombinert med andre eksterne datakilder, vil bygge hver tesmakers omdømme, og gi mer verdi til arbeidet deres.
Se delen om pakkeomdømme for mer informasjon om mekanismene som brukes til å påvirke omdømmet til en pakke og pakkeholder.

[^14]: See: @semver

# Protokolloversikt

Utformingen av en protokoll for å belønne bidrag med åpen kildekode er full av utfordringer.
Programvare med åpen kildekode er per definisjon åpen for alle og kan som et resultat bli utsatt for feiltilordning, tilegnelse eller ondsinnet tukling.
Open-source-samfunnet har imidlertid konsekvent vist sin vilje til å fremheve gode aktører og avsløre dårlige aktører.
Historisk sett har energien brukt på å gjennomgå og kommentere andre utvikleres bidrag vært strengt frivillig, til tross for hvor tidkrevende og avgjørende rapportering og forsvar av funn kan være.

Vi har til hensikt å skape en tillitsløs distribusjonsplattform for applikasjoner sikret av omdømme og økonomiske insentiver, ettersom vi mener tilstrekkelige belønninger for åpen kildekodebidrag ikke kan lykkes uten både et omdømmesystem og muligheten for medlemmer av fellesskapet til å kommunisere sine funn og støtte (eller dissens) for en pakke eller arbeidet til en utvikler.

Vi må gi utviklere verktøy for å få tilgang til og bidra til dette omdømmesystemet.
Verktøy som inkluderer enkel visuell og programmerbar tilgang til versjonen og omdømmet til alle avhengigheter i pakkene deres.
En klar forståelse av hvilke fellesskapsmedlemmer som støtter hver pakke og hvor mange te-tokens de fyller med, vil bidra til omdømmet til hver pakke, akkurat som hvor mye en pakkevedlikeholdsholder gjennomsyrer arbeidet sitt, kommuniserer hvor mye de står bak arbeidet sitt.
Disse kombinerte datapunktene vil bidra til å informere et omdømmesystem for alle fellesskapsmedlemmer og lette valg.
Siden EventStream-pakkehacket ikke ble utført gjennom selve pakken, men via en av dens avhengigheter, vil synlighet på tvers av alle lag av avhengigheter være avgjørende for å bygge dette tillitsløse systemet.
Imidlertid vil hensyn som beregnings- og transaksjonskostnader («gass») måtte prioriteres etter hvert som systemet designes og bygges.

Målet vårt er å belønne både Web 2.0- og web3-utviklere.
Forviklingene og spesifikasjonene til hver stabel gjør det slik at sporingsinstallasjoner og avinstallasjoner av pakker lett kan bli offer for en eller flere dårlige aktører.
Det inkluderer å "kjøpe" installasjoner for å kunstig blåse opp tall.
Et enda verre scenario ville være å introdusere grunnleggende endringer i naturen til åpen kildekodeprogramvare ved å skape unødvendig friksjon med lisensnøkler eller andre distribusjonssporingsmekanismer.
For å gi den bredeste dekningen, mener vi at belønninger ikke må stole på en forenklet oppfatning av sporing av installasjoner eller avinstallasjoner, men snarere på insentivmekanismer som oppmuntrer til innsending av kvalitetspakker og rapportering av ondsinnede eller høyrisikopakker.
Til slutt er mange pakker avhengige av vanlige avhengigheter.
For eksempel har Lodash 151 209 pårørende[^15] mens kritt har 78854 pårørende[^16] eller Log4js har 3343 pårørende[^17].
Ettersom flere pakker opprettes ved å bruke de samme avhengighetene, hvordan sikrer vi at insentiver fordeles rettferdig og rettferdig?
Hvordan sikrer vi at de mest brukte avhengighetene blir belønnet uten å sulte ut nye eller nye pakker og utviklere?
Hvordan sikrer vi at insentivsystemet ikke ender opp med å styre utviklere bort fra nisjespråk for å sentralisere dem der insentiver er bedre?
Men også, som utviklere, hvordan identifiserer vi pakker med de fleste avhengige for å bygge alternativer - slankere, mer effektive, bedre kodede versjoner av disse pakkene?
Hos tea tror vi at mangelen på insentiv har hindret utviklingen av åpen kildekode-programvare.
Støttet av de riktige økonomiske insentiver og belønninger, vil flere utviklere være i posisjon til å bygge, forbedre og utvide åpen kildekode-programvare for å forbedre verden.
Først da vil te-tokenet kunne representere den totale verdien av åpen kildekode-programvare.

[^15]: Source: @npmjsLodash
[^16]: Source: @npmjsChalk
[^17]: Source: @npmjsLogFourjs

## Pakkeinnlevering

Innsending av en pakkeutgivelse krever at flere transaksjoner skjer atomært.
Spesielt må pakkevedlikeholderen:

* Registrer pakken (og dens semantiske versjon) med det desentraliserte registeret.
* Last opp pakken til det desentraliserte lagringssystemet for spenst, sensurmotstand og enkel distribusjon.
* Bidra til pakkens rykte og pålitelighet ved å *bløte* te-tokens.

Hvis noen av de tre operasjonene mislykkes, vil protokollen gå tilbake til sin tidligere tilstand, og dermed eliminere alle bevis på innsendingen.

Når en pakke er sendt inn, vil pakkevedlikeholderen motta en vedlikeholds-NFT for å bevise deres arbeid og bidrag til åpen kildekode.
Pakkevedlikeholderen kan overføre steeping-belønningene knyttet til vedlikeholderens NFT til en tredjepart.
Omdømmet knyttet til opprettelsen og vedlikeholdet av eiendelen vil imidlertid forbli hos pakkevedlikeholderen, slik at omdømmet deres kan bli påvirket over tid.
Ettersom omdømmet til ethvert medlem av tesamfunnet når viktige milepæler, kan de få tilgang til forhøyede deler av protokollen eller motta akselererte belønninger, som bestemt av testyret.
For mer informasjon om vedlikeholder NFT, se vedlikeholder NFT-delen.

### Avhengighetsanalyse

Pakkeavhengigheter kan løpe dypt, da hver pakke ofte har både avhengigheter og avhengigheter.
For å gi en enkel metodikk som belønner alle utviklere som har bidratt til åpen kildekode-programvare, samtidig som opprettelsen av avhengighetstreet holdes raskt og beregningsmessig effektivt, foreslår vi kun å verifisere førstenivåavhengigheter ved innsending av en pakke.

Denne utformingen er drevet av hypotesen om at hver avhengighet i seg selv er en pakke som ble uavhengig sendt til tetreet.
Ved å gjøre dette kan hver av dens avhengigheter kartlegges, og hvis dens avhengigheter har avhengigheter i seg selv, vil disse kartlegges på det tidspunktet avhengighetspakken sendes.

![Diagram for avhengighetsanalyse.](img/figure-3.svg){#fig:dep-analysis}


I @fig:dep-analyse utløser innsending av pakke A en analyse av kjøretidsavhengigheter 1 til n og byggeavhengigheter 1 til n, mens kjøretidsavhengigheter 1.1 til 1.n og byggeavhengigheter 1.1 til 1.n ble analysert da pakke B ble sendt inn.
Vi vil bruke den samme metoden for insentivdistribusjon som de steeped tokens er fordelt på tvers av alle avhengigheter, og dermed rekursivt steepe pakkene som er oppført som avhengigheter (se @fig:steeping-rewards).

![Styngende belønningsfordeling på tvers av avhengigheter.](img/figure-2.svg){#fig:steeping-rewards}


Versjonsstyring og motstridende avhengigheter er betydelige utfordringer, og feilsøking av dem kan bli enorme tidsforbruk.
For å løse dette, foreslår vi at hver pakke blir gjenstand for en omfattende avhengighetsskanning ved innsending, slik at vi kan sikre at pakken overholder følgende regler for semantiske versjonsområder.

* Pakker kan bare begrense avhengighetene sine til en hovedversjon, selv om starten av området kan være en hvilken som helst gyldig semantisk versjon (f.eks. >=5.2.1 <6).
* Hvis en avhengighet oppgraderes til en nyere hovedversjon, kan te kreve at pakkens hovedversjon økes.
* Tilsvarende, hvis en avhengighet oppgraderes til en nyere mindre versjon, kan te kreve at pakkens mindre versjon økes.
* Hvis en ny avhengighet legges til, kan te kreve at pakkens mindre versjon økes.

Tatt i betraktning den unødvendige innsatsen som pålegges enhver pakkebruker når reglene ovenfor overskrides, foreslår vi at en del av te-tokenet som er gjennomsyret av pakkens vedlikeholder, kuttes for å gjenspeile deres manglende due diligence.
Hvis en utvikler tvinger alle til å sjonglere med koppene sine, vil noen søle litt te.
Siden avhengighetsskanningen forventes å finne sted ved innsending, bør vi merke oss at det ikke vil ha skjedd noen steeping fra pakkesupportere og sponsorer eller tesmakere.

## Omdømme for pakke- og pakkevedlikehold

Pakkevedlikeholdere må bidra til pakkens omdømme og pålitelighet ved å trekke te-tokens.
Et omdømmesystem som utelukkende er avhengig av forfatterens økonomiske bidrag gir imidlertid ikke tilstrekkelig brukerbeskyttelse og kan bli utsatt for Sybil-angrep, der et enkelt individ lager flere representasjoner av seg selv for å legge igjen et stort volum av positive anmeldelser på arbeidet sitt,
lure brukere til å tro at arbeidet deres ble anmeldt og godkjent av mange.

Flere metoder er tilgjengelige for å forhindre Sybil-angrep, noen av dem er beskrevet av Nitish Balachandran og Sugata Sanyal i "A Review of Techniques to Mitigate Sybil Attacks"[^18].
Siden te er en desentralisert protokoll, vil bruk av et tillitssertifiseringssystem som er avhengig av en sentralisert sertifikatutstedelsesmyndighet være i strid med dens kjerne.
Vi foreslår å fokusere på desentraliserte tilnærminger til Sybil-angrepsreduksjon og, mer spesifikt, på metoder som er avhengige av en stor gruppe nettverksdeltakere som er incentivert til å vurdere og offentlig representere omdømmet til hver pakke og dens vedlikeholder.

Ligner på produksjon av blokker på en proof-of-stake blokkjede, der ikke-produserende noder kan validere andres arbeid og, når det er nødvendig, fremheve et brudd på reglene for nettverket, noe som fører til straff for den dårlige skuespilleren gjennom slashing (ødeleggelse av en del av innsatsen deres),
vi foreslår et system der tredjeparter (også kjent som tesmakere) vil være i stand til å vurdere pakker produsert av pakkevedlikeholdere og bli økonomisk insentivert til å oppføre seg i beste interesse for programvarefellesskapet med åpen kildekode og dets brukere, samt anerkjenne god oppførsel og straffe dårlig oppførsel.
Dette systemet må være både Sybil-bestandig og forhindre at store token-innehavere påvirker protokollen eller omdømmet til spesifikke pakker.
Vi tror at denne tilnærmingen er mer på linje med åpen kildekode, og gir et mer fruktbart substrat for å fremme adopsjon og tillit, og til slutt lette veksten av te.

[^18]: Source: @arxiv

## Pakkegjennomgang av tredjeparter

Gjennomgang av pakker av tredjeparter er en viktig komponent i omdømmebygging, men tredjeparts gjennomgang har sitt eget sett med unike trusler, inkludert de nevnte Sybil-angrepene.

Blockchain-teknologi, og mer eksplisitt staking, gir en unik mulighet for te til å takle denne utfordringen.
Selv om lommebokadresser kan være tilgjengelige i uendelige mengder, er dette ikke tilfelle med te-tokens, hvis opprinnelige forsyning forventes å være 10 milliarder.
I tillegg vil hver handling som utføres av utviklere, som å sende inn pakker, verifisere pakker eller steile dem, bidra til deres omdømme, og dermed skape en unik profil hver utvikler kan bruke for både å bidra til tesamfunnet og delta i teens styring.

Ved å kreve at tredjeparts anmeldere skal steile te-tokens og pådra seg risikoen for å miste en del av sine gjennomsyrede tokens hvis de skulle vise seg å oppføre seg mot nettverkets interesser eller være en dårlig aktør, kan tredjeparter gi ekstra troverdighet til en pakke og motta en belønning, i form av te-tokens.

Vi foreslår også å utvide omdømmesystemet til tredjepartene som utfører den uavhengige verifiseringen av pakkene - tesmakerne.
Fullføringen av en positiv gjennomgang vil kreve to operasjoner for å skje atomært:

* Innsending av kodegjennomgangen, signert av tesmaken og offentlig tilgjengelig for alle medlemmer av fellesskapet, sammen med
* Handlingen med å trekke "for" pakken (mot "mot" pakken), for å underbygge anmeldelsen deres.

Fullføringen av en negativ anmeldelse som inkluderer en eller flere kritiske sårbarheter, vil kreve at tesmakerne først kontakter pakkevedlikeholderen ved å bruke en meldingsprotokoll for å varsle dem om sårbarheten og tillate dem å løse problemet i tide.
Ved utløpet av den styringsdefinerte perioden som er tildelt pakkevedlikeholderen for å adressere deres sårbarhet, eller når den korrigerte pakken blir tilgjengelig, vil den samme meldingsprotokollen bli brukt til å varsle alle brukere og testere av denne pakken (inkludert pårørende) om at en sårbarhet har blitt identifisert,
og forhåpentligvis adressert, slik at de vet å oppdatere applikasjonen eller avhengighetene sine.
For å motvirke sløsing med utviklernes tid, vil kommunikasjon mellom tesmakerne og pakkevedlikeholderne kreve at tesmakerne får bratte te-tokens.

Etter å ha fullført begge operasjonene vil tesmakerne motta en NFT som bevis på arbeidet med den spesifikke pakken og pakkeversjonen.
Akkumuleringen av NFT-er kombinert med steeping ratio av hver av pakkene som er gjennomgått og informasjon hentet ut fra eksterne systemer, vil informere en tesmakers rykte.
Ettersom omdømmet deres når viktige milepæler, kan tesmakere få tilgang til forhøyede deler av protokollen eller akselererte belønninger, som bestemt av testyret.

## Utdaterte eller korrupte pakker

teas oppgave er å belønne bidragsytere og deltakere i åpen kildekode-samfunnene; belønningene må imidlertid stå i forhold til innsatsen som utføres av pakkevedlikeholdere og tesmakere.
Underholdte, utdaterte eller ødelagte pakker er klare indikasjoner på at pakkevedlikeholdere ikke lever opp til fellesskapets forventninger eller ikke leverer på tilliten og støtten de har fått gjennom pakkene.
En annen manifestasjon av utdaterte pakker kan være fortsatt bruk av et eldre språk eller en eldre versjon av flerversjonsspråk.
Pakker som forblir utdaterte eller korrupte for lenge indikerer at tesmakere må vurdere pakkevedlikeholdernes arbeid regelmessig og konsekvent.

tesmakere er kritiske medlemmer av åpen kildekode-samfunnene ved at deres anmeldelser og tilhørende påstander kan styre pakkebrukere mot eller bort fra pakker.
For å sikre at anmeldelser kan stole på fortløpende, foreslår vi en mekanisme der utdaterte eller ødelagte pakker kan se en del av sine gjennomsyrede tokens sendt til tesmakerne som først oppdaget mangelen på vedlikehold av en pakke.

Enhver negativ anmeldelse som skisserer en feil som en null-dagers sårbarhet eller bruk av en utdatert avhengighet og forblir åpen etter en frist som er definert av styresett, bør betraktes som en feil fra pakkevedlikeholderens side.
De har ikke fullført oppgaven de ble betrodd og belønnet for.
Det samme kan sies for pakkesupportere og sponsorer som satset ryktet sitt på arbeidet til kriminelle pakkevedlikeholdere og mottok belønninger for det, men som ikke klarte å identifisere mangelen på vedlikehold eller valgte å fortsette å støtte pakken uansett.

Etter hvert som pakker øker i popularitet og bruk, med flere applikasjoner og potensielt virksomhetskritiske systemer avhengig av dem, må vi oppmuntre utviklere til diskret å rapportere feil til pakkevedlikeholdere og pakkevedlikeholdere for å løse slike feil før de kan utnyttes.
Følgelig foreslår vi at enhver utdatert eller korrupt pakke som er gjenstand for en eller flere dokumenterte negative anmeldelser og forblir i en slik tilstand etter den styringsdefinerte fristen, ser at en del av dens gjennomsyrede tokens blir kuttet uavhengig av opprinnelsen (pakkevedlikeholder, pakke) støttespillere og sponsorer eller tidligere tesmakere),
mens en annen porsjon sendes til tesmakerne som sendte inn de negative anmeldelsene.
Distribusjon til alle tesmakere kan være basert på alderen på anmeldelsen deres og antall te-tokens de fylte inn for anmeldelsen.

## Vedlikeholder NFT

Ved vellykket innsending av en pakke, vil pakkevedlikeholderen motta en NFT for å bevise deres arbeid og bidrag.
Innehaveren av denne NFT vil automatisk motta alle belønninger knyttet til pakken.
Pakkevedlikeholdere kan overføre vedlikeholdseierskap over en pakke til en annen pakkevedlikeholder ved ganske enkelt å overføre pakkens NFT.
Vellykket overføring av NFT vil føre til at den nye eieren automatisk mottar fremtidige pakkebelønninger.

En viktig del av omdømmebygging er avhengig av hyppigheten og kvantiteten av kvalitetspakkeinnsendinger.
NFT levert til pakkevedlikeholdere som bevis på deres arbeid kan brukes av omdømmesystemet til å oppdatere en pakkevedlikeholders omdømme og gi dem tilgang til forhøyede deler av protokollen, som bestemt av te-styringen.
Men for å forhindre angrepsvektorer, slik som fellesskapsmedlemmer kjøper deres rykte, vil ikke overføringen av vedlikeholderen NFT resultere i en overføring av omdømmet.
Omdømme må forbli direkte knyttet til en spesifikk utviklers arbeid og må ikke kunne overføres.

# tea Token

## Sikring av nettverket

Mens mange blokkjeder kan fremstå som effektive og sikre infrastrukturløsninger for å støtte teens mål, mener vi at det må tas nøye hensyn til teknologistabelen som tesystemet er bygget på.

Skalerbarhet, kostnadseffektivitet, ESG og tredjeparts utvidbarhet er viktige designhensyn som et te-suverent proof-of-stake-system bedre kan tjene.
I proof-of-stake satser nodeoperatører og nettverksdeltakere økonomisk verdi i form av kjedens native token for å øke systemets sikkerhet.
Nodeoperatører og nettverksdeltakere mottar belønninger for vellykket produksjon av blokker som overholder reglene for nettverket og inkluderer nøyaktig transaksjonsinformasjon.
Inaktivitet (aka node down) eller ondsinnet/feilaktig aktivitet straffes ved å ødelegge en brøkdel av de innsatte tokenene gjennom slashing.

Et proof-of-stake-system drevet av te-tokenet vil tillate te-token-holdere å bidra til systemets sikkerhet ved å *stake* te og støtte åpen kildekode-utviklere ved å *stepe* te.
Vi er fullt klar over at økonomiske faktorer kan hindre enkelte utviklere i å satse eller dryppe te; som sådan vil staking og steeping være tilgjengelig for så lite som et blad, den minste verdien av te representerer en hundre milliondel ($10^{-8}$) av en te.

Begge applikasjonene av te-tokenet tjener viktige funksjoner i støtte og vekst av åpen kildekode-økosystemet.
Å sette te vil sikre at tesystemet fortsetter å fungere sikkert, slik at alle nettverksdeltakere kan sende inn og få tilgang til pakker for å gjennomgå dem, integrere dem i applikasjonen, osv.
I motsetning til dette vil steyping av te støtte tes mål om å tilby verktøy for alle nettverksdeltakere til å støtte og bruke pakker som oppfyller kvalitets- og pålitelighetskrav, som formulert av tesamfunnet gjennom deres støtte og dissens til hver pakke.
Det vil utvises forsiktighet når du definerer og implementerer staking og steeping parametere slik at den ene ikke blir parasittisk på den andre.

## Insentiver og straffer

Som diskutert tidligere, kan det være sterke insentiver for dårlige aktører til å kompromittere åpen kildekode-programvare.
Majoriteten av Internetts kritiske infrastruktur kjører på åpen kildekode, og kappløpet om å finne utnyttelser og andre sårbarheter er i gang.
Hos tea mener vi at pakkevedlikeholdere ikke er de som skal klandres (selv om de ofte er det).

te-protokollens insentiver fikser dette gjennom en rettferdig og rettferdig insentivfordeling.
En pakke som Lodash med over 151 000 avhengige er en pilar i åpen kildekode-utvikling, og dens vedlikeholder fortjener å bli belønnet proporsjonalt.
Imidlertid vil et belønningssystem bygget utelukkende på antall pårørende hindre innovatører i å forstyrre disse monopolene med mindre de er tilstrekkelig finansiert av tredjeparter eller allerede har samlet nok ressurser til å finansiere seg selv.
Denne tilnærmingen vil sannsynligvis føre til et krympende antall bidragsytere, noe som resulterer i det motsatte av hva te handler om.

teas mål er å representere verdien av åpen kildekode-programvare og, ved å gjøre det, fremme veksten ved å gi deltakerne ressursene de trenger for å forfølge lidenskapen sin uhindret.
Te-incentivdistribusjonssystemet må nøye vurdere steeping-forholdet til hver pakke og justere hver pakkes insentiv deretter.
For å redusere risikoen for at et lite antall pakker brukt som avhengigheter på tvers av mange applikasjoner samler inn de fleste store belønninger, vil vi utnytte forskningen produsert av web3 Foundation[^19] for Polkadot proof-of-stake-basert belønningsmekanisme.
Vi kan justere implementeringen og dens variabler ytterligere basert på resultatene av praktiske eksperimenter.

Når en pakkebratt nærmer seg et styringsdefinert optimalt steeping-forhold, vil dets steeping-belønningsforhold reduseres gradvis.
Når en pakke overskrider det optimale steeping-forholdet, vil steeping-belønningsforholdet reduseres kraftig for å de-incentivere pakkesupportere og te-smakere fra ytterligere steeping av svært steipede pakker.
Denne utformingen kan tillate mindre gjennomsyrede pakker å bli mer attraktive for både pakkesupportere og tesmakere.
Det kan også motivere erfarne utviklere til å bygge alternativer til svært omfattende pakker, og skape en mulighet for tesamfunnet til å balansere støtte til eksisterende programvare og fremme innovasjon.
Bløtningsforholdet vil bli beregnet ved å bruke den sirkulerende forsyningen i sin opprinnelige design.
Tesamfunnet kan endre dette designet for å forbedre systemets skalerbarhet ytterligere.
La $\chi$ være steeping ratio på tvers av alle pakker.
Det representerer det totale antallet te-tokens gjennomsyret av pakkevedlikeholdere, pakkebrukere, pakkestøttespillere og sponsorer, og te-smakere delt på den totale te-tokenforsyningen.
Gitt hvor mange åpen kildekode-pakker som er tilgjengelige i dag og deres forventede vekst, vil $\chi$ alltid være en veldig liten verdi mellom $0$ og $1$.

La $\psi$ være innsatsforholdet.
Det representerer det totale antallet te-tokens som er satset av en nettverksdeltaker for å sikre nettverket.

La $\chi_{ideal}$ være steeping ratio vi ønsker at hver pakke skal oppnå for en rettferdig fordeling av belønninger på tvers av alle pakker og deres avhengigheter.
Verdien av $\chi_{ideal}$ må oppdateres når nye pakker legges til det desentraliserte registeret, og avhengigheter opprettes.
For å finne den beste verdien for $\chi_{ideal}$, vil vi bruke en popularitetsklokkekurve som oppdateres ved starten av hver belønningssyklus.

La $\tau = \tau(\chi)$ være den årlige høye rentesatsen distribuert til alle medlemmer av tefellesskapet som bruker te-tokens for å støtte åpen kildekode-utviklere.
Med andre ord, $\tau(\chi)$ tilsvarer den steepende belønningen som mottas over et år av et fellesskapsmedlem som trekker te-tokens for hele året.

La $\gamma = \gamma(\psi)$ være den årlige innsatsrenten distribuert til alle nodeoperatører og nettverksdeltakere som satser te-tokens for å sikre nettverket.
Med andre ord, $\gamma(\psi)$ tilsvarer innsatsbelønningen mottatt over et år av et fellesskapsmedlem som satser te-tokens for hele året.

La $\delta$ være den årlige inflasjonen rettet mot nettverkets statskasse.
$\delta$ kan variere ettersom eksterne faktorer påvirker tokentilførselen.

Vi vurderer den årlige steeping belønningsraten som en funksjon av $\chi$ og den årlige innsatsbelønningsraten som en funksjon av $\psi$.

* $\tau(\chi)$ tilsvarer insentivet for folk til å steile en pakke.
Ettersom $\chi$ øker, er det nødvendig med færre belønninger $\tau(\chi)$.
* $\gamma(\psi)$ tilsvarer insentivet for folk til å satse nettverket.
Ettersom $\psi$ øker, trengs færre belønninger $\gamma(\psi)$ for å sikre nettverket.

Den årlige inflasjonen $I$ vil tilsvare $(\tau + \gamma + \delta)$ og beregnes som følger:

$$
I = \frac{\textrm{tokenforsyning ved slutten av året} - \textrm{tokenforsyning ved begynnelsen av året}}{\textrm{tokenforsyning ved begynnelsen av året}} = (\tau + \gamma + \delta)
$$

Bidraget til inflasjonen på $\tau_{\textsc{all}}$ (insentiv fordelt til alle pakkereisere) og $\gamma_{\textsc{all}}$ (incentiv fordelt på alle bidragsytere til nettverkssikkerheten) bør veies for å sikre at systemet stimulerer til det optimale steeping/staking-forholdet.

Når vi fokuserer på insentivene fordelt på alle pakkereiser, bestemmer vi det
$\tau_{\textsc{all}}$
er en funksjon av steeping ratio $\chi$ og derfor
$\tau_{\textsc{all}}(\chi) = \chi \cdot \tau(\chi)$.
Fra vår tidligere analyse kan vi se det
$\tau_{\textsc{all}}(\chi_{ideal}) = \chi_{ideal} \cdot \tau_{ideal}$.
Siden målet er å nå en tilstand hvor
$\chi = \chi_{ideell}$
, belønninger
$\tau_{ideal}(\chi)$
bør være maksimal ved den verdien.

La $\tau_{ideal} = \tau(\chi_{ideal})$
være belønningsraten levert av nettverket ved det ideelle scenariet hvor
$\chi = \chi_{ideell}$.

La $\tau_{0}$ være grensen for $\tau_{\textsc{all}}(\chi)$ ettersom $\chi$ går til null når ingen medlemmer av tefellesskapet steiler noen pakker.
Verdien av $\tau_{0}$ bør være nær null, men ikke null for å stimulere tidlige brukere.
Som foreslått av web3 Foundations forskning, foreslår vi at:

* inflasjonsfunksjonen vokser lineært mellom $\chi = 0$ og $\chi = \chi_{ideal}$, og
* det forfaller eksponentielt mellom $\chi = \chi_{ideal}$ og $\chi = 1$.

Vi valgte en lignende eksponentiell reduksjon for $\tau_{\textsc{all}}(\chi)$ fordi det innebærer en eksponentiell reduksjon på $\tau(\chi)$, og vi ønsker at belønningene skal falle kraftig utover $\chi_{ ideal}$ for å forhindre at en enkelt pakke mottar alle belønningene.

Forfallet er definert slik at inflasjonsraten avtar med maksimalt 50 % når $\chi$ forskyver $d$ enheter til høyre for $\chi_{ideal}$ – dvs.
$\tau_{\textsc{all}}(\chi_{ideal} + d) \geq \tau_{\textsc{all}} \cdot 0,5$.

Vi foreslår følgende funksjoner for rente og inflasjon, som avhenger av parameterne $\chi_{ideal}$, $\tau_{ideal}$, $\tau_{0}$ og $d$.

\begin{align*}
&\tau_{\textsc{all}}(\chi) = \tau_{0} + (\tau_{\textsc{all}}(\chi_{ideell}) - \tau_{0})\frac{\chi }{\chi_{ideal}}\enspace\textrm{for}\;0 < \chi \leq \chi_{ideal} \\
&\tau_{\textsc{all}}(\chi) = \tau_{0} + (\tau_{\textsc{all}}(\chi_{ideell}) - \tau_{0}) \cdot 2^{ (\chi_{ideal}-\chi)/d}\enspace\textrm{for}\;\chi_{ideal} < \chi \leq 1
\end{align*}

Akkurat som gode skuespillere må belønnes; dårlige skuespillere må identifiseres og straffes.
Åpen kildekode-programvare gir mange muligheter for dårlige aktører til å skape smertepunkter og omdømmerisiko for et helt fellesskap av utviklere.
Fra urettmessig tilegnelse av arbeid til endring og redistribuering av programvarepakker, eller injeksjon av ond kode, fortsetter krigen mellom gode og dårlige aktører, ofte med godt finansierte dårlige aktører som ser kontaminering av åpen kildekode-pakker som en mulighet. å tjene økonomisk.
Ulempen har vært relativt minimal, med pakker som potensielt er utestengt fra digitale hyller eller utsatt for et dårlig rykte.

Vi foreslår å innføre en kuttemekanisme for å etablere en mer materiell ulempe som direkte påvirker dårlige aktørers økonomiske verdi.
Ettersom tesmakere evaluerer og analyserer koden i nylig innsendte pakker, foreslår vi at tesmakere får verktøyene og incentivene for å finne og fremheve ondsinnet kode, slik at pakkebrukere kan gjøres oppmerksomme på risikoen, og pakkevedlikeholdere, pakkestøttespillere og sponsorer straffes. for å sende inn eller støtte ondsinnet kode.
I den grad, for alle dokumenterte negative anmeldelser utført i henhold til nettverksreglene og som har blitt adressert av pakkevedlikeholderen innenfor den styringsdefinerte perioden, skal pakkevedlikeholderen ikke pådra seg noen straff i strid med pakkesupporterne og sponsorene eller tesmakerne som gitt en positiv anmeldelse av den aktuelle pakken.
For negative vurderinger utført i henhold til nettverksreglene og som pakkevedlikeholderen ikke har adressert innenfor den styringsdefinerte perioden, vil en brøkdel av symbolene som er gjennomsyret av pakkevedlikeholderen, pakkens støttespillere og sponsorer, og tidligere tesmakere, kuttes.
En annen brøkdel vil bli låst inn i en forsikringspool kontrollert av te-styret.
Te-styringen vil etablere retningslinjer og regler i nært samarbeid med samfunnet for å distribuere bassengets innhold til de som er berørt av sårbarheter.
Protokollen vil distribuere en tredjedel av de gjennomsyrede tokenene på tvers av alle tesmakere som bidro til den negative vurderingen og satte seg mot pakken, basert på antall te-tokens de stakk "mot" pakken og hvor lenge tokenene deres har trukket.
Med andre ord, jo før en eller flere tesmakere identifiserer og rapporterer feilen i henhold til reglene for nettverket, jo høyere belønning vil de få for å støtte sikker og produktiv åpen kildekode-utvikling.

For å forhindre at fellesskapsmedlemmer tilfeldig stemmer «mot» svært gjennomsyrede pakker i håp om å få mesteparten av straffen, vil ikke alle te-tokens «mot» bli belønnet med inflasjon og kan bli gjenstand for en forfallsmekanisme, og dermed redusere verdien deres over tid .

[^19]: Source: @web3


# styresett

Styring er avgjørende for utvikling, bærekraft og bruk av ethvert distribuert system.

Vi foreslår at te inkluderer styring på kjeden der alle te-token-innehavere kan foreslå og stemme om endringer i kritiske parametere vektet av token-eierskap og omdømme.
Disse parameterne kan inkludere inflasjon, transaksjonsgebyrer, innsatsbelønninger, steeping belønninger eller optimal steeping ratio.
Denne funksjonaliteten vil sikre at kritiske parametere kan utvikles og optimaliseres over tid av medlemmer av tesamfunnet.
Vi forventer at styring vil lanseres med en enkel struktur og gradvis utvides etter hvert som tesystemet modnes, noe som letter adopsjon og sikrer progressiv desentralisering.

Noen systemparametere er kanskje ikke underlagt styring eller støtter høyfrekvente endringer for å redusere angrepsoverflaten representert av styring.
En progressiv overgang av parametere til åpen, desentralisert styring vil sikre systemets stabilitet og forutsigbarhet.


# Tredjeparts utvidelsesmuligheter

Når vi bygger de første verktøyene for å tenne på den langvarige støtten fra open source-samfunnene, tror vi at en del av oppdraget vårt er å sikre at tredjeparter kan utvide det samlede verktøysettet.
I tillegg til å tilby infrastrukturen for utviklere for å bygge utvidelser til protokollen, inkludert nye måter å innovere og fremme støtte fra åpen kildekode-utviklere, inkluderer planene våre potensialet for andre pakkeforvaltere til å bidra til protokollen.
Drømmene og innsatsen til åpen kildekode-utviklere har bygget innovasjonen som støtter hverdagen vår.
Vi ser frem til å oppdage de nye bruksområdene og utvidelsene for te foreslått av tesamfunnet.


# Fremtidig arbeid og potensiell samfunnsinnsats

Etter hvert som tesystemet modnes, ser vi for oss at samfunnet bestemmer og bidrar til endringer og utvidelser av tesystemet gjennom styring.
Nedenfor er noen ideer som vi tror kan inspirere noen.

## te Grossister

Programvarefellesskap med åpen kildekode er levende og søker kontinuerlig etter å innovere og levere verdi.
Denne dedikasjonen og altruismen fører til konstant bygging av ny programvare og pakker, som hver enkelt trekker avhengigheter.
Som et resultat forventer vi at avhengighetskartet vil utvikle seg konstant, noe som fører til hyppige endringer i steeping ratio og belønninger.
I fremtiden kan te-fellesskapet foreslå utvikling av et system designet for dynamisk å overvåke steeping-forholdet for hver pakke og balansere hvordan pakkesupportere steiler sine tokens basert på deres egne kriterier.

## Royalties på pakkeoverføring

Vi erkjenner at pakkevedlikeholdere kan bestemme seg for å overføre sin store belønningsstrøm til én eller flere utviklere.
Styringen av en slik overføring må forbli avgjørelsen til pakkeholderen og deres partnere, uten innblanding fra te.
Verktøy må leveres for at en slik overføring skal være fullstendig eller delvis (kanskje ved at bare en del av belønningene blir omdirigert til en eller flere utviklere, mens de gjenværende belønningene fortsetter å flyte til den opprinnelige pakkens vedlikeholder)
og for at de store belønningene skal flyte gjennom en enkelt konto kontrollert av en enkelt nettverksdeltaker, flere nettverksdeltakere, eller automatisk fordelt på flere kontoer ved bruk av statiske eller dynamiske forhold.

## Belønningsdistribusjon på tvers av flere vedlikeholdere

Vedlikeholdet av en pakke kan stole på arbeidet til ett team av utviklere til.
Før steiping belønninger begynner å flyte, bør team vurdere å automatisere fordelingen av steeping belønninger seg imellom.
Hvordan fordelingen skjer må avgjøres av vedlikeholderne selv, da de er i best posisjon til å vurdere hvem som har bidratt og hvordan de skal belønnes.

For å oppnå det, kunne hvert lag (eller team) sette opp sin egen desentraliserte autonome organisasjon (DAO) og enten automatisere fordelingen av belønninger eller distribuere mer komplekse systemer for å bestemme den adekvate fordelingen av belønninger basert på eksterne faktorer som en stemme fra alle DAO medlemmer,
eller tidsbaserte distribusjoner basert på kontinuerlig bidrag, vellykket gjennomføring av dusører, etc.

## Håndteringspakke "Forks"

Vi tror at gafler er essensielle og stort sett underutnyttede.
Forks kan være et effektivt verktøy for å utvikle pakker som konkurrerer i funksjonalitet, ytelse, sikkerhet og til og med oppmerksomhet.
Hvor nyttige de enn kan være, må gafler gjenkjenne den opprinnelige innsatsen.
Gjennom fremtidig arbeid eller potensielle bidrag, kan tesamfunnet forbedre systemet til å kreve at gafler deklareres, kanskje til og med oppdages når en pakke sendes inn.
Ikke-oppgitte gafler avslørt av tesmakere kan føre til at en del av de gjennomsyrede tokenene blir kuttet, overført til den originale pakkens vedlikeholder og sendt til tesmakerne som avslørte gaffelen.

## Kjøretid vs. Byggeavhengigheter

tea skiller kanskje ikke byggeavhengigheter fra kjøretidsavhengigheter ved distribusjon av store belønninger ved lansering.
Men forutsatt at tesamfunnet føler sterkt for å gjøre en slik forskjell, kan tesamfunnet foreslå forbedringer av algoritmen for steeping belønningsfordeling for å ta hensyn til det kritiske ved hver avhengighet og deres bidrag til verdien av pakkene som avhenger av dem.
Disse forslagene vil bli stemt over og implementert basert på fellesskapets beslutning.

## Bruksbasert godtgjørelse

Ettersom flere applikasjoner bygges ved hjelp av pakker registrert med te, kan fellesskapet utvide belønningsalgoritmen slik at tildeling kan påvirkes av eksterne attesterte datasett som bruk.
Denne oppdateringen av belønningsmekanismen kan tillate en høyere tildeling av belønninger for te-tokener til å strømme til pakker med høyest bruk, samtidig som begrensningene for steeping-forholdet som er beskrevet i te-token-delen respekteres.
Pakkevedlikeholdere kan bruke en lignende tilnærming for å fordele store belønninger på tvers av avhengighetene deres basert på den transparente logikken de velger.
Vær oppmerksom på at all informasjon som brukes for å påvirke fordelingen av belønninger på tvers av pakker og avhengigheter i tesystemet, må være beviselig pålitelig.


# Anerkjennelser

Denne hvitboken ville ikke eksistere uten støtten og dedikasjonen fra mange teofile.
Forfatterne vil gjerne takke Josh Kruger, Jadid Khan og Jacob Heider for deres bidrag til tokenomics og de mange diskrete individene som meldte seg frivillig til å gi tilbakemelding på innholdet i dette dokumentet.

$\parskip=0pt plus 1pt$

# Ordliste

| Term | Definisjon |
|------|--------|
| Blad | Den minste valør av te-token. Et blad tilsvarer en hundremilliondel ($10^{-8}$) av en te. |
| Slashing | Handlingen med å straffe brattere eller stakere som svar på oppførsel i strid med nettverksreglene. |
| Satsing | Handlingen med å låse te-tokens for å sikre proof-of-stake-nettverket som te-systemet er bygget på. |
| Steeping | Handlingen med å låse te-tokens for å støtte kravet ditt og motta belønninger (eller straffer) basert på konsensus om gyldigheten av kravet ditt. |


# Referanser
