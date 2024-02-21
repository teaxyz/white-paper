# tea libro-bianco 2.1.0

Il libro bianco sul tè è un documento [semanticamente versionato](https://semver.org),
[Markdown](https://daringfireball.net/projects/markdown/).
Le nuove versioni sono distribuite su Gitbook.

## Contribuire

Se avete un feedback generale, aprite un thread [discussione](../../discussioni).

Versionamento Semantico 2.0.0
Sommario
Dato un numero di versione MAJOR.MINOR.PATCH, incrementate la:

versione MAJOR quando modificate l’API in modo non retrocompatibile
versione MINOR quando aggiungete funzionalità in modo retrocompatibile
versione PATCH quando correggete bug in modo retrocompatibile
Sono disponibili etichette aggiuntive per il pre-release e i metadati di build come estensioni al formato MAJOR.MINOR.PATCH.

Introduzione
Nel mondo della gestione del software esiste un luogo terrificante chiamato “inferno della dipendenza”. Quanto più cresce il vostro sistema e quanti più pacchetti integrate nel vostro software, tanto più facilmente vi ritroverete, un giorno, in questa valle di lacrime.

Nei sistemi con molte dipendenze, rilasciare nuove versioni di pacchetti può diventare rapidamente un incubo. Se le specifiche di dipendenza sono troppo stringenti, siete a rischio di blocco di versione (l’impossibilità di aggiornare un pacchetto senza dover rilasciare nuove versioni di ogni pacchetto dipendente). Se le dipendenze sono specificate in modo troppo permissivo, sarete inevitabilmente afflitti da promiscuità di versione (l’ipotizzare compatibilità con versioni future più di quanto sia ragionevole). L’inferno della dipendenza è dove siete quando blocco di versione e/o promiscuità di versione vi impediscono di far avanzare il vostro progetto in modo facile e sicuro.

Come soluzione a questo problema, propongo un semplice insieme di regole e requisiti che stabiliscono come i numeri di versione siano assegnati ed incrementati. Queste regole sono basate su, ma non necessariamente limitate a, diffuse pratiche comuni adottate sia in software proprietario che open source. Affinché questo sistema funzioni, avete prima bisogno di dichiarare un’API pubblica. Quest’ultima può consistere di documentazione o essere imposta tramite il codice stesso. In ogni caso, è importante che tale API sia chiara e precisa. Una volta identificata la vostra API pubblica, comunicatene le modifiche con incrementi specifici del numero di versione. Considerate un formato di versione X.Y.Z (Major.Minor.Patch). La correzione di bug, non influenzando l’API, incrementa la versione Patch, aggiunte/modifiche retrocompatibili all’API incrementano la versione Minor, e modifiche non retrocompatibili all’API incrementano la versione Major.

Chiamo questo sistema “Versionamento Semantico”. Con queste convenzioni i numeri di versione, ed il modo in cui essi cambiano, comunicano significato relativamente al codice sottostante e a cosa è stato modificato da una versione all’altra.

Specifica di Versionamento Semantico (SemVer)
Le parole chiave “DEVE” (“MUST”), “NON DEVE” (“MUST NOT”), “REQUIRED”, “SHALL”, “SHALL NOT”, “DOVREBBE” (“SHOULD”), “SHOULD NOT”, “RECOMMENDED”, “PUO’” (“MAY”), e “OPTIONAL” in questo documento sono da interpretarsi come descritto nella RFC 2119.

Software che usa Versionamento Semantico DEVE dichiarare un’API pubblica. Questa API potrebbe essere dichiarata nel codice stesso oppure essere definita rigorosamente nella documentazione. Indipendentemente da come è dichiarata, dovrebbe essere precisa a completa.

Un numero di versione normale DEVE essere nella forma X.Y.Z, dove X, Y, e Z sono interi non negativi, e NON DEVONO contenere zeri iniziali. X è la versione major, Y è la versione minor, e Z è la versione patch. Ogni elemento DEVE incrementare come numero a sé. Per esempio: 1.9.0 -> 1.10.0 -> 1.11.0.

Una volta che un pacchetto versionato è stato rilasciato, i contenuti di quella versione NON DEVONO essere modificati. Qualsiasi modifica DEVE essere rilasciata come una nuova versione.

La versione Major zero (0.y.z) è per lo sviluppo iniziale. Qualunque cosa può cambiare in qualsiasi istante. L’API pubblica non dovrebbe essere considerata stabile.

La versione 1.0.0 definisce l’API pubblica. Il modo in cui il numero di versione è incrementato dopo questo rilascio dipende da questa API pubblica e da come quest’ultima cambia.

La versione Patch Z (x.y.Z | x > 0) DEVE essere incrementata solo se sono introdotte correzioni retrocompatibili di bug. Una correzione di un bug è definita come una modifica interna che corregge un comportamento errato.

La versione Minor Y (x.Y.z | x > 0) DEVE essere incrementata se nell’API pubblica è introdotta una nuova funzionalità retrocompatibile. Essa DEVE essere incrementata se qualsiasi funzionalità dell’API pubblica è marcata come deprecata. Essa PUO’ essere incrementata se sono introdotti all’interno del codice privato nuove funzionalità o miglioramenti sostanziali. Essa PUO’ includere modifiche di livello patch. La versione Patch DEVE essere reimpostata a 0 quando la versione Minor è incrementata.

La versione Major X (X.y.z | X > 0) DEVE essere incrementata se nell’API pubblica è introdotta qualsiasi modifica non retrocompatibile. Essa PUO’ includere modifiche di livello minor e patch. Le versioni patch e minor DEVONO essere reimpostate a 0 quando la versione major è incrementata.

Una versione di pre-rilascio PUO’ essere indicata aggiungendo immediatamente dopo la versione patch un trattino e una serie di identificatori separati dal punto. Gli identificatori DEVONO essere composti solo da alfanumerici ASCII e trattini [0-9A-Za-z-]. Gli identificatori NON DEVONO essere vuoti. Gli identificatori numerici NON DEVONO includere zeri iniziali. Le versioni di pre-rilascio hanno una precedenza inferiore rispetto alla versione normale associata. Una versione di pre-rilascio indica che la versione è instabile e potrebbe non soddisfare i requisiti di compatibilità intesi come indicato dalla versione normale ad essa associata. Esempi: 1.0.0-alpha, 1.0.0-alpha.1, 1.0.0-0.3.7, 1.0.0-x.7.z.92.

Metadati di build POSSONO essere indicati aggiungendo immediatamente dopo la versione patch o pre-rilascio un segno di addizione e una serie di identificatori separati dal punto. Gli identificatori DEVONO essere composti solo da alfanumerici ASCII e trattini [0-9A-Za-z-]. Gli identificatori NON DEVONO essere vuoti. I metadati di build dovrebbero essere ignorati nella determinazione della precedenza delle versione. Perciò due versioni che differiscono solo per i metadati di build, hanno la stessa precedenza. Esempi: 1.0.0-alpha+001, 1.0.0+20130313144700, 1.0.0-beta+exp.sha.5114f85.

La precedenza si riferisce a come le versioni sono confrontate l’una con l’altra quando poste in relazione d’ordine. La precedenza DEVE essere calcolata separando gli identificatori nell’ordine seguente: major, minor, patch e pre-release (i metadati di build non compaiono nella precedenza). La precedenza è determinata dalla prima discrepanza quando si confrontano ognuno di tali identificatori da sinistra a destra come segue: le versioni major, minor e patch sono sempre confrontate numericamente. Esempio: 1.0.0 < 2.0.0 < 2.1.0 < 2.1.1. Quando major, minor, e patch sono uguali, una versione di pre-rilascio ha una precedenza inferiore rispetto alla versione normale. Esempio: 1.0.0-alpha < 1.0.0. La precedenza per due versioni di pre-rilascio con la stessa versione major, minor, e patch DEVE essere determinata confrontando ognuno degli identificatori separati dal punto da sinistra a destra finché si trova una discrepanza come segue: gli identificatori costituiti da sole cifre sono confrontati numericamente e gli identificatori con lettere o trattini sono confrontati lessicalmente secondo l’ordinamento ASCII. Gli identificatori numerici hanno sempre una precedenza più bassa rispetto agli identificatori non numerici. Un insieme più grande di identificatori ha una precedenza superiore rispetto ad un insieme più piccolo, se tutti quanti i precedenti identificatori sono uguali. Esempio: 1.0.0-alpha < 1.0.0-alpha.1 < 1.0.0-alpha.beta < 1.0.0-beta < 1.0.0-beta.2 < 1.0.0-beta.11 < 1.0.0-rc.1 < 1.0.0.

Perché usare Versionamento Semantico?
Questa non è un’idea rivoluzionaria. Infatti, probabilmente fate già qualcosa di simile a questo. Il problema è che quel “simile” non è abbastanza buono. Senza la conformità a qualche tipo di specifica formale, i numeri di versione sono essenzialmente inutili per una gestione delle dipendenze. Dando un nome ed una chiara definizione alle idee sopra, diventa semplice comunicare le vostre intenzioni agli utenti del vostro software. Quando queste intenzioni sono chiare, flessibili (ma non troppo flessibili) le specifiche di dipendenza possono finalmente essere realizzate.

Un semplice esempio dimostrerà come Versionamento Semantico può rendere l’inferno della dipendenza una cosa del passato. Considerate una libreria chiamata “CamionDeiPompieri”. Essa richiede un pacchetto semanticamente versionato di nome “Scala”. All’istante in cui è creato, Scala è alla versione 3.1.0. Poiché CamionDeiPompieri utilizza alcune funzionalità che furono inizialmente introdotte in 3.1.0, potete specificare con sicurezza la dipendenza da Scala come maggiore o uguale a 3.1.0 ma minore di 4.0.0. Ora, quando Scala versione 3.1.1 e 3.2.0 diventano disponibili, potete rilasciarle al vostro sistema di gestione dei pacchetti e sapere che esse saranno compatibili con software dipendente esistente.

In qualità di sviluppatori responsabili vorrete, naturalmente, verificare che qualsiasi aggiornamento di pacchetto funzioni come descritto. Il mondo reale è un luogo caotico; non possiamo farci nulla se non essere vigili. Ciò che potete fare è consentire a Versionamento Semantico di fornirvi un modo sano di rilasciare ed aggiornare i pacchetti senza dover propagare le nuove versioni ai pacchetti dipendenti, facendovi risparmiare tempo e fastidio.

Se tutto questo vi suona desiderabile, tutto ciò che vi serve fare per iniziare ad usare Versionamento Semantico è dichiarare che state facendo così e poi seguire le regole. Rimandate a questo sito web dal vostro LEGGIMI (README) così altri conosceranno le regole e potranno beneficiarne.

FAQ
Come dovrei gestire revisioni nella fase iniziale 0.y.z di sviluppo?
La cosa più semplice da fare è cominciare da 0.1.0 con il rilascio di sviluppo iniziale e poi incrementare la versione minor per ogni successivo rilascio.

Come faccio a sapere quando rilasciare la 1.0.0?
Se il vostro software è usato in produzione, dovrebbe probabilmente già essere alla 1.0.0. Se avete un’API stabile dalla quale gli utenti sono diventati dipendenti, dovreste essere alla 1.0.0. Se vi state preoccupando molto relativamente alla retrocompatibilità, dovreste probabilmente già essere alla 1.0.0.

Questo non scoraggia lo sviluppo rapido e le iterazioni veloci?
La versione Major zero riguarda completamente lo sviluppo rapido. Se state modificando l’API ogni giorno dovreste o essere già nella versione 0.y.z oppure essere su un ramo di sviluppo separato lavorando alla prossima versione major.

Se perfino la più piccola modifica non retrocompatibile all’API pubblica comporta un colpo alla versione major, non finirei alla versione 42.0.0 molto rapidamente?
Questa è una questione di sviluppo responsabile e lungimiranza. Modifiche incompatibili non dovrebbero essere introdotte con leggerezza a software che ha molto codice dipendente. Il costo in cui si potrebbe incorrere per aggiornare potrebbe essere significativo. Dover dar colpi alla versione major per rilasciare modifiche incompatibili significa che penserete all’impatto delle vostre modifiche, e valuterete il rapporto costi/benefici coinvolto.

Documentare l’intera API pubblica è troppo lavoro!
E’ vostra responsabilità come sviluppatori professionisti documentare appropriatamente software il cui uso è destinato ad altri. Gestire la complessità del software è una parte enormemente importante per mantenere un progetto efficiente, e ciò è difficile da fare se nessuno sa come usare il vostro software, o nessuno sa con sicurezza quali metodi sono invocabili. Nel lungo periodo Versionamento Semantico, ed il perseverare su un’API pubblica ben documentata, è in grado di far andare tutto liscio.

Cosa faccio se rilascio accidentalmente una modifica non retrocompatibile come versione minor?
Non appena realizzate di aver infranto le specifiche di Versionamento Semantico, correggete il problema e rilasciate una nuova versione minor che corregga il problema e ripristini la retrocompatibilità. Perfino in tali circostanze, non è accettabile modificare una versione rilasciata. Se è appropriato, documentate la versione illecita ed informate i vostri utenti del problema cosicché siano consapevoli della versione illecita.

Cosa dovrei fare se aggiorno le mie dipendenze senza modificare l’API pubblica?
Ciò sarebbe considerato compatibile poiché non interessa l’API pubblica. Software che dipendono esplicitamente dalle stesse dipendenze del vostro pacchetto dovrebbero avere le loro proprie specifiche di dipendenza e l’autore noterà qualsiasi conflitto. Determinare se la modifica sia di livello patch o minor dipende se avete aggiornato le vostre dipendenze per correggere un bug o per introdurre una nuova funzionalità. In quest’ultimo caso solitamente mi aspetto del codice aggiuntivo, ed ovviamente un incremento della versione minor.

Cosa faccio se inavvertitamente altero l’API pubblica in un modo non conforme con la modifica al numero di versione (per esempio il codice introduce erroneamente una modifica che rompe la major in un rilascio di una patch).
Utilizzate il buon senso. Se avete una platea immensa che sarebbe drasticamente impattata dal ripristinio del comportamento atteso dell’API pubblica, allora potrebbe essere meglio eseguire un rilascio di una versione major, perfino se la correzione potrebbe strettamente essere considerata il rilascio di una patch. Ricordate, Versionamento Semantico, è finalizzato alla comunicazione di significato attraverso il cambiamento del numero di versione. Se tali modifiche sono importanti per i vostri utenti, usate il numero di versione per informarli.

Come dovrei gestire la deprecazione di funzionalità?
Deprecare funzionalità esistenti fa parte del normale sviluppo di software ed è spesso necessario per fare progressi in avanti. Quando deprecate parte della vostra API pubblica, dovreste fare due cose: (1) aggiornare la vostra documentazione per consentire agli utenti di essere consapevoli della modifica, (2) distribuire un nuovo rilascio minor con la deprecazione all’interno. Prima di rimuovere completamente la funzionalità nel rilascio di una nuova major dovrebbe esserci al minimo un rilascio minor che contenga la deprecazione cosicché gli utenti siano in grado di migrare tranquillamente alla nuova API.

Versionamento Semantico ha un limite alla dimensione della stringa della versione?
No, ma usate il buon senso. Per esempio, una stringa di versione di 255 caratteri è eccessiva. Inoltre, sistemi specifici possono imporre i loro limiti sulla dimensione.

A riguardo
La specifica di Versionamento Semantico è scritta da Tom Preston-Werner, inventore di Gravatars e cofondatore di GitHub.

Traduzione a cura del Java User Group Padova:

Tarin Gamberini (autore)
Enrico Mezzato (revisore)
Emanuele Gesuato (revisore)
Anicet Foba Togue (revisore)
Per lasciare il vostro feedback per favore aprite una segnalazione su GitHub.

