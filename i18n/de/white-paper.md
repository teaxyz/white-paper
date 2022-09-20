# Haftungsausschluss

Die in diesem White Paper enthaltenen Informationen sind vorläufiger Natur.
Daher übernehmen weder die Autoren noch ihre jeweiligen Partner die Verantwortung dafür, dass die hierin enthaltenen Informationen endgültig oder korrekt sind, und jeder der Vorgenannten lehnt ab,
im größtmöglichen Umfang, den das geltende Recht zulässt, jegliche Haftung aus unerlaubter Handlung, Vertrag oder anderweitig in Bezug auf dieses White Paper.
Weder dieses White Paper noch irgendetwas in diesem White Paper darf als Grundlage für einen Vertrag oder eine Verpflichtung dienen oder als Anreiz zum Abschluss eines Vertrags oder einer Verpflichtung, gleich welcher Art.

Nichts in diesem White Paper stellt ein Angebot zum Verkauf oder eine Aufforderung zum Kauf der hier besprochenen Token dar.
Sollte dieses White Paper als ein solches Angebot oder eine solche Aufforderung angesehen werden, so ist ein solches Angebot oder eine solche Aufforderung in keiner Jurisdiktion, in der dies ungesetzlich ist, beabsichtigt oder wird durch dieses White Paper vermittelt,
wo ein solches Angebot oder eine solche Aufforderung eine Lizenz oder Registrierung erfordern würde oder wo ein solches Angebot oder eine solche Aufforderung Einschränkungen unterliegt.
Insbesondere sind die hierin besprochenen Token nicht gemäß den Wertpapiergesetzen oder ähnlichen Gesetzen einer Rechtsordnung registriert worden, und es ist zum Zeitpunkt der Veröffentlichung dieses Whitepapers auch nicht beabsichtigt, sie zu registrieren,
unabhängig davon, ob eine solche Rechtsordnung die Token als Wertpapier oder ähnliches Instrument betrachtet oder nicht, und sie dürfen nicht in einer Rechtsordnung angeboten oder verkauft werden, in der dies einen Verstoß gegen die entsprechenden Gesetze dieser Rechtsordnung darstellen würde.


# Lizenz

Der Quellcode[^src] dieses Artikels ist verfügbar unter der Creative Commons Attribution-ShareAlike 4.0 International[^cc] Lizenz.

[^src]: See: @sources
[^cc]: See: @cc


# Einführung

Das Internet besteht überwiegend aus Open-Source-Projekten, und das schon seit seinen Anfängen.
Im Laufe der Zeit haben sich viele dieser Projekte zu Grundpfeilern entwickelt, auf denen alle zukünftigen Innovationen aufgebaut sind.
Und obwohl damit ein Vermögen gemacht wurde, wird Open-Source hauptsächlich ohne Vergütung erstellt und gepflegt.

Wir sind der Meinung, dass das gesamte moderne menschliche Streben dadurch behindert wird, dass sich der kleinste Prozentsatz der Ingenieure der Welt zwischen einem Gehalt und der Aufrechterhaltung des Internets entscheiden muss.
Open-Source ist ein Werk der Liebe, das oft durch das Fehlen sinnvoller wirtschaftlicher Anreize behindert wird. Das führt dazu, dass wirklich lohnenswerte Projekte nie ihr Potenzial erreichen, während andere unter Sicherheitsproblemen leiden, weil es keine Anreize gibt, die Software während ihres gesamten Lebenszyklus zu pflegen.
Um unser Potenzial voll auszuschöpfen, brauchen wir ein faires Vergütungssystem für das Open-Source-Ökosystem, das die Art und Weise, wie es aufgebaut oder genutzt wird, nicht grundlegend verändert.

Unternehmen bauen oft Geschäftsmodelle um Open Source herum auf, um direkt von der Arbeit der wohlwollenden Entwickler zu profitieren und sich gleichzeitig darauf zu verlassen, dass sie Fehler beheben, wenn Probleme auftreten.
Ein gutes Beispiel dafür ist der jüngste Vorfall im Zusammenhang mit einer kritischen Sicherheitslücke in Log4j, einem Paket der Apache Software Foundation, das seinen Weg in viele kommerzielle Software und Dienste gefunden hat, die von Unternehmen und Regierungen genutzt werden.
Im November 2021 meldete ein Sicherheitsforscher, der für die Alibaba Group Holding Ltd. arbeitet, die Sicherheitslücke CVE-2021-44228[^1], die von der Apache Software Foundation die höchstmögliche Basisbewertung erhielt.
Amit Yoran, Chief Executive von Tenable und Gründungsdirektor des United States Computer Emergency Readiness Team (US-CERT), bezeichnete diese Sicherheitslücke als "die größte und kritischste Sicherheitslücke des letzten Jahrzehnts"[^2].
Panik brach aus und die wenigen Freiwilligen, die dieses Paket betreuten, gerieten wegen des Versagens öffentlich unter Beschuss.
Nachdem sie die Empörung mit einem bescheidenen Plädoyer für Fairness angesprochen hatten, wurden die Systeme gepatcht.
Unternehmen und Regierungen erkannten schließlich, dass Log4j, ein Paket, das zwei Jahrzehnte lang von einer Vielzahl kritischer Systeme verwendet wurde, von einigen wenigen unbezahlten Freiwilligen gewartet wurde, denselben unbesungenen Helden, die trotz der Beschimpfungen durch die Industrie[^3] in Aktion traten und unermüdlich an der Behebung der Sicherheitslücke arbeiteten.

Leider ist Log4j bei weitem nicht das einzige Beispiel.
core-js wird als Basis jeder Node.js-Anwendung 30 Millionen Mal pro Woche heruntergeladen, wird aber ebenfalls kaum finanziert.
Kürzlich haben mehrere Bitcoin-Core-Entwickler gekündigt und dies unter anderem mit dem *Mangel an finanzieller Entschädigung* begründet.

Es gab mehrere Versuche, Anreizstrukturen zu schaffen, typischerweise in Form von Sponsoring und Bounty-Systemen.
Sponsoring ermöglicht es den Nutzern von Open-Source, für die von ihnen bevorzugten Projekte zu spenden.
Stellen Sie sich Open-Source jedoch wie einen Turm aus Ziegelsteinen vor, bei dem die unteren Schichten längst vergessen sind, aber immer noch von engagierten Ingenieuren gepflegt werden und auf die sich noch mehr Entwickler verlassen.
Nur die Projekte an der Spitze des Turms sind in der Regel bekannt und werden gesponsert.
Diese voreingenommene Auswahl führt dazu, dass wichtige Bausteine, die den Turm hochhalten, keine Spenden erhalten, während die Favoriten mehr erhalten, als sie brauchen.
Bounties ermöglichen es den Nutzern von Projekten, den Entwicklern Zahlungen für den Bau bestimmter Funktionen vorzuschlagen, so dass Projekte nur für Dinge entlohnt werden, die nicht unbedingt in ihrem besten Interesse sind.
Und auch hier werden nur die Favoriten belohnt.

In diesem Beitrag schlagen wir Tea vor - ein dezentrales System zur fairen Vergütung von Open-Source-Entwicklern auf der Grundlage ihrer Beiträge zum gesamten Ökosystem, das durch den tea-Anreizalgorithmus für alle Einträge in der Tea-Registry umgesetzt wird.
![Simplified view of the tea steeping rewards system.](img/figure-1.svg)

$\parskip=0pt plus 1pt$

[^1]: Source: @nist
[^2]: Source: @reuters
[^3]: Source: @twitter


# Komponenten

Ein Softwareentwickler, der eine Applikation erstellt, braucht vier Dinge: einen Browser, ein Terminal, einen Editor und einen Paketmanager.
Von diesen vier Dingen steuert der Paketmanager die Werkzeuge und Frameworks, die ein Entwickler benötigt, um sein Produkt zu erstellen.
Auf dieser Ebene sehen wir das Potenzial, die Art und Weise zu verändern, wie Open-Source vergütet wird.

## Der Paketmanager

Der Paketmanager weiß, von welcher Open-Source-Software eine Anwendung abhängt, um zu funktionieren, von der Spitze des Turms bis zu seiner Basis.
Jede Komponente und Version, die für die Anwendung wichtig ist, ist bekannt und aufgezeichnet.
Er weiß, dass die Spitze des Turms seine Abhängigkeiten sorgfältig auswählt und diese sorgfältige Auswahl sich nach unten fortsetzt.
Der Paketmanager ist einzigartig im Stapel der Entwicklerwerkzeuge platziert, um eine automatisierte und präzise Werteverteilung auf der Grundlage der tatsächlichen Nutzung in der Praxis zu ermöglichen.

Wir schlagen eine unveränderliche dezentrale Registry vor, die Werte auf der Grundlage eines Algorithmus verteilt, der den Beitrag jedes Eintrags zum Nutzen und zur Gesundheit des Systems bestimmt.
Werte können an den Spitzenpunkten des Graphen eingetragen werden - Anwendungen und wichtige Bibliotheken - und werden rekursiv an die Abhängigkeiten dieser Spitzenpunkte und deren Abhängigkeiten verteilt, da die Registry den gesamten Open-Source-Graphen kennt.

Außerdem sind wir der Meinung, dass über den Paketmanager wesentliche Informationen verfügbar sein müssen, damit Entwickler/innen einschätzen können, ob sie einem Paket und seinem Autor vertrauen können.
Diese Informationen können auf Reputation, Ansehen in der Gemeinschaft, Daten aus dezentralen Identitätssystemen (DID[^4]), anderen Paketmanagern oder Anreizmechanismen beruhen, die möglicherweise darauf beruhen, dass Netzwerkteilnehmer einen wirtschaftlichen Wert riskieren.

Wir gehen davon aus, dass die Kombination aus Werkzeugen, Informationen und Belohnungen von Tea einen Anreiz für Entwickler/innen darstellt, der das Wachstum von Open-Source-Software anregt und die Innovation fördert.

[^4]: See: @w3

## Die dezentralisierte Registratur

Jeder Paketmanager hat seine eigene Paketregistrierung, in der die gleichen Metadaten immer wieder dupliziert werden.
Es ist an der Zeit, dass es eine einzige, umfassende und endgültige Registrierung gibt, die von den Gemeinschaften, die auf sie angewiesen sind, entwickelt und verwaltet wird.
Diese dezentralisierte, unveränderliche Registrierung könnte Sicherheit und Stabilität bieten und
böswillige Absichten verhindern.

Das Internet basiert auf Zehntausenden von wichtigen Open-Source-Komponenten.
Es ist bemerkenswert, dass es bisher nur wenige Vorfälle gab, die durch die Entfernung wichtiger Open-Source-Infrastrukturen verursacht wurden.
Der berühmteste Vorfall war die Entfernung einer NPM-Linkspad[^5]-Abhängigkeit im Jahr 2016, die sich auf die Systeme für kontinuierliche Integration und kontinuierliches Deployment auswirkte und Entwickler/innen tagelang auf dem Trockenen sitzen ließ.
Dieses Ereignis zeigte, dass das Internet selbst auf fragilen Entwicklungssystemen basiert.
Andere Beispiele beinhalten die aktive oder absichtliche Beteiligung von Paketverwalter, die ihre beliebten Pakete sabotieren (siehe colors.js, faker.js[^6] und node-ipc[^7]),
oder bösartige Akteure, die Profit machen wollen, indem sie vorgeben, bei der Wartung von Paketen zu helfen, und diese korrumpieren, um z. B. private Bitcoin-Schlüssel zu stehlen (siehe event-stream[^8]),
oder bösartige Pakete mit absichtlichen Rechtschreibfehlern, auch bekannt als Typosquatting,
in der Hoffnung, die Nutzer zur Installation zu verleiten, z. B. crossenv vs. cross-env NPM-Pakete[^npmjsCrossenv].

Auf dem Weg in eine Zukunft, in der digitale Güter Teil der Software sind, muss die Integrität der Software gewährleistet sein.
Wir können uns nicht länger der Gefahr aussetzen, dass böswillige Akteure die Software verändern.

Die meisten Werkzeuge, die wir Paketmanager nennen, können nicht garantieren, dass die in die Apps und dApps eingebauten Pakete der unveränderte Open-Source-Code sind, der von ihren ursprünglichen Autoren veröffentlicht wurde.
Auf Microsofts GitHub wurde festgestellt, dass 17 % der Schwachstellen in Software zu böswilligen Zwecken eingeschleust wurden[^9], wobei einige für längere Zeit unentdeckt blieben (siehe Webmin 1.890[^10]).

Ein dezentralisiertes Register, das durch ein Reputationssystem ergänzt und durch wirtschaftliche Anreize unterstützt wird, um schlechte Akteure zu entlarven und gute Akteure zu belohnen, könnte die Garantien bieten, nach denen die Entwicklergemeinschaften gesucht haben.

[^5]: Source: @theregister
[^6]: Source: @fossa
[^7]: Source: @lunasec
[^8]: Source: @github
[^npmjsCrossenv]: Source: @npmjsCrossenv
[^9]: Source: @zdnet
[^10]: Source: @threatpost


## Das Speichersystem

Open-Source-Pakete bieten eine breite Palette an Funktionen, von denen einige eingeschränkt oder unerwünscht sein können.
Die Verschlüsselung ist ein hervorragendes Beispiel dafür.
Ein wichtiger Anwendungsfall für Verschlüsselung ist der Schutz der individuellen Privatsphäre auf der ganzen Welt.
Verschlüsselung kann aber auch für schändliche Zwecke eingesetzt werden (siehe Phantom Secure, das im März 2018 von den Strafverfolgungsbehörden zerschlagen wurde[^11]) oder zur Unterstützung von Strafverfolgungsaktivitäten missbraucht werden (siehe Operation Ironside (AFP), Operation Greenlight (Europol),
und Operation Trojan Shield (FBI)[^12], bei der das FBI eine "verschlüsselte" Kommunikationsplattform, AN0M, betrieb und Kriminelle davon überzeugte, ihre "verschlüsselten" Telefone für eine sichere Kommunikation zu nutzen).

Die vielfältigen Anwendungsmöglichkeiten der Verschlüsselung haben sie zu einem perfekten Anwendungsfall für Open-Source-Software gemacht und sind ein gutes Beispiel dafür, dass jede Lösung, die Pakete speichert, fälschungssicher und zensurresistent sein muss.
Tea ist ein dezentrales Protokoll, das nicht die Absicht hat, Pakete aufgrund ihrer Funktionalität zu filtern oder zu sanktionieren.
Zwar kann die Tea-Governance nachweislich bösartige Pakete entfernen (weitere Informationen im Abschnitt Governance), doch ist es für das Tea-System wichtig, sich mit mehreren Speichersystemen zu verbinden, darunter auch mit dezentralen Systemen, die nachweisen, dass ein Paket unverändert ist und korrekt repliziert wurde.
Die Paketbetreuer können das Speichersystem wählen, das am besten für die sichere Speicherung und Verteilung ihrer Pakete geeignet ist.

[^11]: Source: @fbi
[^12]: Source: @europol

# Netwerk Teilnehmer

tea hat sich zur Mission gemacht, Open-Source-Gemeinschaften zu stärken und sicherzustellen, dass ihre Mitwirkenden bei der Entwicklung der Werkzeuge, die das Internet aufbauen, unterstützt werden.
In diesem Whitepaper unterscheiden wir die Teilnehmer durch ihre Beiträge.
Einige tragen Code bei oder überprüfen den beigetragenen Code.
Andere bieten einen wirtschaftlichen Wert, um Entwickler und ihren Ruf zu unterstützen.

## Paket-Maintainer

Paket-Maintainer müssen dafür sorgen, dass ihre Software mit der Weiterentwicklung der Branche immer mehr Wert liefert.

tee setzt voraus, dass die Ersteller von Paketen ihre Arbeit pflegen.
Paket-Maintainer sind die Säulen der Open-Source-Gemeinschaft, die für ihre kontinuierlichen Beiträge gestärkt und belohnt werden müssen.
Es kann vorkommen, dass ein Paket-Maintaner seine Wartungsarbeiten einstellt oder feststellt, dass er nicht in dem Tempo arbeiten kann, das den Erwartungen der Paketnutzer entspricht.
Paket-Maintainer erhalten einen nicht fungiblen Token (NFT), wenn sie ein Paket einreichen (weitere Informationen finden Sie im Abschnitt NFT für Paketbetreuer).
Diese NFT wird als Nachweis für ihre Arbeit verwendet und ist der Schlüssel für die Belohnungen.
Der Inhaber der NFT eines Pakets kann sie auf einen anderen Entwickler (oder eine Gruppe von Entwicklern) übertragen, wodurch diese zu Maintainern des Pakets und Empfängern zukünftiger Belohnungen werden.
Ebenso kann ein Entwickler beschließen, die Rolle des Paket-Maintainer zu übernehmen, indem er das bestehende Paket forked und ein neues einreicht, das er in Zukunft betreuen wird.

Es ist wichtig, den Entwicklergemeinschaften die richtigen Werkzeuge an die Hand zu geben, um herauszufinden, welche Pakete Maintained werden und welchen Ruf und welche Qualität die bisherigen und aktuellen Maintainern haben.
Wir haben schon zu oft erlebt, dass Open-Source-Arbeiten manipuliert und die Bemühungen vieler Menschen durch bösartige Akteure zunichte gemacht wurden.
Obwohl die Arbeit dieser bösartigen Akteure größtenteils entdeckt und behoben wird, geschieht dies oft erst, wenn ein erheblicher Schaden in Form von finanziellen Verlusten oder Datenverlusten entstanden ist.
Nehmen wir zum Beispiel das EventStream npm-Paket[^13], das über 1,5 Millionen Mal pro Woche heruntergeladen wurde und auf das sich über 1.500 Pakete stützten, als es einem Hacker gelang, in das Open-Source-Projekt einzudringen,
in das Open-Source-Projekt einzudringen, das Vertrauen des ursprünglichen Autors zu gewinnen und EventStream so zu verändern, dass es von einem bösartigen Paket abhängt, das die Anmeldedaten für die Bitcoin-Brieftasche an einen Drittanbieter-Server weiterleitet.
Obwohl Tools helfen können, einige dieser Angriffe zu erkennen, kann man sich nicht immer auf sie verlassen, was dazu führt, dass eine ganze Gemeinschaft von der gegenseitigen Sorgfalt und der Bereitschaft, ihre Erkenntnisse zu teilen, abhängig ist.

Wir schlagen vor, Anreize über den tea-Token einzuführen, der im Abschnitt tea-Token beschrieben wird und die Open-Source-Gemeinschaft dazu ermutigt, ihre Entdeckungen konstruktiv zu melden, damit die Paket-Maintainer sie beheben können, bevor sie ausgenutzt werden.

[^13]: Source: @medium

## Paket Benutzer

Paketnutzer sind Softwareentwickler, die sich auf die Lösung eines bestimmten Problems konzentrieren.
Sie suchen oft in der Open-Source-Gemeinschaft nach den Werkzeugen, die sie brauchen, um schnell zu experimentieren und zu iterieren, und zwar zu sehr geringen oder gar keinen Kosten, so dass sie direkt von der Arbeit der Paketentwickler und -Maintainer profitieren.
Traditionell hat sich ein Teil von ihnen dafür entschieden, die Paket-Maintainer durch Spenden oder andere Formen der Vergütung zu unterstützen; dies ist jedoch selten der Fall.

Sponsoring kann ein effektives System zur Unterstützung der Open-Source-Entwicklung sein, aber die Vergütung erstreckt sich in der Regel nicht auf alle Abhängigkeiten.
Diese Einschränkung begünstigt und behindert die Innovation und die Entwicklung von Software.
Wenn Open-Source die Grundlage der Softwareentwicklung sein soll, müssen alle Entwickler/innen, egal ob Anfänger/innen oder Expert/innen, über alle Ebenen des Turms hinweg befähigt werden.

Das Ziel von tea ist es, die Grundwerte von Open-Source-Software aufrechtzuerhalten und gleichzeitig ein dezentrales System zur Verfügung zu stellen, mit dem Paket-Maintainer für ihre Arbeit entlohnt werden.
Um diese Mission zu erfüllen, will tea Mechanismen entwickeln - und andere dazu anregen, diese zu entwickeln -, mit denen Paketnutzer die Paket-Maintainer durch einzigartige Anwendungsfälle des tea-Tokens unterstützen können, wie in den Abschnitten tea-Token, zukünftige Arbeit und potenzielle Gemeinschaftsarbeit beschrieben.

## Paketunterstützer und Sponsoren
Im Web 2.0 und web3 werden Paketunterstützer oft als "Sponsoren" bezeichnet. Sie sind Organisationen oder Paketnutzer, die Open-Source-Software für ihre kommerziellen Produkte nutzen, Philanthropen, die das Ökosystem unterstützen wollen, oder Unternehmer, die Teams finanzieren wollen, um Komponenten eines größeren Systems zu entwickeln.

tea schlägt vor, die Gemeinschaft der Paketunterstützer auf die gesamte tea-Gemeinschaft auszuweiten, egal ob es sich um Organisationen, Entwickler, Nutzer oder Technikbegeisterte handelt.
Das Ziel von tea ist es, dezentrale Anreizmechanismen durch einzigartige Anwendungsfälle des tea-Tokens für jedes Mitglied der tea-Gemeinschaft zu implementieren, um zur dauerhaften Nachhaltigkeit und zum kontinuierlichen Wachstum von Open-Source beizutragen.
Paketunterstützer und -sponsoren können frei entscheiden, welche Pakete oder Paket-Maintainer sie auf der Grundlage ihrer Arbeit, ihrer Überzeugungen oder anderer Kriterien und Maßstäbe, die ihre Entscheidung beeinflussen, unterstützen wollen.
Darüber hinaus fließt die Unterstützung der Paketunterstützer und sponsoren in die Abhängigkeiten der einzelnen Pakete ein. Damit wird dem Paket-Maintainer implizit vertraut, dass er gute Entscheidungen für seinen Stack trifft und diese Informationen zu seinem Ansehen beitragen.

Wenn der Paket-Maintainer einen solchen Service anbietet, kann ein Paketunterstützer und -sponsor im Gegenzug einen Premium-Support-Level NFT erhalten und so von beschleunigten SLAs oder einer flexibleren Lizenzierung profitieren.
Darüber hinaus können Paketunterstützer und sponsoren beschließen, Pakete oder Paket-Maintainer zu unterstützen und automatisch alle oder einen Teil ihrer Belohnungen umzuleiten, um Anreize für Teams zu schaffen, neue Open-Source-Software zu entwickeln.
Mit anderen Worten: Pakete müssen nicht erst existieren, damit der tea fließt.
Aufstrebende Projekte können genauso gut unterstützt werden wie reifere, was einen weiteren Anreiz für eine sich ständig weiterentwickelnde Open-Source-Landschaft darstellt.

## tea Tasters

Wenn neue Pakete oder neue Versionen bestehender Pakete veröffentlicht werden, muss die Gültigkeit der Arbeit nachweislich belegt werden.
Diese Informationen sind wichtig, damit die Paketnutzer entscheiden können, ob sie dem Paket und seinen Maintainer vertrauen oder nicht.
Beim teeprotokoll wird diese Aufgabe von den tea Taster übernommen.

tea-Tasters sind in der Regel erfahrene Softwareentwickler, die bereit sind, einen Teil ihrer Zeit darauf zu verwenden, die mit einem Paket verbundenen Behauptungen zu überprüfen (Funktionalität, Sicherheit, semantische Versionierung[^14], Richtigkeit der Lizenz usw.)
und setzen sowohl ihren Ruf als auch ihren wirtschaftlichen Wert aufs Spiel, um das Ergebnis ihrer Recherchen und Analysen zu belegen und ihre Bewertungen zu unterstützen.
tea-Tasters erhalten eine Belohnung für ihren Fleiß und ihre Bemühungen.
Bei tea nennen wir "steeping your tea" die Aktion, tea-Token zu sperren, um deine Rezensionen zu unterstützen und Belohnungen (oder Strafen) zu erhalten, die auf dem Konsens über die Gültigkeit deiner Rezensionen basieren.

Wie die Unterstützer eines Pakets können auch tea-Tasters den Ruf eines Pakets und des Paketbetreuers beeinflussen, allerdings ist ihr Einfluss größer, da sie die Sicherheit, Funktionalität und Qualität eines Pakets überprüfen.
tea Tasters müssen auch ihren Ruf aufbauen, um ihre Ansprüche zu untermauern.
Die Qualität ihrer Arbeit und der wirtschaftliche Wert, den sie mit ihren Bewertungen in Verbindung mit anderen externen Datenquellen aufs Spiel setzen, erhöhen den Ruf jedes tea-Tasters und steigern den Wert seiner Arbeit.
Weitere Informationen zu den Mechanismen, die den Ruf eines Pakets und des Paket-Maintainers beeinflussen, findest du im Abschnitt über den Ruf eines Pakets.

[^14]: See: @semver

# Protokoll-Übersicht

Die Entwicklung eines Protokolls zur Belohnung von Open-Source-Beiträgen ist mit vielen Herausforderungen verbunden.
Open-Source-Software ist per Definition offen für alle und kann daher falsch zugeordnet, angeeignet oder böswillig manipuliert werden.
Die Open-Source-Gemeinschaft hat jedoch immer wieder ihre Bereitschaft gezeigt, gute Akteure hervorzuheben und schlechte Akteure zu entlarven.
In der Vergangenheit wurde die Energie, die für die Überprüfung und Kommentierung der Beiträge anderer Entwickler aufgewendet wurde, ausschließlich auf freiwilliger Basis eingesetzt, obwohl das Melden und Verteidigen von Ergebnissen zeitaufwändig und wichtig sein kann.

Wir wollen eine vertrauenswürdige Verbreitungsplattform für Anwendungen schaffen, die durch Reputation und finanzielle Anreize abgesichert ist. Denn wir glauben, dass eine angemessene Belohnung für Open-Source-Beiträge ohne ein Reputationssystem und die Möglichkeit für die Mitglieder der Community, ihre Erkenntnisse und Unterstützung (oder Ablehnung) für ein Paket oder die Arbeit eines Entwicklers mitzuteilen, nicht gelingen kann.

Wir müssen Entwicklern Werkzeuge an die Hand geben, mit denen sie auf dieses Reputationssystem zugreifen und zu ihm beitragen können.
Werkzeuge, die einen einfachen visuellen und programmierbaren Zugriff auf die Version und den Ruf aller Abhängigkeiten innerhalb ihrer Pakete ermöglichen.
Ein klares Verständnis darüber, welche Community-Mitglieder jedes Paket unterstützen und wie viele tea-Token sie steeping, wird zum Ansehen jedes Pakets beitragen, genauso wie die Menge, mit der ein Paket-Maintainer seine Arbeit steeped, kommuniziert, wie sehr er hinter seiner Arbeit steht.
Diese kombinierten Daten werden dazu beitragen, ein Reputationssystem für alle Community-Mitglieder zu entwickeln und die Auswahl zu erleichtern.
Da der Hack des EventStream-Pakets nicht über das Paket selbst, sondern über eine seiner Abhängigkeiten durchgeführt wurde, ist die Transparenz über alle Ebenen der Abhängigkeiten hinweg entscheidend für den Aufbau dieses vertrauenswürdigen Systems.
Bei der Entwicklung und dem Aufbau des Systems müssen jedoch auch Überlegungen wie die Kosten für Berechnungen und Transaktionen ("Gas") Vorrang haben.

Unser Ziel ist es, sowohl Web 2.0- als auch Web3-Entwickler zu belohnen.
Die Feinheiten und Besonderheiten jedes Stacks führen dazu, dass die Verfolgung von Installationen und Deinstallationen von Paketen leicht einem oder mehreren schlechten Akteuren zum Opfer fallen kann.
Dazu gehört auch das "Kaufen" von Installationen, um die Zahlen künstlich aufzublähen.
Ein noch schlimmeres Szenario wäre es, das Wesen von Open-Source-Software grundlegend zu verändern, indem man unnötige Reibungsverluste durch Lizenzschlüssel oder andere Mechanismen zur Verfolgung der Installation verursacht.
Um eine möglichst breite Abdeckung zu erreichen, sollten die Belohnungen nicht auf einer simplen Verfolgung von Installationen oder Deinstallationen beruhen, sondern auf Anreizmechanismen, die die Einreichung von Qualitätspaketen und die Meldung von schändlichen oder risikoreichen Paketen fördern.
Und schließlich sind viele Pakete auf gemeinsame Abhängigkeiten angewiesen.
Lodash hat zum Beispiel 151.209 Abhängigkeiten[^15], während Kreide 78.854 Abhängigkeiten[^16] oder Log4js 3.343 Abhängigkeiten[^17] hat.
Wie stellen wir sicher, dass die Anreize fair und gerecht verteilt werden, wenn mehr Pakete mit denselben Abhängigkeiten erstellt werden?
Wie stellen wir sicher, dass die am meisten genutzten Abhängigkeiten belohnt werden, ohne dass neue oder aufstrebende Pakete und Entwickler ausgehungert werden?
Wie stellen wir sicher, dass das Anreizsystem nicht dazu führt, dass Entwickler von Nischensprachen weggelenkt werden, um sie dort zu zentralisieren, wo die Anreize besser sind?
Und wie können wir als Entwickler die Pakete mit den meisten Abhängigkeiten identifizieren, um Alternativen zu bauen - schlankere, effizientere und besser codierte Versionen dieser Pakete?
Wir bei tea glauben, dass der Mangel an Anreizen die Entwicklung von Open-Source-Software behindert hat.
Mit den richtigen wirtschaftlichen Anreizen und Belohnungen werden mehr Entwickler in der Lage sein, Open-Source-Software zum Wohle der Welt zu entwickeln, zu verbessern und zu erweitern.
Erst dann wird der tea-Token den Gesamtwert von Open-Source-Software repräsentieren können.

[^15]: Source: @npmjsLodash
[^16]: Source: @npmjsChalk
[^17]: Source: @npmjsLogFourjs

## Paket Einreichung

Die Einreichung einer Paketfreigabe erfordert mehrere Transaktionen, die atomar ablaufen.
Insbesondere muss der Paketbetreuer:

* Das Paket (und seine semantische Version) bei der dezentralen Registrierungsstelle registrieren.
* Das Paket in das dezentrale Speichersystem hochladen, um es widerstandsfähig zu machen, vor Zensur zu schützen und die Verteilung zu erleichtern.
* Zum Ansehen und zur Vertrauenswürdigkeit des Pakets beitragen, indem du Tee-Tokens *steeping*.

Wenn einer der drei Vorgänge fehlschlägt, kehrt das Protokoll in seinen vorherigen Zustand zurück und löscht alle Beweise für die Einreichung.

Wenn ein Paket erfolgreich eingereicht wurde, erhält der Paket-Maintainer eine Maintainer-NFT als Nachweis für seine Arbeit und seinen Beitrag zu Open Source.
Der Paket-Maintainer kann die mit der Maintainer-NFT verbundenen Steeping Rewards an eine dritte Partei übertragen.
Der Ruf, der mit der Erstellung und Pflege des Assets verbunden ist, verbleibt jedoch beim Paket-Maintainer, so dass sein Ruf im Laufe der Zeit beeinträchtigt werden kann.
Wenn die Reputation eines Mitglieds der tea-Gemeinschaft wichtige Meilensteine erreicht, kann ihm nach Entscheidung der tea-Governance Zugang zu höheren Teilen des Protokolls gewährt werden oder es kann beschleunigte Belohnungen erhalten.
Weitere Einzelheiten zum Maintainer-NFT findest du im Abschnitt Maintainer-NFT.


### Abhängigkeiten Analyse

Paketabhängigkeiten können tiefgreifend sein, da jedes Paket oft sowohl Abhängigkeiten als auch Abhängigkeiten hat.
Um eine einfache Methode zu schaffen, die alle Entwickler belohnt, die zu Open-Source-Software beigetragen haben, und gleichzeitig die Erstellung des Abhängigkeitsbaums schnell und rechnerisch effizient zu gestalten, schlagen wir vor, nur die Abhängigkeiten der ersten Ebene zu überprüfen, wenn ein Paket eingereicht wird.

Diesem Entwurf liegt die Hypothese zugrunde, dass jede Abhängigkeit selbst ein Paket ist, das unabhängig im teabaum eingereicht wurde.
Auf diese Weise kann jede seiner Abhängigkeiten abgebildet werden, und wenn seine Abhängigkeiten selbst Abhängigkeiten haben, werden diese zum Zeitpunkt der Einreichung des Abhängigkeitspakets abgebildet.

![Dependencies analysis diagram.](img/figure-3.svg){#fig:dep-analysis}

In @fig:dep-analysis löst die Einreichung von Paket A eine Analyse der Laufzeitabhängigkeiten 1 bis n und der Build-Abhängigkeiten 1 bis n aus, während die Laufzeitabhängigkeiten 1.1 bis 1.n und die Build-Abhängigkeiten 1.1 bis 1.n analysiert wurden, als Paket B eingereicht wurde.
Wir wenden dieselbe Methode für die Verteilung der Anreize an, da die Steeping-Token auf alle Abhängigkeiten verteilt werden, also rekursiv die als Abhängigkeiten aufgeführten Pakete steepen (siehe @fig:steeping-rewards).

![Steeping rewards distribution across dependencies.](img/figure-2.svg){#fig:steeping-rewards}


Versionierung und widersprüchliche Abhängigkeiten sind eine große Herausforderung, deren Behebung viel Zeit in Anspruch nehmen kann.
Um dieses Problem anzugehen, schlagen wir vor, jedes Paket bei der Einreichung einer umfassenden Prüfung der Abhängigkeiten zu unterziehen, damit wir sicherstellen können, dass das Paket die folgenden Regeln für semantische Versionsbereiche einhält.

* Pakete dürfen ihre Abhängigkeiten nur auf eine Hauptversion beschränken, wobei der Beginn des Bereichs jede gültige semantische Version sein kann (z. B. >=5.2.1 <6).
* Wenn eine Abhängigkeit auf eine neuere Hauptversion aktualisiert wird, kann es erforderlich sein, dass die Hauptversion des Pakets erhöht wird.
* Wird eine Abhängigkeit auf eine neuere Nebenversion aktualisiert, kann tea verlangen, dass die Nebenversion des Pakets erhöht wird.
* Wenn eine neue Abhängigkeit hinzugefügt wird, kann tea verlangen, dass die Nebenversion des Pakets erhöht wird.

In Anbetracht des unnötigen Aufwands, der jedem Nutzer eines Pakets auferlegt wird, wenn die oben genannten Regeln übertreten werden, schlagen wir vor, dass ein Teil der tea-Token, die der Paketbetreuer eingeworfen hat, steeped wird, um den Mangel an Sorgfalt zu reflektieren.
Wenn ein Entwickler jeden dazu zwingt, mit seinen Tassen zu jonglieren, wird jemand etwas tea verschütten.
Da erwartet wird, dass die Überprüfung der Abhängigkeiten bei der Einreichung stattfindet, sollten wir anmerken, dass die Unterstützer und Sponsoren des Pakets oder die tea-Tasters nichts steeped haben.


## Reputation von Paketen und Paket-Maintainer

Paket-Maintainer müssen zur Reputation und Vertrauenswürdigkeit ihres Pakets beitragen, indem sie tea-Tokens eintauschen.
Ein Reputationssystem, das sich ausschließlich auf den wirtschaftlichen Beitrag des Autors stützt, bietet jedoch keinen ausreichenden Schutz für die Nutzer und kann Sybil-Angriffen ausgesetzt sein, bei denen eine einzelne Person mehrere Repräsentationen ihrer selbst erstellt, um eine große Anzahl positiver Bewertungen für ihre Arbeit zu hinterlassen,
Dadurch wird den Nutzern vorgegaukelt, dass ihre Arbeit von vielen überprüft und genehmigt wurde.

Es gibt mehrere Methoden zur Verhinderung von Sybil-Angriffen, von denen einige von Nitish Balachandran und Sugata Sanyal in "A Review of Techniques to Mitigate Sybil Attacks"[^18] beschrieben werden.
Da es sich bei tea um ein dezentrales Protokoll handelt, würde die Verwendung eines vertrauenswürdigen Zertifizierungssystems, das sich auf eine zentralisierte Zertifizierungsstelle stützt, seinem Kern widersprechen.
Wir schlagen vor, sich auf dezentralisierte Ansätze zur Abschwächung von Sybil-Angriffen zu konzentrieren, und zwar auf Methoden, die sich auf eine große Gruppe von Netzwerkteilnehmern stützen, die einen Anreiz haben, die Reputation jedes Pakets und seines Maintainer zu bewerten und öffentlich darzustellen.

Ähnlich wie bei der Produktion von Blöcken auf einer Proof-of-Stake-Blockchain, bei der nicht-produzierende Knoten die Arbeit anderer validieren und gegebenenfalls einen Verstoß gegen die Regeln des Netzwerks aufzeigen können, was zu einer Bestrafung des schlechten Akteurs durch Slashing (Zerstörung eines Teils seines Einsatzes) führt,
schlagen wir ein System vor, bei dem Dritte (auch tea-Tasters genannt) in der Lage wären, von Paketbetreuern erstellte Pakete zu überprüfen und einen wirtschaftlichen Anreiz zu haben, sich im besten Interesse der Open-Source-Softwaregemeinschaft und ihrer Nutzer zu verhalten, sowie gutes Verhalten anzuerkennen und schlechtes Verhalten zu bestrafen.
Dieses System muss sowohl sybil-resistent sein als auch verhindern, dass große Token-Inhaber das Protokoll oder den Ruf bestimmter Pakete wesentlich beeinflussen.
Wir sind der Meinung, dass dieser Ansatz besser zu Open-Source passt und ein fruchtbareres Substrat für die Förderung von Akzeptanz und Vertrauen bietet, was letztlich das Wachstum von tea erleichtert.

[^18]: Source: @arxiv

## Überprüfung des Pakets durch Dritte
Die Überprüfung von Paketen durch Dritte ist ein wesentlicher Bestandteil des Reputationsaufbaus. Die Überprüfung durch Dritte birgt jedoch eine Reihe einzigartiger Gefahren, darunter die bereits erwähnten Sybil-Angriffe.

Die Blockchain-Technologie, insbesondere das Staking, bietet tea eine einzigartige Möglichkeit, diese Herausforderung zu meistern.
Obwohl Wallet-Adressen in unendlichen Mengen verfügbar sein können, ist dies bei tea-Token nicht der Fall, deren anfänglicher Vorrat bei 10 Milliarden Stück liegen soll.
Darüber hinaus trägt jede von den Entwicklern durchgeführte Aktion, wie z. B. das Einreichen von Paketen, das Überprüfen von Paketen oder das steeping von Paketen, zu ihrer Reputation bei, wodurch ein einzigartiges Profil erstellt wird, das jeder Entwickler nutzen kann, um sowohl zur tea-Community beizutragen als auch an der Governance von tea teilzunehmen.

Durch die Verpflichtung von Drittgutachtern, tea-Tokens zu steepen und das Risiko einzugehen, einen Teil ihrer steeped Token zu verlieren, falls sie sich gegen die Interessen des Interesse des Netzwerks handeln oder ein schlechter Akteur sind, können Dritte einem Paket zusätzliche Glaubwürdigkeit verleihen und eine Belohnung in Form von tea-Tokens erhalten..

Wir schlagen außerdem vor, das Reputationssystem auf Dritte auszudehnen, die die unabhängige Überprüfung von Paketen durchführen - die tea-Tasters. Der Abschluss einer positiven Überprüfung erfordert zwei Vorgänge, die atomar ablaufen:

* Die Einreichung der Codeüberprüfung, die vom tea-Taster unterzeichnet und für alle Mitglieder der Gemeinschaft öffentlich zugänglich ist, zusammen mit
* Der Akt des steeping "für" das Paket (im Gegensatz zu "gegen" das Paket), um seine Überprüfung zu untermauern.

Nach Abschluss einer negativen Bewertung, die eine oder mehrere kritische Schwachstellen enthält, müssen die tea-Tasters zunächst den Paket-Maintainer über ein Nachrichtenprotokoll kontaktieren, um ihn über die Schwachstelle zu informieren und ihm die Möglichkeit zu geben, das Problem rechtzeitig zu beheben.
Nach Ablauf der dem Paket-Maintainer zugestandenen Frist zur Behebung der Schwachstelle oder sobald das korrigierte Paket verfügbar ist, wird dasselbe Nachrichtenprotokoll verwendet, um alle Nutzer und Tester dieses Pakets (einschließlich der Abhängigen) darüber zu informieren, dass eine Schwachstelle gefunden und hoffentlich behoben wurde,
und hoffentlich behoben wurde, damit sie wissen, dass sie ihre Anwendung oder Abhängigkeiten aktualisieren müssen.
Um die Zeit der Entwickler nicht zu verschwenden, wird die Kommunikation zwischen den tea-Tasters und den Paket-Maintainer erfordern, dass die tea-Taster tea-Tokens steep.

Nach Abschluss beider Vorgänge erhalten die tea-Taster eine NFT als Nachweis für ihre Arbeit an einem bestimmten Paket und einer bestimmten Paketversion.
Die Ansammlung von NFTs in Kombination mit dem Aufgussverhältnis jedes der überprüften Pakete und Informationen aus externen Systemen geben Aufschluss über die Reputation eines tea-Tasters.
Wenn ihr Ruf wichtige Meilensteine erreicht, können tea-Tasters Zugang zu höherwertigen Teilen des Protokolls oder zu beschleunigten Belohnungen erhalten, wie von der Teeverwaltung beschlossen.

## Veraltete oder korrupte Pakete

Die Aufgabe von tea ist es, Mitwirkende und Teilnehmer in den Open-Source-Gemeinschaften zu belohnen; die Belohnungen müssen jedoch den Bemühungen der Paketbetreuer und teeverkoster entsprechen.
Unzureichend gepflegte, veraltete oder korrupte Pakete sind klare Anzeichen dafür, dass die Paketbetreuer den Erwartungen der Gemeinschaft nicht gerecht werden oder das Vertrauen und die Unterstützung, die ihnen durch das steeping von Paketen entgegengebracht werden, nicht erfüllen.
Eine weitere Manifestation veralteter Pakete kann die fortgesetzte Verwendung einer Legacy-Sprache oder einer Legacy-Version von Mehrversionssprachen sein.
Pakete, die zu lange veraltet oder korrupt sind, weisen darauf hin, dass die tea-Taster die Arbeit der Paketbetreuer regelmäßig und konsequent überprüfen müssen.

tea-Tasters sind kritische Mitglieder der Open-Source-Gemeinschaften, da ihre Bewertungen und die damit verbundenen Behauptungen die Paketnutzer zu oder weg von Paketen lenken können.
Um sicherzustellen, dass den Bewertungen kontinuierlich vertraut werden kann, schlagen wir einen Mechanismus vor, bei dem für veraltete oder korrupte Pakete ein Teil der gesammelten Token an die tea-Tasters geschickt wird, die als erste die mangelnde Wartung eines Pakets erkannt haben.

Jede negative Bewertung, die einen Fehler wie eine Zero-Day-Schwachstelle oder die Verwendung einer veralteten Abhängigkeit aufzeigt und nach Ablauf einer von der Governance festgelegten Frist offen bleibt, sollte als Versagen des Paket-Maintainer angesehen werden.
Er hat die Aufgabe, die ihm anvertraut und für die er belohnt wurde, nicht erfüllt.
Dasselbe gilt für Unterstützer und Sponsoren von Paketen, die ihren Ruf auf die Arbeit von säumigen Paket-Maintainer gesetzt haben und dafür belohnt wurden, es aber versäumt haben, den Mangel an Wartung zu erkennen oder sich entschieden haben, das Paket trotzdem weiter zu unterstützen.

Da Pakete immer beliebter werden und immer mehr Anwendungen und potenziell unternehmenskritische Systeme von ihnen abhängen, müssen wir Anreize für Entwickler schaffen, Fehler diskret an den Paket-Maintainer zu melden, und die Paket-Maintainer müssen solche Fehler beheben, bevor sie ausgenutzt werden können.
Daher schlagen wir vor, dass jedem veralteten oder korrupten Paket, das eine oder mehrere nachweislich negative Bewertungen erhalten hat und in diesem Zustand über die von der Regierung festgelegte Gnadenfrist hinaus bestehen bleibt, ein Teil seiner Token abgezogen wird, unabhängig von ihrer Herkunft (Paket-Maintainer, Paketunterstützer und Sponsoren oder frühere tea-Taster),
während ein anderer Teil an die tea-Taster geschickt wird, die die negativen Bewertungen abgegeben haben.
Die Verteilung an alle tea-Tasters könnte auf der Grundlage des Alters ihrer Bewertung und der Anzahl der tea-Tokens, die sie für ihre Bewertung aufgegossen haben, erfolgen.

## Maintainer NFT

Nach erfolgreicher Einreichung eines Pakets erhält der Paket-Maintainer eine NFT als Nachweis seiner Arbeit und seines Beitrags.
Der Inhaber dieser NFT erhält automatisch alle mit dem Paket verbundenen Belohnungen.
Paket-Maintainer können das Eigentum an einem Paket auf einen anderen Paket-Maintainer übertragen, indem sie einfach die NFT des Pakets weitergeben.
Eine erfolgreiche Übertragung der NFT führt dazu, dass der neue Besitzer automatisch zukünftige Rewards für das Paket erhält.

Ein wichtiger Teil des Reputationsaufbaus hängt von der Häufigkeit und Quantität der Einreichung von Qualitätspaketen ab.
Die NFT, die den Paket-Maintainer als Beweis für ihre Arbeit ausgehändigt wird, kann vom Reputationssystem verwendet werden, um die Reputation eines Paket-Maintainer zu aktualisieren und ihm Zugang zu höherwertigen Teilen des Protokolls zu gewähren, wie von der tea Governance beschlossen.
Um jedoch Angriffsvektoren zu verhindern, wie z.B. dass Mitglieder der Gemeinschaft ihre Reputation kaufen, wird die Übertragung der Betreuer-NFT nicht zu einer Übertragung der Reputation führen.
Die Reputation muss direkt mit der Arbeit eines bestimmten Entwicklers verbunden bleiben und darf nicht übertragbar sein.

# tea-Token

## Absicherung des Netzes

Während viele Blockchains als effektive und sichere Infrastrukturlösungen erscheinen, um die Ziele von tea zu unterstützen, glauben wir, dass der Technologie-Stack, auf dem das tea-System aufbaut, sorgfältig geprüft werden muss.

Skalierbarkeit, Kosteneffizienz, ESG und Erweiterbarkeit durch Dritte sind wichtige Designüberlegungen, die ein souveränes Proof-of-Stake-System für tea besser erfüllen könnte.
Beim Proof-of-Stake-System setzen Knotenbetreiber und Netzwerkteilnehmer einen wirtschaftlichen Wert in Form des Tokens der Kette ein, um die Sicherheit des Systems zu erhöhen.
Knotenbetreiber und Netzwerkteilnehmer erhalten Belohnungen für die erfolgreiche Produktion von Blöcken, die den Regeln des Netzwerks entsprechen und genaue Transaktionsinformationen enthalten.
Inaktivität (auch bekannt als "Node Down") oder böswillige/falsche Aktivitäten werden bestraft, indem ein Teil der eingesetzten Token durch Slashing vernichtet wird.

Ein Proof-of-Stake-System, das durch den tea-Token angetrieben wird, ermöglicht es den tea-Token-Inhabern, zur Sicherheit des Systems beizutragen, indem sie tea *staking* und Open-Source-Entwickler unterstützen, indem sie tea *stepping*.
Wir sind uns bewusst, dass wirtschaftliche Faktoren einige Entwickler davon abhalten könnten, tea zu *staking*  oder zu *steeping*; daher wird das staking und steeping von tea für nur ein leaf möglich sein, die kleinste Stückelung von tea, die einem Hundertmillionstel ($10^{-8}$) eines tea's entspricht.

Beide Anwendungen des tea-Tokens erfüllen wichtige Funktionen für die Unterstützung und das Wachstum des Open-Source-Ökosystems.
Durch das *staking* von tea wird sichergestellt, dass das teasystem weiterhin sicher funktioniert, so dass alle Netzwerkteilnehmer Pakete einreichen und darauf zugreifen können, um sie zu überprüfen, sie in ihre Anwendung zu integrieren, usw.
Im Gegensatz dazu wird das Steeping von tea das Ziel unterstützen, allen Netzwerkteilnehmern Werkzeuge zur Verfügung zu stellen, mit denen sie Pakete unterstützen und nutzen können, die den Qualitäts- und Zuverlässigkeitsanforderungen entsprechen, wie sie von der tea-Gemeinschaft durch ihre Unterstützung und Ablehnung der einzelnen Pakete formuliert wurden.
Bei der Definition und Umsetzung von Staking- und Steeping-Parametern wird sorgfältig darauf geachtet, dass das eine nicht zum Schmarotzer am anderen wird.

## Anreize und Strafmaßnahmen

Wie bereits erwähnt, kann es für böswillige Akteure einen starken Anreiz geben, Open-Source-Software zu kompromittieren.
Der größte Teil der kritischen Infrastruktur des Internets läuft auf Open-Source, und der Wettlauf um die Suche nach Exploits und anderen Schwachstellen ist in vollem Gange.
Wir bei tea sind der Meinung, dass die Paket-Maintainer nicht die Schuldigen sind (obwohl sie es oft sind).

Die Anreize des tea-Protokolls beheben dies durch eine faire und gerechte Verteilung der Anreize.
Ein Paket wie Lodash mit über 151k Abhängigkeiten ist eine Säule der Open-Source-Entwicklung, und sein Maintainer verdient es, entsprechend belohnt zu werden.
Ein Belohnungssystem, das allein auf der Anzahl der Abhängigkeiten aufbaut, würde jedoch Innovatoren davon abhalten, diese Monopole zu durchbrechen, es sei denn, sie werden ausreichend von Dritten finanziert oder haben bereits genug Ressourcen angesammelt, um sich selbst zu finanzieren.
Dieser Ansatz würde wahrscheinlich zu einer schrumpfenden Zahl von Beitragszahlern führen, was das genaue Gegenteil dessen wäre, worum es bei tea geht.

Das Ziel von tea ist es, den Wert von Open-Source-Software zu repräsentieren und dabei ihr Wachstum zu fördern, indem die Teilnehmer mit den Ressourcen ausgestattet werden, die sie benötigen, um ihrer Leidenschaft unbelastet nachzugehen.
Das System zur Verteilung der Anreize für tea muss das Steeping-Verhältnis der einzelnen Pakete sorgfältig berücksichtigen und die Anreize für jedes Paket entsprechend anpassen.
Um das Risiko zu verringern, dass eine kleine Anzahl von Paketen, die in vielen Anwendungen als Abhängigkeiten verwendet werden, den Großteil der Steeping-Belohnungen erhalten, werden wir die Forschungsergebnisse der web3 Foundation[^19] für den Polkadot-Proof-of-Stake-basierten Belohnungsmechanismus nutzen.
Wir können die Implementierung und ihre Variablen auf der Grundlage der Ergebnisse von praktischen Experimenten weiter anpassen.

Wenn sich ein Paket einem von der Regierung definierten optimalen Steeping-Verhältnis nähert, wird sein Steeping-Belohnungs-Verhältnis schrittweise abnehmen.
Wenn ein Paket sein optimales Steeping-Verhältnis überschreitet, sinkt das Steeping-Belohnungs-Verhältnis drastisch, um die Paketbefürworter und tea-Tasters davon abzuhalten, weitere Pakete mit hohem Steeping zu *steppen*.
Dieses Konzept könnte es ermöglichen, dass Pakete mit geringerem Steeping sowohl für Paketbefürworter als auch für tea-Tasters attraktiver werden.
Es könnte auch einen Anreiz für erfahrene Entwickler darstellen, Alternativen zu stark getränkten Paketen zu entwickeln, was der teagemeinschaft die Möglichkeit gibt, ein Gleichgewicht zwischen der Unterstützung bestehender Software und der Förderung von Innovationen zu schaffen.
Das Steeping-Verhältnis wird anhand des zirkulierenden Angebots in seinem ursprünglichen Entwurf berechnet.
Die tea-Community kann dieses Design ändern, um die Skalierbarkeit des Systems weiter zu verbessern.
$\chi$ sei das Steeping-verhältnis für alle Pakete.
Sie stellt die Gesamtzahl der von Paketbetreuern, Paketnutzern, Paketunterstützern und -sponsoren sowie tea-Tasters steeped  tea-Tokens dar, geteilt durch den Gesamtbestand an tea-Tokens.
In Anbetracht der Anzahl der heute verfügbaren Open-Source-Pakete und ihres erwarteten Wachstums, wird $\chi$ immer ein sehr kleiner Wert zwischen $0$ und $1$ sein.


**Sei $\psi$ das staking verhältnis.
Sie stellt die Gesamtzahl der tea-Tokens dar, die jeder Netzwerkteilnehmer zur Sicherung des Netzwerks einsetzt.

$\chi_{ideal}$ sei das Steeping-Verhältnis, das jedes Paket erreichen soll, um eine faire Verteilung der Belohnungen auf alle Pakete und ihre Abhängigkeiten zu erreichen.
Der Wert von $\chi_{ideal}$ muss aktualisiert werden, wenn neue Pakete zur dezentralen Registrierung hinzugefügt und Abhängigkeiten geschaffen werden.
Um den besten Wert für $\chi_{ideal}$ zu bestimmen, werden wir eine Popularitäts-Glockenkurve verwenden, die zu Beginn jedes Reward-Zyklus aktualisiert wird.

Sei $\tau = \tau(\chi)$ der jährliche Steeping-Zinssatz, der an alle Mitglieder der tea-Community verteilt wird, die tea-Token steepen, um Open-Source-Entwickler zu unterstützen.
Mit anderen Worten: $\tau(\chi)$ entspricht der Steeping-Belohnung, die ein Community-Mitglied, das ein ganzes Jahr lang tea-Token steeps, über ein Jahr hinweg erhält.

Sei $\gamma = \gamma(\psi)$ der jährliche staking Zinssatz , der an alle Knotenbetreiber und Netzwerkteilnehmer verteilt wird, die tea-Tokens zur Sicherung des Netzwerks einsetzen.
Mit anderen Worten: $\gamma(\psi)$ entspricht der staking-belohnung, die ein Mitglied der Gemeinschaft, das ein ganzes Jahr lang tea-Tokens staked, über ein Jahr hinweg erhält.

$\delta$ sei die jährliche Inflation, die in die Kasse des Netzwerks fließt.
$\delta$ kann variieren, da externe Faktoren das Token-Angebot beeinflussen.

Wir betrachten die jährliche Steeping-Belohnungsrate als eine Funktion von $\chi$ und die jährliche Staking-Belohnungsrate als eine Funktion von $\psi$.

* $\tau(\chi)$ entspricht dem Anreiz für die Leute, ein Paket zu steepen.
Je höher $\chi$ ist, desto weniger Belohnungen $\tau(\chi)$ werden benötigt.
* $\gamma(\psi)$ entspricht dem Anreiz für die Leute, das Netz zu staken.
Wenn $\psi$ steigt, werden weniger Belohnungen $\gamma(\psi)$ benötigt, um das Netz zu sichern.

Die jährliche Inflation $I$ entspricht $(\tau + \gamma + \delta)$ und berechnet sich wie folgt:

$$
I = \frac{\textrm{Tokenvorrat am Ende des Jahres}} - \textrm{Tokenvorrat am Anfang des Jahres}} = (\tau + \gamma + \delta)
$$

Der Beitrag zur Inflation von $\tau_{\textsc{all}}$ (Anreiz, der an alle Paket-steepers verteilt wird) und $\gamma_{\textsc{all}}$ (Anreiz, der auf alle Teilnehmer an der Netzsicherheit verteilt wird) sollte abgewogen werden, um sicherzustellen, dass das System das optimale Verhältnis zwischen Steeping und Staking anreizt.

Da wir uns auf die Anreize konzentrieren, die auf alle Steepers verteilt sind, stellen wir fest, dass
$\tau_{\textsc{all}}$
eine Funktion des Steeping-Verhältnisses $\chi$ ist und somit
$\tau_{\textec{all}}(\chi) = \chi \cdot \tau(\chi)$.
Aus unserer vorangegangenen Analyse können wir erkennen, dass
$\tau_{\textec{all}}(\chi_{ideal}) = \chi_{ideal} \cdot \tau_{ideal}$.
Da das Ziel darin besteht, einen Zustand zu erreichen, in dem
$\chi = \chi_{ideal}$
ist, belohnt
$\tau_{ideal}(\chi)$
bei diesem Wert maximal sein.

Sei $\tau_{ideal} = \tau(\chi_{ideal})$
die Belohnungsrate, die das Netzwerk im idealen Szenario liefert, in dem
$\chi = \chi_{ideal}$.

Sei $\tau_{0}$ der Grenzwert von $\tau_{\textsc{all}}(\chi)$, da $\chi$ gegen Null geht, wenn kein Mitglied der teagemeinschaft irgendwelche Pakete steeped.
Der Wert von $\tau_{0}$ sollte nahe bei Null, aber nicht bei Null liegen, um Anreize für frühe Anwender zu schaffen.
Wie in der Forschung der web3 Foundation vorgeschlagen, schlagen wir vor, dass:

* die Inflationsfunktion zwischen $\chi = 0$ und $\chi = \chi_{ideal}$ linear wächst, und
* sie zwischen $\chi = \chi_{ideal}$ und $\chi = 1$ exponentiell abnimmt.

Wir haben eine ähnliche exponentielle Abnahme für $\tau_{\textsc{all}}(\chi)$ gewählt, weil sie eine exponentielle Abnahme von $\tau(\chi)$ impliziert, und wir wollen, dass die Belohnungen jenseits von $\chi_{ideal}$ stark abfallen, um zu verhindern, dass ein einziges Paket alle Belohnungen erhält.

Der Zerfall ist so definiert, dass die Inflationsrate um höchstens 50% abnimmt, wenn $\chi$ sich um $d$ Einheiten nach rechts von $\chi_{ideal}$ verschiebt - d.h.
$\tau_{\textsc{all}}(\chi_{ideal} + d) \geq \tau_{\textsc{all}} \cdot 0.5$.

Wir schlagen die folgenden Zins- und Inflationsratenfunktionen vor, die von den Parametern $\chi_{ideal}$, $\tau_{ideal}$, $\tau_{0}$ und $d$ abhängen.

\begin{align*}
&\tau_{\textsc{all}}(\chi) = \tau_{0} + (\tau_{\textsc{all}}(\chi_{ideal}) - \tau_{0})\frac{\chi}{\chi_{ideal}}\enspace\textrm{for}\;0 < \chi \leq \chi_{ideal} \\
&\tau_{\textsc{all}}(\chi) = \tau_{0} + (\tau_{\textsc{all}}(\chi_{ideal}) - \tau_{0}) \cdot 2^{(\chi_{ideal}-\chi)/d}\enspace\textrm{for}\;\chi_{ideal} < \chi \leq 1
\end{align*}

Genauso wie gute Akteure belohnt werden müssen, müssen schlechte Akteure identifiziert und bestraft werden.
Open-Source-Software bietet böswilligen Akteuren viele Möglichkeiten, einer ganzen Gemeinschaft von Entwicklern Schmerzen und Reputationsrisiken zu bereiten.
Von der widerrechtlichen Aneignung von Arbeit über die Veränderung und Weitergabe von Softwarepaketen bis hin zur Einschleusung von bösartigem Code - der Krieg zwischen guten und bösen Akteuren geht weiter, oft mit gut finanzierten bösen Akteuren, die in der Verunreinigung von Open-Source-Paketen eine Chance sehen, finanziell zu profitieren.
Die Nachteile sind relativ gering, da die Pakete möglicherweise aus den digitalen Regalen verbannt werden oder einen schlechten Ruf haben.

Wir schlagen vor, einen Slashing-Mechanismus einzuführen, um einen materielleren Nachteil zu schaffen, der sich direkt auf den wirtschaftlichen Wert der bösen Akteure auswirkt.
Da tea-Tasters den Code in neu eingereichten Paketen bewerten und analysieren, schlagen wir vor, dass tea-Tasters die Werkzeuge und Anreize erhalten, um ruchlosen Code zu identifizieren und hervorzuheben, damit Paketnutzer auf die Risiken aufmerksam gemacht werden können und Paketbetreuer, Paketunterstützer und Sponsoren für das Einreichen oder Unterstützen von ruchlosem Code bestraft werden.
Insofern sollte der Paket-Maintainer für alle nachweislich negativen Bewertungen, die gemäß den Netzwerkregeln durchgeführt wurden und auf die der Paket-Maintainer innerhalb des von der Verwaltung festgelegten Zeitraums reagiert hat, nicht bestraft werden, im Gegensatz zu den Paketunterstützern und -sponsoren oder den tea-Tasters, die eine positive Bewertung des fraglichen Pakets abgegeben haben.
Für negative Bewertungen, die gemäß den Netzwerkregeln durchgeführt werden und die der Paketbetreuer nicht innerhalb des von der Governance definierten Zeitraums angesprochen hat, wird ein Bruchteil der Token, die vom Paketbetreuer, den Paketunterstützern und -sponsoren sowie früheren tea-Tasters steeped sind, slashed.
Ein weiterer Teil fließt in einen Versicherungspool, der von der tea Governance kontrolliert wird.
Die tea Governance wird in enger Zusammenarbeit mit der Gemeinschaft Richtlinien und Regeln aufstellen, um den Inhalt des Pools an die von Schwachstellen Betroffenen zu verteilen.
Das Protokoll verteilt einen dritten Teil der steeped Token an alle tea-Tasters, die zu der negativen Bewertung beigetragen und gegen das Paket steeeped haben, basierend auf der Anzahl der Token, die sie "gegen" das Paket steeped haben, und wie lange ihre Token getränkt wurden.
Mit anderen Worten: Je eher ein oder mehrere tea-Taster den Fehler identifizieren und gemäß den Regeln des Netzwerks melden, desto höher ist die Belohnung, die sie für die Unterstützung einer sicheren und produktiven Open-Source-Entwicklung erhalten.

Um zu verhindern, dass Mitglieder der Gemeinschaft wahllos gegen stark steeped Pakete stimmen, in der Hoffnung, die Mehrheit der Strafe zu erhalten, werden alle tea-Tokens, die "gegen" steeped wurden, nicht mit Inflation belohnt und können einem Verfallsmechanismus unterliegen, wodurch ihr Wert mit der Zeit sinkt.

[^19]: Source: @web3


# Die Governance

Governance ist entscheidend für die Entwicklung, Nachhaltigkeit und Akzeptanz eines jeden verteilten Systems.

Wir schlagen vor, dass tea eine On-Chain-Governance beinhaltet, bei der alle tea-Token-Inhaber Änderungen an kritischen Parametern, die nach Token-Besitz und Reputation gewichtet sind, vorschlagen und darüber abstimmen können.
Zu diesen Parametern könnten Inflation, Transaktionsgebühren, Staking-Belohnungen, Steeping-Belohnungen oder das optimale Steeping-Verhältnis gehören.
Mit dieser Funktion wird sichergestellt, dass kritische Parameter im Laufe der Zeit von den Mitgliedern der tea-Community weiterentwickelt und optimiert werden können.
Wir gehen davon aus, dass die Governance mit einer einfachen Struktur startet und mit zunehmender Reife des teasystems schrittweise erweitert wird, um die Akzeptanz zu erleichtern und eine fortschreitende Dezentralisierung zu gewährleisten.

Einige Systemparameter unterliegen möglicherweise nicht der Governance oder unterstützen hochfrequente Änderungen, um die Angriffsfläche der Governance zu verringern.
Ein schrittweiser Übergang von Parametern zu offener, dezentraler Governance wird die Stabilität und Vorhersehbarkeit des Systems gewährleisten.


# Erweiterbarkeit durch Drittanbieter

Während wir die ersten Tools entwickeln, um die längst überfällige Unterstützung der Open-Source-Gemeinschaften zu gewinnen, sehen wir es als Teil unserer Aufgabe an, sicherzustellen, dass Dritte das gesamte Toolset erweitern können.
Neben der Bereitstellung der Infrastruktur für Entwickler zur Erstellung von Erweiterungen des Protokolls, einschließlich neuer Möglichkeiten zur Innovation und zur Förderung der Unterstützung von Open-Source-Entwicklern, sehen unsere Pläne auch die Möglichkeit vor, dass andere Paketmanager zum Protokoll beitragen.
Die Träume und Bemühungen von Open-Source-Entwicklern haben die Innovationen hervorgebracht, die unser tägliches Leben unterstützen.
Wir freuen uns darauf, die neuen Verwendungsmöglichkeiten und Erweiterungen für tea zu entdecken, die von der teagemeinschaft vorgeschlagen werden.

# Künftige Arbeiten und potenzielle Gemeinschaftsanstrengungen

Wir gehen davon aus, dass die Gemeinschaft in dem Maße, in dem das teasystem reift, über
Änderungen und Erweiterungen des teasystems mitbestimmen und mitgestalten. Nachfolgend sind
einige Ideen, von denen wir glauben, dass sie einige inspirieren können.

## tea-Großhändler

Open-Source-Software-Gemeinschaften sind lebendig und ständig auf der Suche nach Innovation und Wertschöpfung.
Diese Hingabe und dieser Altruismus führen dazu, dass ständig neue Software und Pakete entwickelt werden, von denen jedes einzelne Abhängigkeiten mit sich bringt.
Wir gehen davon aus, dass sich die Karte der Abhängigkeiten ständig weiterentwickeln wird, was zu häufigen Änderungen des Weichenverhältnisses und der Belohnungen führen wird.
In Zukunft könnte die tea-Community die Entwicklung eines Systems vorschlagen, das das Steeping-Verhältnis für jedes Paket dynamisch überwacht und das Steeping-Verhältnis für die Unterstützer von Paketen anhand ihrer eigenen Kriterien neu ausbalanciert.

## Lizenzgebühren für die Übertragung von Paketen

Wir erkennen an, dass Paketverwalter beschließen können, ihren Steeping Rewards Stream an einen oder mehrere Entwickler zu übertragen.
Die Verwaltung einer solchen Übertragung muss die Entscheidung des Paketbetreuers und seiner Partner bleiben, ohne Einmischung von tea.
Es müssen Werkzeuge zur Verfügung gestellt werden, damit eine solche Übertragung vollständig oder teilweise erfolgen kann (vielleicht indem nur ein Teil der Steeping Rewards an einen oder mehrere Entwickler weitergeleitet wird, während die restlichen Rewards weiterhin an den ursprünglichen Paket-Maintainer fließen)
und dass die Steeping Rewards über ein einziges Konto fließen, das von einem einzigen Netzwerkteilnehmer kontrolliert wird, über mehrere Netzwerkteilnehmer oder automatisch über mehrere Konten unter Verwendung statischer oder dynamischer Verhältnisse verteilt werden können.

## Verteilung von Belohnungen auf mehrere Verwalter

Die Wartung eines Pakets kann sich auf die Arbeit eines weiteren Entwicklerteams stützen.
Bevor Steeping Rewards zu fließen beginnen, sollten Teams in Betracht ziehen, die Verteilung von Steeping Rewards untereinander zu automatisieren.
Wie die Verteilung erfolgt, muss von den Maintainer selbst entschieden werden, da sie am besten einschätzen können, wer einen Beitrag geleistet hat und wie dieser belohnt werden sollte.

Um dies zu erreichen, könnte jedes Team (oder Teams) seine eigene dezentrale autonome Organisation (DAO) einrichten und entweder die Verteilung der Belohnungen automatisieren oder komplexere Systeme einsetzen, um die angemessene Verteilung der Belohnungen auf der Grundlage externer Faktoren wie einer Abstimmung aller DAO-Mitglieder zu bestimmen, oder zeitbasierte Verteilungen auf der Grundlage von kontinuierlichen Beiträgen, erfolgreichem Abschluss von Kopfgeldern usw.

## Handhabung des Pakets "Forks"

Wir sind der Meinung, dass Forks unerlässlich sind und weitgehend unzureichend genutzt werden.
Forks können ein effektives Werkzeug für die Entwicklung von Paketen sein, die in Bezug auf Funktionalität, Leistung, Sicherheit und sogar Aufmerksamkeit konkurrieren.
So nützlich sie auch sein mögen, Forks müssen die ursprünglichen Bemühungen anerkennen.
Durch künftige Arbeiten oder potenzielle Beiträge könnte die tea-Gemeinschaft das System dahingehend verbessern, dass Forks deklariert werden müssen, vielleicht sogar erkannt werden, wenn ein Paket eingereicht wird.
Nicht deklarierte Forks, die von tea-Taster aufgedeckt werden, können dazu führen, dass ein Teil der steeped Tokens gestrichen, an den ursprünglichen Paket-Maintainer übertragen und an die tea-Taster, die den Fork aufgedeckt haben, geschickt wird.

## Laufzeit- vs. Build-Abhängigkeiten

tea darf bei der Verteilung von Steeping Rewards beim Start nicht zwischen Build-Abhängigkeiten und Laufzeit-Abhängigkeiten unterscheiden.
Wenn die tea-Gemeinschaft jedoch eine solche Unterscheidung für wichtig hält, kann sie Verbesserungen des Verteilungsalgorithmus für Steeping Rewards vorschlagen, um die Kritikalität jeder Abhängigkeit und ihren Beitrag zum Wert der Pakete, die von ihr abhängen, zu berücksichtigen.
Über diese Vorschläge würde abgestimmt und sie würden auf der Grundlage der Entscheidung der Gemeinschaft umgesetzt.

## Nutzungsabhängige Vergütung

Wenn mehr Anwendungen unter Verwendung von Paketen erstellt werden, die mit tea registriert sind, kann die Gemeinschaft den Reward-Algorithmus so erweitern, dass die Zuteilung durch externe, bestätigte Datensätze wie die Nutzung beeinflusst werden kann.
Diese Aktualisierung des Reward-Mechanismus könnte eine höhere Zuteilung von tea-Token-Rewards an Pakete mit der höchsten Nutzung ermöglichen, während die Einschränkungen des Steeping-Verhältnisses, die im Abschnitt über tea-Token beschrieben werden, weiterhin eingehalten werden.
Paketverwalter könnten einen ähnlichen Ansatz verwenden, um Steeping Rewards über ihre Abhängigkeiten zu verteilen, basierend auf der transparenten Logik ihrer Wahl.
Beachten Sie, dass alle Informationen, die verwendet werden, um die Verteilung von Belohnungen auf Pakete und Abhängigkeiten im teasystem zu beeinflussen, nachweislich zuverlässig sein müssen.


# Anerkennungen

Dieses Whitepaper würde ohne die Unterstützung und das Engagement vieler teaophiler nicht existieren.
Die Autoren möchten Josh Kruger, Jadid Khan und Jacob Heider für ihren Beitrag zu den Tokenomics und den vielen diskreten Personen danken, die freiwillig ihre Zeit opferten, um Feedback zum Inhalt dieses Dokuments zu geben.

$\parskip=0pt plus 1pt$

# Glossar der Begriffe

| Begriff | Definition |
|------|------------|
| Leaf | Die kleinste Stückelung der tea-Token. Ein Leaf entspricht einem Hundertmillionstel ($10^{-8}$) eines teas. |
| Slashing | Die Bestrafung von Steepern oder Stakern als Reaktion auf ein Verhalten, das den Netzregeln zuwiderläuft. |
| Staking | Das Sperren von tea-Token, um das Proof-of-Stake-Netzwerk, auf dem das teasystem aufbaut, zu sichern. |
| Steeping | Die Aktion des Sperrens von tea-Tokens, um Ihren Anspruch zu unterstützen und Belohnungen (oder Strafen) zu erhalten, die auf dem Konsens über die Gültigkeit Ihres Anspruchs basieren. |


# Referenzen
