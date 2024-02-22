---
Açıklama Sürüm 2.1.0
---

# beyaz kağıt

## Açık Kaynak Geliştiricilerinin Yarattıkları Değeri Yakalamaları için Merkezi Olmayan Bir Protokol

* Max Howell
* Thomas Borrel
* Timothy Lewis
* Troy Wong

## Özet

Açık kaynak geliştiricilerinin katkılarıyla orantılı ödüller alabilecekleri bir sistem, yazılım tedarik zincirinin sürdürülebilirliğini ve bütünlüğünü artıracaktır. İtibar ve teşviklerle güvence altına alınan merkezi olmayan bir protokol, açık kaynak kod tabanlarını bir kamu hizmeti olarak sürdüren geliştiricilere değer tahakkukunu kolaylaştırarak bunu başarabilir ve böylece açık kaynak ekosisteminde gelecekteki yenilikleri ve büyümeyi teşvik edebilir. Paket bakımcıları projelerini Bizans tipi hataya dayanıklı bir blok zinciri tarafından desteklenen bir kayıt defterine kaydedeceklerdir. Tea Protokolü'nün benzersiz "Katkı Kanıtı" algoritması, her projenin sistemin faydasına ve sağlığına katkısını ve etkisini belirleyecektir. Kayıtlı projeler tea Protokolünden katkılarıyla orantılı ödüller alacak, stake etme yoluyla güvence altına alınacak, projeleri ve katkıda bulunanları kapsayan bir itibar sisteminden yararlanacak ve toplulukların dış gündemlerden bağımsız olarak açık kaynak ekosisteminin kendi bölgelerini yönetmelerine izin verme seçeneğine sahip olacaktır. Çay Protokolü, projelerini kaydeden ve ağın kurallarına uyan ağ katılımcılarının ödüller almasına ve itibarlarına ve projelerine katkıda bulunmasına izin vererek açık kaynağın sürdürülmesini teşvik edecektir. Güvenlik veya geliştirme sorunları bulunursa, geliştiriciler pakete karşı kanıtlarla desteklenen iddialarda bulunabilir ve kesinti meydana gelebilir. Açık kaynak topluluğunun üyeleri, kalite sorunları için paketleri inceleyebilir ve protokol, orantılı kesme olaylarını yürürlüğe koyarak bu incelemelere yanıt verebilir.

## Sorumluluk Reddi

Bu teknik raporda yer alan bilgiler ön hazırlık niteliğindedir. Sonuç olarak, ne yazarlar ne de ilgili iştiraklerinden herhangi biri burada belirtilen bilgilerin nihai veya doğru olduğuna dair herhangi bir sorumluluk kabul etmez ve yukarıda belirtilenlerin her biri, yürürlükteki yasaların izin verdiği en geniş ölçüde, bu teknik incelemeyle ilgili olarak haksız fiil, sözleşme veya başka bir şekilde ortaya çıkan her türlü sorumluluğu reddeder. Ne bu teknik doküman ne de burada yer alan herhangi bir husus, herhangi bir sözleşme veya taahhüdün temelini oluşturamaz veya bunlarla bağlantılı olarak dayanak alınamaz ya da herhangi bir sözleşme veya taahhüde girmek için bir teşvik olarak hareket edemez.

Bu teknik dokümanda yer alan hiçbir husus, burada ele alınan herhangi bir tokenı satmak için bir teklif veya satın almak için bir talep teşkil etmez. Her halükarda, bu teknik dokümanın böyle bir teklif veya talep olarak kabul edilmesi durumunda, bu teknik dokümanla, bunun yasa dışı olduğu, böyle bir teklif veya talebin bir lisans veya kayıt gerektireceği veya böyle bir teklif veya talebin kısıtlamalara tabi olduğu herhangi bir yargı alanında böyle bir teklif veya talep amaçlanmamakta veya iletilmemektedir. Özellikle, burada tartışılan herhangi bir token, bu teknik incelemenin yayınlandığı tarih itibariyle, herhangi bir yargı alanının menkul kıymetler veya benzer yasaları kapsamında, söz konusu yargı alanının bu tokenleri bir menkul kıymet veya benzer bir araç olarak görüp görmediğine bakılmaksızın, tescil edilmemiştir ve tescil edilmesi amaçlanmamaktadır ve bunun yapılmasının söz konusu yargı alanının ilgili yasalarının ihlalini teşkil edeceği herhangi bir yargı alanında teklif edilemez veya satılamaz. Satın alma fiyatının tamamını kaybetmeye hazır değilseniz herhangi bir token satın almayın. Bu yüksek riskli bir satın alımdır ve bir şeyler ters giderse korunmanız pek olası değildir.

## Lisans

Bu makale [Creative Commons Attribution-ShareAlike 4.0 Uluslararası lisansı] (https://creativecommons.org/licenses/by-sa/4.0/) altında mevcuttur.

## Giriş

Günümüz interneti ağırlıklı olarak açık kaynaklı projelerden oluşmaktadır ve başlangıcından bu yana da öyle olmuştur. Açık kaynaklı projeler küresel geliştirici toplulukları arasında işbirliği yoluyla geliştirilir ve sürdürülür ve kod tabanları herkesin kamu malı olarak kullanması için kullanıma sunulur. Geçtiğimiz 80 yıl içinde (ilk özgür ve açık kaynaklı yazılım örneğinin 1953 yılında yayınlandığına [genellikle inanılmaktadır](https://archive.org/details/historyofmodernc00ceru)), açık kaynaklı yazılım niş teknoloji hobicilerinin ürünü olmaktan çıkıp tüm yeniliklerin üzerine inşa edildiği bir altyapı haline gelmiştir. Açık kaynaklı yazılımın önemine rağmen, kod tabanını bir kamu hizmeti olarak yaratan ve sürdüren geliştiriciler, yenilikçiler ve sürdürücüler olarak yaptıkları muazzam katkılar karşılığında hiçbir maddi ödül almamaktadır.

Milyarlarca dolarlık bir endüstri haline gelen kurumsal yazılım, açık kaynak tarafından atılan temel üzerine inşa edilmiştir. Yine de, bu yazılımın temellerini nankörce koruyan bireylere neredeyse hiçbir değer tahakkuk etmiyor. Açık kaynaklı yazılımlardan servetler kazanılmış olsa da, açık kaynaklı yazılımlar çoğunlukla bir kamu hizmeti olarak yaratılmakta ve sürdürülmekte olup, geliştiricilerin yarattıkları değeri yakalamaları için uygun bir araç bulunmamaktadır.


Günümüz internetinin potansiyelinin, dünyadaki mühendislerin küçük bir yüzdesinin açık kaynaklı yazılımları yalnızca fedakarlık amacıyla sürdürmesine bağlı olarak engellendiğine inanıyoruz. Açık kaynak bir sevgi emeğidir ve genellikle çekirdek bakımcılar için anlamlı teşviklerin olmaması nedeniyle engellenir. Açık kaynak geliştiricileri, geçimlerini sağlayan bir günlük iş ile kurumsal yazılımın temelini korumak arasında seçim yapmak zorundadır. Teşvik eksikliği, gerçekten değerli projelerin potansiyellerine asla ulaşamamasına neden olurken, diğerleri yazılımın yaşam döngüsü boyunca bakım eksikliği nedeniyle güvenlik sorunlarından muzdariptir. Açık kaynağın tüm potansiyelini ortaya çıkarmak için, açık kaynak projelerinin "adil değerini" değerlendirmek için evrensel bir yönteme ihtiyacımız var ve açık kaynak geliştiricilerinin, açık kaynağın nasıl geliştirildiği ve kullanıldığına dair temel ilkeleri değiştirmeden, açık kaynak topluluğuna sermaye girişini kolaylaştırarak yarattıkları değeri yakalamalarını sağlıyoruz.

Şirketler genellikle iş modellerini açık kaynağın etrafına sarar, doğrudan hayırsever geliştiricilerin çalışmalarından gelir elde ederken aynı zamanda sorunlar ortaya çıktıkça hataları düzeltmeleri için onlara güvenirler. Açık kaynak kod tabanları işletmeler için tak ve çalıştır temel işlevselliği sunar; ancak yazılım güvenlik açıkları açık kaynak üzerine inşa edilen uygulamalar için büyük bir risk oluşturabilir. Apache Software Foundation] (https://www.apache.org/) tarafından geliştirilen ve işletmeler ve hükümetler tarafından kullanılan birçok ticari yazılım ve hizmette kendine yer bulan Log4j paketindeki kritik bir güvenlik açığını içeren yakın tarihli bir olay buna iyi bir örnektir. Kasım 2021'de, [Alibaba Group Holding Ltd.](https://www.alibabagroup.com/) için çalışan bir güvenlik araştırmacısı, Apache Yazılım Vakfı'ndan mümkün olan en yüksek taban puanı alan [CVE-2021-44228](https://nvd.nist.gov/vuln/detail/CVE-2021-44228) güvenlik açığını bildirdi. Tenable](https://www.tenable.com/) CEO'su ve Amerika Birleşik Devletleri Bilgisayar Acil Durum Hazırlık Ekibi (US-CERT) kurucu direktörü Amit Yoran, bu güvenlik açığını "son on yılın en büyük, en kritik güvenlik açığı"(https://www.reuters.com/article/usa-cyber-vulnerability-idCNL1N2SY2PA) olarak tanımladı. Panik başladı ve bu paketi koruyan birkaç gönüllü, başarısızlık nedeniyle kamuoyu önünde ateş altında kaldı. Öfkeyi mütevazı bir adalet talebiyle ele aldıktan sonra sistemler yamalandı. Şirketler ve hükümetler, yirmi yıldır çok çeşitli kritik sistemler tarafından kullanılan Log4j paketinin, [sektörün tacizine](https://twitter.com/yazicivo/status/1469349956880408583) rağmen harekete geçen ve güvenlik açığını gidermek için yorulmadan çalışan aynı isimsiz kahramanlar olan birkaç ücretsiz gönüllü tarafından sürdürüldüğünü sonunda fark etti.

Ne yazık ki Log4j tek örnek olmaktan çok uzak. core-js her Node.js uygulamasının temeli olarak haftada 30 milyon kez indiriliyor, ancak aynı zamanda çok az finanse ediliyor ve potansiyel olarak birincil koruyucusunu [projeden uzaklaşmaya veya hatta lisansı kapalı kaynağa değiştirmeye] zorluyor (https://www.thestack.technology/core-js-maintainer-denis-pusharev-license-broke-angry/). Yakın zamanda birkaç bitcoin çekirdek geliştiricisi, diğer nedenlerin yanı sıra, kararları için mali tazminat eksikliğini gerekçe göstererek istifa etti.

<figure><img src=".gitbook/assets/xkcd-dependency (1).png" alt=""><figcaption><p>Figure 1 - Bağımlılık - Kaynak: <a href="https://xkcd.com/2347/">https://xkcd.com/2347/</a></p></figcaption></figure>


Teşvik yapıları sağlamaya yönelik, genellikle sponsorluk ve ödül sistemlerini içeren birçok girişim olmuştur. Sponsorluk, açık kaynak tüketicilerinin tercih ettikleri projelere bağışta bulunmalarını mümkün kılmaktadır. Ancak, açık kaynağı, alt katmanların çoktan unutulduğu, ancak yine de kendini adamış mühendisler tarafından sürdürülen ve daha da fazla geliştirici tarafından güvenilen bir tuğla kulesi olarak düşünün. Sadece kulenin tepesindeki projeler genellikle bilinir ve sponsorluk alır. Bu önyargılı seçim, kuleyi ayakta tutan temel tuğlaların hiç bağış almamasına, favorilerin ise ihtiyaç duyduklarından daha fazlasını almasına neden olur. Ödüller, proje tüketicilerinin geliştiricilere belirli özellikleri inşa etmeleri için ödeme teklif etmelerine olanak tanır, böylece projeleri yalnızca kendi çıkarlarına uygun olmayan şeyleri yaptıkları için ödüllendirir. Ve yine, sadece favorileri ödüllendirir.

Tea olarak, açık kaynak topluluğunu desteklemeye yönelik bu başarısız girişimlerden muzdarip çok sayıda açık kaynak projesi gördük ve açık kaynak geliştiricilerinin yarattıkları değeri yakalamalarına izin vererek yazılım tedarik zincirinin sürdürülebilirliğini ve bütünlüğünü geliştirmeyi misyon edindik.

Bu makalede, açık kaynak kodlu yazılımlar için merkezi olmayan bir sistem olan tea'yı öneriyoruz.

1. Tüm ekosisteme göre her açık kaynak projesine bir "Katkı Kanıtı" (white-paper.md#proof-of-contribution) hesaplamak ve atamak,
2. Açık kaynaklı yazılım projelerinin bakımının iyi yapılmasını sağlamak,
3. açık kaynak geliştiricilerinin ekosistem genelindeki katkılarıyla orantılı adil ödüllerle güçlendirilmesi, çay teşvik algoritmasının çay kayıt defterindeki her girişte uygulanması yoluyla elde edilir ve
4. Ağ katılımcılarının güvenlik açıkları ve hatalar için sorumlu ifşa uygulamalarını takip etmeye teşvik edilmesi.

## Bileşenler

Bir uygulama geliştiren bir yazılım geliştiricisinin dört şeye ihtiyacı vardır: bir tarayıcı, bir terminal, bir editör ve bir paket yöneticisi. Bu dört şeyden paket yöneticisi, bir geliştiricinin ürününü oluşturmak için ihtiyaç duyduğu araçları ve çerçeveleri kontrol eden şeydir. Bu katman, açık kaynağın nasıl güvence altına alındığını ve ödüllendirildiğini değiştirme potansiyelini gördüğümüz yerdir.

### Paket Yöneticisi

Paket yöneticisi, kulenin tepesinden tabanına kadar bir paketin veya uygulamanın çalışması için hangi açık kaynaklı yazılıma bağlı olduğunu bilir. Her proje, paketlenmiş her sürümle birlikte, tüm temel bileşenleri ve bunlara karşılık gelen sürümleri titizlikle belgeler.

Kulenin tepesinin bağımlılıklarını dikkatle seçtiğini ve bu dikkatli seçimin aşağıya doğru devam ettiğini bilir. Paket yöneticisi, gerçek dünya katkısına dayalı otomatik ve hassas değer dağıtımını sağlamak için geliştirici araç yığınına benzersiz bir şekilde yerleştirilmiştir.

Çay Protokolü'nün benzersiz "Katkı Kanıtı "na dayalı olarak değer dağıtmak için tasarlanmış değişmez, merkezi olmayan bir kayıt defteri öneriyoruz; bu, her projenin sistemin faydasına ve sağlığına katkısını ve etkisini belirleyen bir algoritmadır. Değer, temel kütüphaneler gibi tepe noktalarından grafiğe girebilir ve kayıt defteri tüm açık kaynak grafiğini bildiğinden, bu paketlerin bağımlılıklarına ve bağımlılıklarına özyinelemeli olarak dağıtılabilir.

Ek olarak, protokolün Katkı Kanıtı tarafından sağlanan bilgilerin, geliştiricilerin bir projeye ve yazarına güvenip güvenemeyeceklerini değerlendirmeleri için mevcut olması gerektiğine inanıyoruz. Bu bilgiler itibara, topluluk övgülerine, merkezi olmayan kimlik ("[DID](https://www.w3.org/TR/did-core/)") sistemlerinden alınan verilere, diğer paket yöneticilerine veya potansiyel olarak ağ katılımcılarının değerini riske atmasına dayanan teşvik mekanizmalarına dayanabilir.

Tea'nın araç, bilgi ve ödül kombinasyonunun geliştiricileri adil bir şekilde teşvik edeceğini, yazılım tedarik zincirini güvence altına almaya yardımcı olacağını, açık kaynaklı yazılımın büyümesini teşvik edeceğini ve yeniliği teşvik edeceğini tahmin ediyoruz.



### Merkezi Olmayan Sicil

Her paket yöneticisi, aynı meta verileri tekrar tekrar kopyalayan kendi paket kayıt defterine sahiptir. Bazı durumlarda, bu kayıt defteri [projenin manifestosundan farklı bilgiler] (https://www.bleepingcomputer.com/news/security/npm-ecosystem-at-risk-from-manifest-confusion-attacks/) içerebilir, böylece kötü aktörlerin potansiyel olarak kullanıcının haberi olmadan hain kod enjekte etmesine izin verir. Kendisine bağımlı olan topluluklar tarafından tasarlanan ve yönetilen tek, kapsamlı ve kesin bir kayıt defterinin zamanı gelmiştir. Bu merkezi olmayan, değişmez kayıt defteri güvenlik, istikrar sağlayabilir ve kötü niyetli niyetleri önleyebilir.

İnternet on binlerce hayati açık kaynak bileşeni üzerinde çalışmaktadır. Şimdiye kadar, temel açık kaynak altyapısının kaldırılmasının neden olduğu olayların minimum düzeyde olması dikkat çekicidir. En ünlüsü 2016 yılında yaşanan [NPM left-pad bağımlılığının kaldırılması] (https://www.theregister.com/2016/03/23/npm\_left\_pad\_chaos/) olayıydı ve bu olay sürekli entegrasyon ve sürekli dağıtım sistemlerine sıçrayarak geliştiricileri günlerce zor durumda bıraktı. Bu olay internetin kendisinin kırılgan geliştirme sistemleri üzerine kurulu olduğunu göstermiştir. Diğer örnekler, popüler paketlerini sabote eden paket bakımcılarının aktif veya kasıtlı katılımını (Bkz. [colors.js ve faker.js](https://fossa.com/blog/npm-packages-colors-faker-corrupted/) ve [node-ipc](https://www.lunasec.io/docs/blog/node-ipc-protestware/)) veya paketlerin bakımına yardımcı oluyormuş gibi görünerek ve örneğin Bitcoin özel anahtarlarını çalmak için onları bozarak kar elde etmek isteyen kötü aktörleri (Bkz. [event-stream](https://github. com/dominictarr/event-stream/issues/116)) veya kullanıcıları kandırarak yüklemelerini sağlamak amacıyla "typosquatting" (https://en.wikipedia.org/wiki/Typosquatting) olarak da bilinen kasıtlı yazım hataları içeren kötü amaçlı paketler, örneğin [crossenv vs. cross-env NPM paketleri](https://blog.npmjs.org/post/163723642530/crossenv-malware-on-the-npm-registry.html).

Sektör, dijital varlıkların yazılımın bir parçası olduğu bir geleceğe doğru ilerlerken yazılım bütünlüğünün garanti altına alınması gerekmektedir. Kendimizi yazılımı değiştiren kötü niyetli aktörlere karşı savunmasız bırakmaya devam edemeyiz.

Paket yöneticisi olarak adlandırdığımız çoğu araç, uygulamalara ve dApp'lere yerleştirilen bu paketlerin orijinal yazarları tarafından yayınlanan değiştirilmemiş açık kaynak kodu olduğunu garanti edemez. [Microsoft'un GitHub'ı, yazılımdaki güvenlik açıklarının %17'sinin kötü niyetli amaçlarla yerleştirildiğini tespit etmiştir](https://www.zdnet.com/article/open-source-software-how-many-bugs-are-hidden-there-on-purpose/) ve bazıları uzun süre tespit edilememiştir (Bkz. [Webmin 1.890](https://threatpost.com/backdoor-found-in-utility-for-linux/147581/)).

Bir itibar sistemi ile güçlendirilmiş ve kötü aktörleri ifşa etmek ve iyileri ödüllendirmek için tasarlanmış teşviklerle desteklenen küresel bir merkezi olmayan kayıt defteri, geliştirici topluluklarının yazılım tedarik zincirini güvence altına almak için aradığı garantileri sağlayabilir.


### Depolama Sistemi

Açık kaynak projeleri, bazıları kısıtlı veya istenmeyen olabilen geniş bir işlevsellik yelpazesi sunar. Şifreleme bunun mükemmel bir örneğidir. Şifreleme için kritik bir kullanım alanı, dünya genelinde bireylerin mahremiyetinin desteklenmesidir. Ancak şifreleme kötü amaçlarla da kullanılabilir (bkz. Mart 2018'de kolluk kuvvetleri tarafından ortadan kaldırılan [Phantom Secure](https://www.fbi.gov/news/stories/phantom-secure-takedown-031618)) veya kolluk kuvvetlerinin faaliyetlerini desteklemek için tehlikeye atılabilir (bkz. FBI'ın "şifreli" bir iletişim platformu olan AN0M'yi işlettiği ve suçluları güvenli iletişim için "şifreli" telefonlarını kullanmaya ikna ettiği [Operation Ironside (AFP), Operation Greenlight (Europol) ve Operation Trojan Shield (FBI)](https://www.europol.europa.eu/media-press/newsroom/news/800-criminals-arrested-in-biggest-ever-law-enforcement-operation-against-encrypted-communication)).

Şifrelemenin geniş uygulamaları onu açık kaynaklı yazılım için mükemmel bir kullanım alanı haline getirmiştir ve paketleri depolayan herhangi bir çözümün kurcalamaya ve sansüre dayanıklı olması gerektiğine dair harika bir örnektir. tea, paketleri işlevselliklerine göre filtreleme veya yaptırım uygulama niyetinde olmayan merkezi olmayan bir protokoldür. tea yönetimi kötü niyetli olduğu kanıtlanmış paketleri kaldırmayı seçebilirken (daha fazla bilgi için [yönetişim bölümüne] (white-paper.md#governance) bakın), tea sisteminin, bir paketin değiştirilmediğini ve doğru şekilde çoğaltıldığını gösteren merkezi olmayanlar da dahil olmak üzere birden fazla depolama sistemiyle bağlantı kurması çok önemlidir. Paket bakımcıları, paketlerini güvenli bir şekilde saklama ve dağıtma ihtiyaçlarına en uygun depolama sistemini seçebilirler.

## Protokole Genel Bakış

Açık kaynak katkılarını ödüllendirmek için bir protokol tasarlamak zorlu görevler içermektedir. Açık kaynaklı yazılımlar, evrensel olarak erişilebilir olduklarından, yanlış atıf, tahsisat ve kötü niyetli tahrifata açıktır. Bununla birlikte, açık kaynak topluluğu iyi aktörleri öne çıkarma ve kötü aktörleri ifşa etme konusundaki istekliliğini sürekli olarak göstermiştir. Tarihsel olarak, bulguların raporlanması ve savunulması ne kadar zaman alıcı ve önemli olsa da, diğer geliştiricilerin katkılarını gözden geçirmek ve yorumlamak için harcanan enerji kesinlikle gönüllülük esasına dayanmaktadır.

Açık kaynak geliştiricilerinin yarattıkları değeri güvene dayalı bir şekilde yakalamalarına olanak tanıyarak yazılım tedarik zincirinin sürdürülebilirliğini ve bütünlüğünü artıran itibar ve teşviklerle güvence altına alınmış merkezi olmayan bir protokol oluşturmayı amaçlıyoruz. Açık kaynak katkıları için yeterli ödüllerin, hem bir itibar sistemi hem de topluluk üyelerinin bir proje veya bir geliştiricinin çalışması için bulgularını ve desteklerini (veya muhalefetlerini) iletme yeteneği olmadan başarılı olamayacağına inanıyoruz. Ayrıca, geliştiricilere bu itibar sistemine erişmeleri ve katkıda bulunmaları için araçlar sağlamalıyız. Projelerindeki tüm bağımlılıkların sürümüne ve itibarına basit görsel ve programlanabilir erişim içeren araçlar.

Topluluk üyelerinin her bir projeyi desteklemek için yatırdıkları TEA token'larının şeffaflığı, her bir projenin itibarını artırır, tıpkı bir paket koruyucusunun kendi çalışmasına yatırdığı token sayısının ona olan bağlılığını göstermesi gibi. Bu birleştirilmiş veri noktaları, tüm topluluk üyeleri için bir itibar sistemini bilgilendirmeye yardımcı olacak ve seçimi kolaylaştıracaktır. event-stream package hack] (https://medium.com/intrinsic-blog/compromised-npm-package-event-stream-d47d08605502) paketin kendisi aracılığıyla değil, bağımlılıklarından biri aracılığıyla gerçekleştirildiğinden, tüm bağımlılık katmanlarında görünürlük bu güvenilmez sistemi oluşturmak için hayati önem taşıyacaktır. Bununla birlikte, sistem tasarlanırken ve inşa edilirken hesaplama ve işlem ("gaz") maliyetleri gibi hususların öncelikli olması gerekecektir.


Amacımız, hem Web 2.0 hem de web3 geliştiricilerini ödüllendirmektir. Her bir platformun detayları ve özellikleri, paketlerin kurulumlarının bir veya daha fazla kötü niyetli kişinin kurulumlarını kolayca etkileyebileceği anlamına gelir. Bu, kurulum sayılarını yapay olarak şişirmek için "satın alınan" kurulumları içerir. Daha da kötüsü, gereksiz lisans anahtarları veya diğer dağıtım izleme mekanizmalarıyla açık kaynak yazılımın doğasına temel değişiklikler getirerek gereksiz sürtünmeler yaratmaktır. En geniş kapsamı sağlamak için, ödüllerin kurulumları izlemenin basit bir kavramına dayanmaması, ancak kaliteli paketlerin sunulmasını ve kötü niyetli veya yüksek riskli paketlerin raporlanmasını teşvik eden teşvik mekanizmalarına dayanması gerektiğine inanıyoruz. Son olarak, birçok paket ortak bağımlılıklara dayanır. Örneğin, lodash 176,308 açık kaynak bağımlıya sahipken chalk 100,247 bağımlıya veya log4js 3,809 bağımlıya sahiptir. Aynı bağımlılıkları kullanan daha fazla paket oluşturulduğunda, ödüllerin adil ve eşit olarak dağıtıldığından nasıl emin olabiliriz? En çok kullanılan bağımlılıkların yeni veya ortaya çıkan paketler ve geliştiriciler açısından ödüllendirilmeden nasıl emin olabiliriz? Teşvik sisteminin geliştiricileri niş dillerden uzaklaştırıp, teşviklerin daha iyi olduğu merkezi yerlere yönlendirme riskini nasıl önleriz? Ancak, geliştiriciler olarak, en fazla bağımlıya sahip paketleri nasıl tanımlarız ve bu paketlerin alternatiflerini - daha hafif, daha verimli, daha iyi kodlanmış sürümlerini nasıl oluştururuz?

Tea'de, görünürlük eksikliğinin ve teşviklerin, açık kaynak yazılımın evrimini engellediğine inanıyoruz. Doğru teşvikler ve ödüllerle desteklendiğinde, daha fazla geliştirici açık kaynak yazılımı inşa etme, iyileştirme ve artırma konumunda olacaktır.

Katkı Kanıtı
Bu beyaz kağıtta, "Katkı Kanıtı"nı, tüm projelerin tüm açık kaynak sistemlerindeki etkisini nicelendirmek üzere tasarlanmış yeni bir uzlaşı mekanizması olarak öneriyoruz.

Katkı Kanıtı, her açık kaynak projesinin zaman içindeki genel açık kaynak ekosistemi içindeki yönelimine ve kullanımına dayalı olarak bir proje teaRank olarak adlandırılan dinamik bir puan atar.

Bu yaklaşımın, genellikle halka en görünür ve en çok ilgi gören uygulama katmanından uzakta bulunan temel yazılıma fayda sağladığına inanıyoruz ve ödül mekanizmasını, projenin tepesinden, tamamen tabanına kadar olan tüm bileşenlerin katkıları için ödüllendirilmesini sağlamak için genişletiyoruz.

Her proje puanının hesaplanması için teaRank, Google'ın PageRank algoritmasının temelini oluşturan bir zemin üzerine inşa eder. Google'ın PageRank'i, arama ürününün belirleyici bileşenidir ve web sayfalarının grafik benzeri yapısına dayanmaktadır. PageRank, temelinde, bir grafikteki düğümlere (veya web sayfalarına) rastgele gezinen her şeyin belirli bir düğüme varma olasılığını temsil eden bir olasılık dağılımı algoritmasıdır. Bu algoritma, her düğümün (veya web sayfasının) etkisini, ona giden kenarların (bağlantıların) miktarı ve kalitesine dayanarak nicelendirir. Bu algoritma, webin topolojisini daha iyi ayırt etmek ve web sayfaları arasındaki sahte bağlantıları belirlemek için zamanla değiştirildi, çeşitli saldırıların hafifletilmesine izin verdi.

İnternetin grafik yapısı ile tea Protokolü'nün merkezi olmayan kayıt defteri arasında dikkate değer benzerlikler bulunduğundan, başlangıçta PageRank, analiz için umut vadeden bir yaklaşım gibi göründü. Ancak daha fazla deney yapıldıkça, PageRank'ın spam önleme stratejilerinin açık kaynaklı yazılıma uygulandığında daha az etkili olduğu ortaya çıktı.

Ana fark, açık kaynaklı yazılım meta verilerinde yatmaktadır. Web sayfalarının aksine, çoğu açık kaynaklı paket meta verisi, kod satırları ve taahhüt mesajları gibi, kullanıcı tarafından oluşturulur ve sahteciliğe açıktır. Paket yöneticileri, kötü niyetli aktörlerin, balık avı bağlantıları veya diğer zararlı içerikler içeren paketlerle kaydı doldurduğu spam kampanyalarına karşı savunmasızdır. Paket yöneticisi kayıtları ayrıca belirli projelerin bağımlılıklarını doğru bir şekilde yansıtmayabilir. Bu sorun, "manifest karışıklığı" olarak bilinen ve kötü niyetli kod enjekte etmelerine veya üçüncü taraf bağımlılıklarının etkisini yapay olarak artırmalarına olanak tanıyabilir.

Bu spam paketlerinin tanımlanması ve ele alınması zor bir görevdir ve genellikle güvenlik firmaları veya fedakar bireyler tarafından üstlenilir, ancak bunlar açık kaynaklı yazılımdaki spam saldırılarıyla mücadele etmek için ölçeklenebilir bir çözüm sunmaz.

Katkı Kanıtı, spam paketlerinin tanımlanması ve izole edilmesi için özel olarak tasarlanmış bir algoritmadır ve yalnızca etkili projelerin adil bir ödül almasını sağlar. Katkı Kanıtı algoritmasının ayrıntıları, ayrıntılı bir teknik belgenin konusu olacaktır.

Ağ Katılımcıları
Bu beyaz kağıtta, katılımcıları katkılarına göre ayırt ediyoruz. Bazıları kod ekleyebilir veya eklenen kodu doğrulayabilir. Diğerleri geliştiricilere ve itibarlarına destek olabilir.

Paket Bakımcıları
tea, paket oluşturucularının çalışmalarını sürdürdüğünü varsayar. Bu beyaz kağıtta, onlara "paket bakımcıları" diyeceğiz.

Paket bakımcıları, yazılımlarının endüstri geliştikçe artan değer sunmaya devam etmesini sağlamalıdır. Onlar, sürekli katkıları için güçlendirilmeli ve ödüllendirilmelidir. Ancak bir paket bakıcısı, bakım çabalarını sona erdirme kararı alabilir veya projenin kullanıcılarının beklentilerine uygun bir hızda çalışamayacağını fark edebilir. Sürekliliği sağlamak için, projenin kontrolünü başka bir geliştiriciye veya geliştirici grubuna devretme yeteneğine sahip olmalıdırlar, böylece onları bakıcı olarak atayabilir ve projenin mevcut ve gelecekteki ödüllerinin sahipliğini ve kontrolünü verirler.

Benzer şekilde, bir geliştirici, mevcut projeyi çatallayarak ve ileriye dönük olarak bakacağı yeni bir projeyi kaydederek paket bakıcısı olmaya karar verebilir, böylece paket bakıcıları haline gelirler. Kaydedildikten sonra, teaRank'ı belirli bir yönetim tanımı eşiğini aşan projeler, tea Protokolü aracılığıyla teklifin Katkı Kanıtı algoritmasıyla, mevcut çatallanan projeye paralel olarak ödüller almaya başlar. Açık kaynaklı toplum, eski projeden yeni sürüme doğru kaydığında, Katkı Kanıtı algoritması, ödüllerin eski projeye tahsis edildiğini kademeli olarak azaltacak ve yeni çatallı projeye atanmış olanları artıracaktır.




Geliştirici topluluklarına, hangi projelerin sürdürüldüğünü ve geçmiş ve mevcut bakıcıların itibarını ve çalışma kalitesini belirlemek için doğru araçları sağlamak son derece önemlidir. Açık kaynaklı çalışmaların sıklıkla kötü niyetli kişiler tarafından değiştirildiğini ve birçok kişinin çabalarının zarar gördüğünü çok sık gördük. Bu kötü niyetli kişilerin çalışmaları genellikle keşfedilir ve düzeltilir, ancak genellikle mali veya veri kaybıyla ciddi zararlar verilene kadar fark edilmez. Örneğin, haftada 1,5 milyon kez indirilen ve 1.500'den fazla paket tarafından güvenilen event-stream npm paketini ele alalım; bir hacker, açık kaynaklı projeye sızmış, orijinal yazarının güvenini kazanmış ve event-stream'i kötü niyetli bir pakete bağımlı hale getirecek şekilde değiştirmiş ve bitcoin cüzdanı kimlik bilgilerini üçüncü taraf sunucuya çıkarmıştır. Araçlar bu tür saldırıların bazılarını tespit etmede yardımcı olabilir, ancak her zaman güvenilir olamazlar, bu da bir topluluğun diğerinin titizliğine ve bulgularını paylaşma istekliliğine bağımlı olmasına neden olur.

TEA tokeniyle ödül mekanizması öneriyoruz, böylece açık kaynaklı toplulukların bulgularını yapıcı bir şekilde rapor etmelerini teşvik ederiz, böylece paket bakıcıları bunları istismar edilmeden önce ele alabilirler.

Paket Kullanıcıları ve tea Topluluğu Üyeleri
"Paket kullanıcıları", belirli bir sorunu çözmeye odaklanmış yazılım geliştiricileridir. Genellikle, paket bakıcılarının çalışmalarından doğrudan yararlanmak için açık kaynaklı topluluğa bakarlar.

En üst 30 paket yöneticisinde erişilebilen 10 milyondan fazla paket ile, açık kaynaklı projelere evrensel değer atfetme eksikliği, güvenli ve verimli paketlerin seçimini yüksek riskli ve korkutucu bir girişime dönüştürebilir. Değeri belirlemek ve ölçmek için açık bir yöntem olmadığında, paket kullanıcıları güvenli paketleri nasıl verimli bir şekilde seçebilirler?

TEA Protokolü'nün Katkı Kanıtı algoritması ve diğer teşviklerin birleşimiyle, paket kullanıcılarına kendi projelerinin temelini hızlı ve düşünceli bir şekilde seçmeleri için ihtiyaçları olan bilgiyi sağlayabileceğimize inanıyoruz.

Proje Destekçileri
Web 2.0 ve web3'te, genellikle "sponsorlar" olarak adlandırılan bir paket kullanıcıları alt kümesi, paket bakıcılarını bağışlar veya diğer türden ödemelerle desteklemeyi seçmiştir; ancak, bu nadiren gerçekleşmiştir.

Bu "proje destekçileri", ticari ürünlerini oluşturmak için açık kaynaklı yazılımı kullanan organizasyonlar veya açık kaynaklı proje kullanıcıları, ekosistemi desteklemek isteyen hayırseverler veya daha büyük bir sistemin bileşenlerini geliştirmek için ekipleri finanse etmek isteyen girişimciler olabilir.

tea, açık kaynaklı proje destekçileri topluluklarını, kuruluşlar, geliştiriciler, kullanıcılar veya teknoloji tutkunları olsun, tea topluluğunun tüm üyelerine genişletmeyi önerir. tea'nın amacı, açık kaynağın sürekli sürdürülebilirliğine ve sürekli büyümesine katkıda bulunmak için TEA tokeninin benzersiz kullanım durumları aracılığıyla merkezi olmayan teşvik mekanizmaları uygulamaktır. Proje destekçileri, işlerine, inançlarına veya kararlarını etkileyen herhangi bir kriter ve ölçüye dayanarak hangi projeleri veya paket bakıcılarını desteklemek istediklerine özgürce karar verebilirler. Ayrıca, proje destekçileri bu projeleri nasıl desteklemek istediklerine de özgürce karar verebilirler.

Sponsorluk, açık kaynaklı gelişimi desteklemek için etkili bir sistem olabilir; ancak, bu sponsorluklar genellikle tüm bağımlılıklara yayılmaz. Bu kısıtlama, favorileri destekler ve yeniliği ve yazılım oluşturmayı engeller. Yazılım geliştirmenin temeli olarak başarılı olmak için, açık kaynaklı tüm geliştiricilere, başlangıç seviyesinden uzmanlara kadar, kuledeki tüm katmanlarda güç vermelidir.

Yazılım arz zincirinin sürdürülebilirliğini ve bütünlüğünü güçlendirmek ve açık kaynaklı geliştiricilerin yarattıkları değeri yakalamasını sağlamak için, tea, desteklemenin bir projenin tüm yönlerine fayda sağlayacağı mekanizmaları kurmayı amaçlamaktadır. Destekçilerden gelen destek, bir projenin bağımlılıklarına kadar, ağacın tepesinden tabanına kadar yayılacaktır. Bu, paket bakıcısının yığınlarını bilinçli bir şekilde seçme yeteneğine güvenmeyi içerir ve bu da onların itibarını artırır.

<figure><img src=".gitbook/assets/figure-2.png" alt=""><figcaption><p>Şekil 2 - Bağımlılıklar boyunca ödül dağılımı</p></figcaption></figure>

tea Deneyimcileri
Yeni projelerin veya mevcut projelerin yeni sürümlerinin piyasaya sürülmesi, çalışmanın geçerliliğinin ispatlanması gerekmektedir. Bu bilgi, paket kullanıcılarının pakete ve paketin bakıcılarına güvenip güvenemeyeceklerine karar vermeleri açısından kritiktir. tea Protokolü içinde, bu işlev "tea deneyimcileri" tarafından sağlanır.

Tea deneyimcileri, genellikle bir paketle ilişkilendirilen iddiaları kontrol etmek için zaman ayırmaya istekli deneyimli yazılım geliştiricilerdir (işlevsellik, güvenlik, anlamsal sürümleme, lisans doğruluğu vb.) ve araştırmanın sonucunu göstermek için itibarlarını ve TEA jetonlarını riske atarlar. tea Protokolü'nde, "çayınızı yatırmak" TEA jetonlarınızı kilitleme sürecidir ve bu da incelemelerinizi desteklemek için kullanılır, bu da incelemelerinizin kalitesine dayalı olarak ödüller kazanmanıza veya cezalar almanıza neden olabilir. Tea deneyimcileri ayrıca, paket yöneticilerine gizli bir şekilde hataları veya zafiyetleri bildirme seçeneğine sahiptir. Geçerli raporlar, projenin hazinesinden ödülleri getirirken, geçersiz raporlar, tea deneyimcisinin yatırımını kaybetmesine yol açar. Son olarak, paket bakıcıları bu bildirilen sorunlara dikkate almadıklarında, projenin hazinesi için cezalar veya "kesme" tetiklenir.

Proje destekçileri gibi, tea deneyimcileri bir projeyi ve paket bakıcısının itibarını etkileyebilir; ancak, rolü bir projenin güvenliğini, işlevselliğini ve kalitesini doğrulamak olduğundan, etkisi daha önemlidir. Tea deneyimcilerinin iddialarını desteklemek için itibarlarını inşa etmeleri gerekir. İşlerinin kalitesi ve riske attıkları TEA jetonları, incelemelerini yatırdıklarında dış veri kaynakları ile birleşerek her tea deneyimcinin itibarını oluşturur ve böylece işlerine daha fazla değer katar. Bir projeyi ve paket bakıcısının itibarını nasıl etkileyen mekanizmaların ayrıntıları için "Paket ve Paket Bakıcı İtibarı" bölümüne bakın.

Proje Kaydı ve Katkı Kanıtlama Ödülleri
Bir proje sürümünün kaydedilmesi, atomik olarak birden fazla işlemin gerçekleşmesini gerektirir. Özellikle:

Paket bakıcısı, projeyi merkezi olmayan bir kayıt defterine kaydetmelidir,
tea Protokolü, paket bakıcılarının belirlediği kurallara uygun olarak sahipliği, kontrolü ve yapılandırması olan bir proje hazinesi oluşturmalıdır,
tea Protokolü, hazineye özgü adını Ethereum Adlandırma Servisi veya ENS'ye kaydetmeli ve böylece hazineyle ilgili tüm kullanıcı etkileşimlerini basitleştirmelidir.
Herhangi bir işlemin başarısız olması durumunda, protokol önceki durumuna geri dönecektir.

Bir projenin belirli bir yönetim tanımı eşiğini aşan bir teaRank ile başarılı bir şekilde kaydedilmesi durumunda, tea Protokolü, Katkı Kanıtlama ödüllerinin projenin hazinesine dağıtımını başlatır. Bu ödülleri, TEA jetonlarının toplam arzından kontrol edilen önceden belirlenmiş bir havuzdan belirlenen bir eğriye göre dağıtmayı öneriyoruz.

Paket bakıcıları, projelerinin hazinesine gelen Katkı Kanıtlama ödüllerinin bir kısmını sürekli olarak yatırarak projelerinin itibarını ve güvenilirliğini güçlendirmek zorundadırlar. Her jeton için, ağ katılımcıları bir katılımsız â€œyatırılmış TEAâ€ veya stTEA alır ve bunun oranı 1:1'dir ve tea Protokolü'nün yönetimine katılmak için kullanılır. Protokolün kurallarıyla uyumlu olarak, bu yatırılan ödüller ve bunların karşılık gelen stTEA'sı, paket bakıcıları hataları veya zafiyetleri ele almadıklarında azalabilir ("kesme") veya yeniden dağıtılabilir.

Son olarak, yönetim kurallarında belirlenen minimum yatırılmış hazine oranını sürdürme başarısızlığı, Katkı Kanıtlama ödüllerinin projeye dağıtılmasının askıya alınmasına neden olur. Bunun yerine, bu ödüller uyumlu projeler arasında yeniden dağıtılacaktır.

Paket ve Paket Bakıcı İtibarı
Yazarın ekonomik katkısına yalnızca dayanan bir itibar sistemi, yeterli kullanıcı koruması sağlamaz ve bir bireyin, işlerinin birçoğuna pozitif incelemeler bırakmak için kendilerinin birden fazla temsili oluşturması, kullanıcıları, işlerinin birçok kişi tarafından incelendiğine ve onaylandığına inandırarak, kullanıcıları kandırabilecek Sybil saldırılarına maruz kalabilir.

Sybil saldırılarını önlemek için birkaç metodoloji mevcuttur, bunlardan bazıları Nitish Balachandran ve Sugata Sanyal tarafından "Sybil Saldırılarını Azaltma Tekniklerinin İncelemesi" başlıklı çalışmada açıklanmıştır. tea, merkezi olmayan bir protokol olduğundan, merkezi bir sertifika verme otoritesine dayanan bir güven sertifikası sistemi, temel prensiplerine aykırı olacaktır. Sybil saldırılarını önlemeye odaklanan ve özellikle bir paketin ve bakıcısının itibarını değerlendirmek için teşvik edilen geniş bir ağ katılımcıları grubuna dayanan merkezi olmayan yaklaşımlara odaklanmayı öneriyoruz.

Bir işlevin üretiminde, bir üretim yapmayan düğümler diğerlerinin çalışmasını doğrulayabilir ve gerektiğinde ağın kurallarının ihlal edildiğini belirterek kötü aktörün cezalandırılmasına (mevduatın bir kısmının imhasıyla) yol açabilir blok zincirinin bir parçası olarak blokların üretimi gibi, kötü aktörün cezalandırılmasına yol açarız (mevduatın bir kısmının imhası). Bu nedenle, üçüncü tarafların, örneğin tea deneyimcilerinin, paket bakıcıları tarafından üretilen paketleri gözden geçirebilecekleri ve açık kaynak yazılım topluluğu ve kullanıcılarının çıkarları doğrultusunda davranmaya teşvik edilecekleri ve iyi davranışı tanıyacakları ve kötü davranışı cezalandıracakları bir sistem öneriyoruz. Bu sistem hem Sybil saldırılarına dirençli olmalı hem de büyük jeton sahiplerinin protokolü veya belirli paketlerin itibarını önemli ölçüde etkilemesini engellemelidir. Bu yaklaşımın, açık kaynağa daha uygun olduğunu, benimseme ve güvenin teşvik edilmesi ve nihayetinde tea'nın büyümesini kolaylaştırma açısından daha verimli bir ortam sağladığını düşünüyoruz.

Paket ve Paket Bakıcısı İtibarı
Sadece yazarın ekonomik katkısına dayanan bir itibar sistemi, yeterli kullanıcı koruması sağlamaz ve Sybil saldırılarına maruz kalabilir.

Sybil saldırılarını önlemek için birkaç metodoloji mevcuttur, bunlardan bazıları Nitish Balachandran ve Sugata Sanyal tarafından "Sybil Saldırılarını Azaltma Tekniklerinin İncelemesi" başlıklı çalışmada açıklanmıştır. tea, merkezi olmayan bir protokol olduğundan, merkezi bir sertifika verme otoritesine dayanan bir güven sertifikası sistemi, temel prensiplerine aykırı olacaktır. Sybil saldırılarını önlemeye odaklanan ve özellikle bir paketin ve bakıcısının itibarını değerlendirmek için teşvik edilen geniş bir ağ katılımcıları grubuna dayanan merkezi olmayan yaklaşımlara odaklanmayı öneriyoruz.

Bir işlevin üretiminde, bir üretim yapmayan düğümler diğerlerinin çalışmasını doğrulayabilir ve gerektiğinde ağın kurallarının ihlal edildiğini belirterek kötü aktörün cezalandırılmasına (mevduatın bir kısmının imhasıyla) yol açabilir blok zincirinin bir parçası olarak blokların üretimi gibi, kötü aktörün cezalandırılmasına yol açarız (mevduatın bir kısmının imhası). Bu nedenle, üçüncü tarafların, örneğin tea deneyimcilerinin, paket bakıcıları tarafından üretilen paketleri gözden geçirebilecekleri ve açık kaynak yazılım topluluğu ve kullanıcılarının çıkarları doğrultusunda davranmaya teşvik edilecekleri ve iyi davranışı tanıyacakları ve kötü davranışı cezalandıracakları bir sistem öneriyoruz. Bu sistem hem Sybil saldırılarına dirençli olmalı hem de büyük jeton sahiplerinin protokolü veya belirli paketlerin itibarını önemli ölçüde etkilemesini engellemelidir. Bu yaklaşımın, açık kaynağa daha uygun olduğunu, benimseme ve güvenin teşvik edilmesi ve nihayetinde tea'nın büyümesini kolaylaştırma açısından daha verimli bir ortam sağladığını düşünüyoruz.


Üçüncü Taraf Tarafından Paket İncelemesi
Üçüncü taraflar tarafından paketlerin incelenmesi, itibar oluşturmanın ve yazılım tedarik zincirinin güvenliğinin önemli bir bileşenidir. Ancak, üçüncü taraf incelemeleri, yukarıda bahsedilen Sybil saldırıları da dahil olmak üzere kendi benzersiz tehdit setine sahiptir.

Blockchain teknolojisi ve daha açık bir şekilde staking, tea'nın bu zorluğun üstesinden gelme fırsatı sunar. Cüzdan adreslerinin sonsuz miktarda mevcut olabileceği düşünülebilir, ancak bu, TEA token'ları için geçerli değildir ve toplam arzın 10 milyar olması beklenir. Ayrıca, geliştiriciler tarafından gerçekleştirilen her eylem, paket gönderme, doğrulama veya staking gibi, itibarlarına katkıda bulunacak ve bu da her bir geliştiricinin tea topluluğuna katkıda bulunmasını ve tea'nın yönetimine katılmasını sağlayacak benzersiz bir profil oluşturacaktır.

Üçüncü taraf inceleyicilerden TEA tokenlarına staking yapmalarını ve ağın çıkarlarına aykırı davranmaları veya kötü bir aktör olmaları durumunda bir kısmını kaybetme riskini almalarını isteyerek, üçüncü taraflar bir pakete ek güvenilirlik sağlayabilir ve TEA tokenları şeklinde ödül alabilirler.

Ayrıca, paketlerin bağımsız doğrulamasını gerçekleştiren üçüncü tarafların - tea deneyimcilerinin - itibar sistemini genişletmeyi de öneriyoruz. Pozitif bir incelemenin tamamlanması için atomik olarak iki işlem gerçekleşmesi gerekecek:

Tea deneyimcisi tarafından imzalanan ve topluluğun tüm üyeleri tarafından erişilebilen kod incelemesinin gönderilmesi, ve
İncelemelerini doğrulamak için pakete staking yapma işlemi.
Bir veya daha fazla kritik zafiyeti içeren negatif bir incelemenin tamamlanması, tea deneyimcilerinin önce paket bakıcısına bir iletişim protokolü kullanarak zafiyeti bildirmeleri ve sorunu zamanında çözmelerine izin vermeleri gerekecektir. Paket bakıcısının zafiyeti ele alması için ayrılan yönetim tarafından belirlenen sürenin sona ermesi veya düzeltilmiş paket mevcut hale geldiğinde, aynı iletişim protokolü, kullanıcıları ve test edicileri (bağımlılar da dahil olmak üzere) bu paketin bir zafiyetin tanımlandığını ve umarım ele alındığını, böylece uygulamalarını veya bağımlılıklarını güncellemeleri gerektiğini bildirmek için kullanılacaktır. Geliştiricilerin zamanını boşa harcamayı önlemek için, tea deneyimcileri ile paket bakıcıları arasındaki iletişim, tea deneyimcilerinin TEA tokenlarına staking yapmalarını gerektirecektir.

Her iki işlem tamamlandığında, tea deneyimcileri, belirli bir paket ve paket sürümü üzerinde yaptıkları çalışmanın bir kanıtı olarak bir NFT alacaklar. NFT'lerin birikimi, incelenen paketlerin staking oranı ve dış sistemlerden elde edilen bilgiler, bir tea deneyimcisinin itibarını bilgilendirecektir. İtibarları belirli kilometre taşlarına ulaştığında, tea deneyimcileri protokolün yükseltilmiş bölümlerine veya protokolden hızlandırılmış ödüllere erişebilirler, bunlar tea yönetimi tarafından belirlenir.

Güncellenmemiş veya Bozuk Paketler
tea'nın misyonu, açık kaynak geliştiricilerinin yarattığı değeri yakalamalarına izin vererek yazılım tedarik zincirinin sürdürülebilirliğini ve bütünlüğünü artırmaktır; ancak, ödüller, paket bakıcıları ve tea deneyimcileri tarafından yapılan çabalarla orantılı olmalıdır. Yetersiz bakılan, güncellenmemiş veya bozuk paketler, paket bakıcılarının topluluğun beklentilerine uygun yaşamadığını veya paketlere staking ile gösterilen güvene cevap vermediğini gösteren açık göstergelerdir. Güncellenmemiş paketlerin başka bir tezahürü, devam eden kullanımı olan bir miras dilin veya çoklu sürüm dillerinin eski sürümünün devam etmesidir. Paketlerin uzun süre güncellenmemesi veya bozuk olması, tea deneyimcilerinin paket bakıcılarının çalışmalarını düzenli ve sürekli olarak incelemeleri gerektiğini gösterir.

Tea deneyimcileri, açık kaynak topluluklarında önemli bir role sahiptir, çünkü incelemeleri ve ilişkilendirilen iddiaları, paket kullanıcılarını belirli paketlere yönlendirebilir veya uzaklaştırabilir. İncelemelerin sürekli olarak güvenilir olabilmesini sağlamak için, tea deneyimcilerinin gönderdiği incelemelerin TEA tokenlarına bağlanması gereken bir mekanizma öneriyoruz. Güncellenmemiş veya bozuk paketlerin bir kısmının hazineye kesilmesi, diğer bir kısmının ise paketin bakımının eksik olduğunu ilk tanıyan tea deneyimcisine gönderilmesi gibi bir düzenleme öneriyoruz.

Paketler popülerlik kazandıkça ve kullanımı arttıkça, daha fazla uygulama ve potansiyel olarak görev açısından kritik sistemler onlara bağlı hale geldiğinde, geliştiricilerin hataları paket bakıcısına gizlice bildirmelerini teşvik etmeli ve paket bakıcılarını böyle hataları istismar edilmeden önce ele almaya teşvik etmeliyiz. Sonuç olarak, bir zero-day zafiyeti veya eskimiş bir bağımlılığın kullanımı gibi bir kusuru belirten herhangi bir olumsuz incelemenin, yönetim tarafından tanımlanan bir erteleme süresini aşan ve açık kalan herhangi bir olumsuz inceleme, paket bakıcısının bir başarısızlığı olarak kabul edilmeli ve ilk hatayı bildiren tea deneyimcisinin kesilmiş tokenların bir kısmını alması gerekmektedir.

Aynı şey, itibarlarını ve TEA tokenlarını ihmalkar paket bakıcılarının çalışmalarına yatıran paket destekçileri için de geçerlidir ve buna karşılık ödül alırlar. Bakım eksikliğini belirlemekte başarısız oldukları veya paketi desteklemeye devam etmeyi seçtikleri için tüm kesme faaliyetlerinin paket destekçilerine genişletilmesini öneriyoruz.

Tüm tea deneyimcilerine dağıtım, inceleme yaşına ve inceleme için staked TEA tokenlarının sayısına dayalı olabilir.

TEA Token
TEA, tea Protokolü'nün belirli bölümlerine ve belirlenmiş özelliklerine erişim anahtarı olarak görev yapan bir kriptografik türkendir.

TEA tokenlarının sahipleri şunları yapabilir:

Paketlerini kaydedebilirler;
Paketlere TEA tokenlarını staking yaparak destek verebilirler;
Yazılım arz zincirinin güvenliğine katkıda bulunmak için paketleri sorgulayabilir ve hataları ve/veya zafiyetleri bildirmek için inceleme yapabilirler.
Tartışıldığı gibi, tea Protokolü açık kaynak ekonomisini açığa çıkarır ve yapımcılar, bakıcılar ve kurumsal yazılımın son kullanıcıları için değer yaratır. Sonuç olarak, tea Protokolü tarafından elde edilen değer, topluluk ölçeklendikçe bir geri bildirim döngüsü oluşturur ve katılımı daha da teşvik eder.

Açık Kaynak Geliştiricilerinin Ödüllendirilmesi
TEA'nın Katkı Kanıtı ve staking mekanizmalarının açık kaynağın büyümesini teşvik etmesini bekliyoruz, böylece katılımcılarının tutkularını engelsiz bir şekilde takip etmelerini sağlar.

"Proje Kaydı ve Katkı Kanıtı Ödülleri" bölümünde belirtildiği gibi, tea Protokolü'ne kaydedilen ve bir yönetim tarafından belirlenen eşiği aşan bir teaRank'a sahip projeler, tea Protokolü'nden TEA tokenları biçiminde Katkı Kanıtı ödülleri alacaktır. Dağıtım, paketin protokolün kurallarına uygun olduğu sürece devam edecektir. Özellikle, paketin yönetim tarafından belirlenen eşikten yüksek bir teaRank'a sahip olması ve paket bakıcılarının proje hazinesine gelen Katkı Kanıtı ödüllerinin bir kısmını sürekli olarak staking yaparak projelerinin itibarını ve güvenilirliğini artırmaları gerekecektir. Bu kurallara uyulmaması, Katkı Kanıtı ödüllerinin dağıtımının askıya alınmasına ve gelecekteki ödüllerin uyumlu projeler arasında yeniden dağıtılmasına neden olacaktır.

Bağımlılıklar bir paketin güvenilirliğini ve güvenliğini önemli ölçüde etkileyebilir ve bir paketin bağımlılıkları için kayıt yapılmaması, potansiyel bir risk olarak görülmelidir. Paket bakıcıları, bu bağımlılıkların hem doğrulayıcıları hem de kullanıcıları oldukları için, bu bağımlılıkların bakımını yapanların bakıcılarıyla bağlantı kurmak için mükemmel bir konumdadırlar. Onları tea'ya kayıt yapmaları konusunda teşvik edebilirler, böylece onlar tea deneyimcilerinin denetimi altına girer ve ilişkili ödüller için uygun olur. İtibar sisteminin genişletilmesine yönelik bu topluluk genelindeki katılımı teşvik etmek için, tea Protokolü'ne kayıtlı olmayan bağımlılıkları olan herhangi bir paketin, Katkı Kanıtı ödüllerinin bir kısmının yakılmasını öneriyoruz. Bu yakma, her bir kayıtlı olmayan bağımlılığın sayısına ve katkısına, teaRank cinsinden belirlenir ve bu bağımlılıklar kayıtlı olmadığı sürece devam eder.

Güçlü teşviklerin kötü niyetli aktörleri açık kaynak yazılımını tehlikeye atabileceğini gösteren birçok durum var. İnternet'in çoğu kritik altyapısı açık kaynakta çalışıyor ve zafiyetleri bulma yarışı devam ediyor. Tea'da, paket bakıcılarının suçlanılması gerekenler değildir (ancak genellikle suçlanırlar).

Tea Protokolü'nün teşvikleri, adil ve eşitlikçi bir teşvik dağılımı sağlayarak bu sorunu ele alır. 176 binden fazla bağımlıya sahip bir paket olan lodash gibi bir paket, açık kaynak geliştirmenin bir direğidir ve bakıcıları orantılı olarak ödüllendirilmeyi hak eder. Ancak, bağımlı sayısına dayalı olarak yalnızca bir ödül sistemi, bu tekelcilikleri bozmak için yenilikçileri yeterince finanse etmiyor veya zaten yeterince kaynak biriktirmediği sürece onları engeller. Bu yaklaşım, katılımcı sayısının azalmasına neden olabilir ve tea'nın amacının tam tersine yol açabilir.

Bu sınırlamayı ele almak ve her TEA token sahibini paket bakıcılarını destekleme yeteneği ile donatmak için, tüm ağ katılımcıları tarafından alınan staking ödüllerinin yönetim tarafından belirlenen bir kısmının, ilgili paketin hazinesine, bağımlılıklarıyla birlikte yönlendirilmesini de öneriyoruz.

Yazılım Arz Zincirini Güvence Altına Almak İçin Staking
Staking, merkezi olmayan bir itibar sisteminin desteklenmesi için etkili bir metod olabilir. Ancak, yazılım arz zincirinin güvenliğini kolaylaştırmak için, tea teşvik dağıtım sistemi, her paketin staking oranını dikkatlice düşünmeli ve her bir paketin teşvikini buna göre ayarlamalıdır.

Birkaç uygulamanın çok sayıda başvuruda bulunduğu ve en fazla staking ödülünü alan birkaç paketin riskini azaltmak için, web3 Vakfı tarafından üretilen araştırmada açıklanan yaklaşıma benzer şekilde, bir optimum staking oranının uygulanmasını öneriyoruz.


Bir paket, yönetim tarafından tanımlanan optimum staking oranını aştığında, pakete tahsis edilen toplam staking ödülü, pakete yatırılan TEA tokenlarının miktarından bağımsız olarak sabit kalacaktır. Bu önlem, paket destekleyicilerini ve tea taster'ları, yüksek oranda staked paketlere daha fazla staking yapmaktan caydırmayı amaçlayan bir ölçü olup, her bir paket destekçisinin aldığı staking ödüllerinin lineer olarak azalmasına neden olacaktır.

Web3 Vakfı'nın araştırmasında açıklanan eğri tabanlı bir yaklaşım, pakete tahsis edilen staking ödül havuzunun azalma hızını yavaşlatarak, daha az staked paketlerden alarak devam edecek ve büyük token sahiplerine staking ödül havuzunun dağıtımı üzerinde daha fazla etki vererek negatif dışsallıkların ortaya çıkmasına neden olacaktır.

Önerilen lineer tasarım, daha az staked paketlerin hem paket destekçileri hem de tea taster'lar için daha çekici hale gelmesine izin verebilir. Ayrıca deneyimli geliştiricilerin, yüksek oranda staked paketlere alternatifler geliştirmeye teşvik edilmesine ve bu da tea topluluğuna mevcut yazılımı destekleme ve yenilikleri teşvik etme fırsatı yaratmasına neden olabilir. Başlangıçta, staking oranı dolaşımdaki arz kullanılarak hesaplanacaktır. Tea topluluğu, sistemin ölçeklenebilirliğini artırmak için bu tasarımı değiştirebilir.

İyi aktörlerin ödüllendirilmesi gerektiği gibi, kötü aktörlerin de tanımlanması ve cezalandırılması gerekmektedir. Açık kaynak yazılım, kötü aktörlerin bir topluluğun tüm geliştiricileri için acı noktalar ve itibar riskleri yaratma fırsatları bulduğu birçok fırsat sunar. Çalışmanın kötüye kullanımından, yazılım paketlerinin değiştirilmesinden ve yeniden dağıtılmasından veya kötü niyetli kodun enjekte edilmesinden, iyi ve kötü aktörler arasındaki savaş devam eder, sıklıkla iyi finanse edilmiş kötü aktörlerin, açık kaynak paketlerinin bulaşmasını finansal olarak fayda sağlama fırsatı olarak gördüğü durumlarla. Dezavantaj, paketlerin dijital raflardan yasaklanması veya kötü bir itibara tabi tutulması olabilir.

Kötü niyetli aktörleri doğrudan ele almak ve açık kaynakın aksine olan eylemlere karşı sonuçları artırmak için, "Üçüncü Taraf İncelemesi" ve "Güncellenmemiş veya Bozuk Paketler" bölümlerinde ayrıntılı olarak açıklanan kesme mekanizmasının uygulanmasını öneriyoruz.

Yeni gönderilen paketlerdeki kodları değerlendiren ve analiz eden tea taster'ların, kötü niyetli kodları tespit etmek ve vurgulamak için araçlar ve teşvikler alması önerilir, böylece

paket kullanıcıları riskler konusunda bilgilendirilebilir ve
paket bakıcıları ve paket destekçileri kötü niyetli kodu göndermek veya desteklemek için cezalandırılır.
Bu açıdan, ağ kurallarına göre gerçekleştirilen ve paket bakıcısı tarafından tanımlanan süre içinde adres gösterilen olumsuz incelemeler için, paket bakıcısının, söz konusu paketin olumlu bir incelemesini sağlayan paket destekçileri veya tea taster'larına karşı herhangi bir ceza almaması gerekmektedir.

Ağ kurallarına göre gerçekleştirilen olumsuz incelemeler ve paket bakıcısının belirli bir süre içinde bunları ele almadığı durumlarda, paketin proje kasasından, paket destekçilerinden ve önceki tea taster'larından yatırılan TEA tokenların bir kısmı kesilecek ve bir kısmı da tea taster'larının hatayı veya zafiyeti belirlediği tea taster'ına gönderilecektir. Kesilen TEA tokenların başka bir kısmı, tea yönetimi tarafından kontrol edilen bir sigorta havuzuna kilitlenecektir. Tea yönetimi, bu havuzun içeriğini etkileyen politika ve kuralları, toplulukla yakın işbirliği içinde belirleyecektir. Protokol, kesilen TEA tokenlarının üçte birlik kısmını, olumsuz incelemeye katkıda bulunan tüm tea taster'larına dağıtacaktır.

Staking ve kesme, tea Protokolü'nün teşvik ve ceza sisteminin hayati bileşenleridir. Paket bakıcıları, projelerinin kasasının bir kısmını staking yapmak zorundadır; böylelikle, hataları veya zafiyetleri ele almamaları durumunda önemli bir risk altında olduklarını belirtirler. Paket kullanıcıları, destekçiler ve tea taster'lar da paket veya paket bakıcısının itibarına katkıda bulunmak için TEA tokenları staking yapabilir ve protokolde yazılım arzının sürdürülebilirliği ve bütünlüğünü korumak için protokole etkin bir şekilde katılabilirler.

Bu aktif katılıma sıkı bir şekilde bağlı olan yönetişimdir. Her bir TEA token için staking yapan katılımcılar, tea Protokolü'nün yönetimine katılma hakkı olmayan transfer edilemez "staked TEA" (stTEA) alır ve bu, protokol kurallarına uyulmaması durumunda staked ödüller ve ilgili stTEA'lar, azaltılma (kesme) veya yeniden dağıtıma tabi tutulabilir, ekosistem içinde hesap verebilirliği güçlendirir.

TEA Token Arzı Dağıtımı
Protokol tarafından oluşturulan TEA tokenların çoğu, açık kaynak projelerinin kod tabanını taşımak ve sürdürmek için teşvik etmek üzere paket bakıcılarına, kullanıcılara ve destekçilere değer sağlayan faaliyetleri gerçekleştirmek için kullanılır. Protokol içindeki çeşitli paydaşlara TEA tokenlarının dağıtımı, bir "dağıtım programı" tarafından belirlenir.

Ağ teşvikleri, açık kaynak projelere kayıt oluşturmak ve sürdürmek için kod tabanlarını sağlamak ve tea DAO aracılığıyla merkezi olmayan oylama ve uzlaşma katkılarına ödüller vermek üzere, doğrudan tea Protokolü tarafından TEA tokenları şeklinde, dört grup paydaşa dağıtılacaktır:

Paket Bakıcıları;
Paket Kullanıcıları (bu, tea topluluğunun tüm üyelerini içerir);
Proje Destekçileri; ve,
Tea Taster'ları.
TEA tokenlarının ayrıca, paketleri desteklemek ve yazılım arzını güvence altına almak için staking yoluyla kullanılacağı, bir paketi denetleme hakkını içerir, hata veya zafiyetleri rapor etme ve tea Protokolünün yönetimine katılma hakkını içerir.

Aşağıda belirtilenler gibi TEA topluluğunun tüm üyelerine 10 milyar maksimum token arzı dağıtılması önerilir:

<figure><img src=".gitbook/assets/Token Allocation-Updated.svg" alt=""><figcaption><p>Şekil 3 - Maksimum arzın token dağıtımı</p></figcaption></figure>
Maksimum token arzının yaklaşık %51.4'ü, "Ekosistem & Yönetişim" için ayrılmalıdır, bu da açık kaynak projelerine giriş yapma ve kod tabanlarını koruma teşviki gibi geliştiriciler için teşvikler ve merkezi olmayan oylama ve uzlaşma katkıları için ödülleri içerir. içinde bunlara cevap vermemesi durumunda, projenin, destekçileri ve önceki tea taster'ların staked TEA tokenlarının bir kısmının kesileceği ve bu kesilen tokenların bir kısmının, bulgu veya zafiyetin tanımlanmasına yardımcı olan tea taster'ına gönderileceği önerilmektedir. Bir başka kısım, tea taster'ların, bulguların tanımlandığı paket bakıcısı tarafından belirtilen süre içinde herhangi bir cevap alamadıkları olumsuz incelemeler için staked TEA tokenlarına zarar vermektedir. Diğer bir kısım, tea yönetimi tarafından kontrol edilen bir sigorta havuzuna kilitlenecektir. Tea yönetimi, toplulukla yakın işbirliği içinde havuzdaki içeriği zafiyetlerden etkilenen kişilere dağıtmak için politika ve kurallar belirleyecektir. Protokol, kesilen TEA tokenlarının üçte birini, olumsuz incelemede katkıda bulunan tüm tea taster'lara dağıtacaktır.

Staking ve slashing, tea Protokolü'nün teşvik ve ceza sisteminin önemli bileşenleridir. Paket bakıcılarının, projelerinin hazinesinin bir kısmını staking yapmak zorunda olmaları, hataları veya zafiyetleri ele almamaları durumunda büyük bir risk altında olduklarını sağlar. Paket kullanıcıları, destekçiler ve tea taster'lar ayrıca TEA tokenlarını staking yaparak bir paket veya paket bakıcısının itibarına katkıda bulunabilir ve yazılım tedarik zincirinin sürdürülebilirliğini ve bütünlüğünü sağlamak için protokolde aktif olarak yer alabilirler.

Bu etkin katılım ile ilgili olan yönetimdir. Her TEA token için staking yapıldığında, katılımcılar, tea Protokolü'nün yönetimine katılmak için kullanılmak üzere 1'e 1 oranında devredilemez "staked TEA" (stTEA) alırlar. Staked ödüller ve bunların karşılık gelen stTEA tokenları, ekosistem içinde hesap kurma hizmetlerine uyulmadığında, azaltma (kesme) veya yeniden dağıtma ile karşılaşabilir, ekosistem içinde hesap verilebilirliği sağlar.

TEA Token Tedarik Dağıtımı
Protokol tarafından oluşturulan TEA tokenların çoğunluğu, açık kaynak projelerin kodlarını başlatmaları ve sürdürmeleri için teşvik etmek için kullanılır. TEA tokenlarının protokol içindeki çeşitli paydaşlara dağıtımı, bir "dağıtım programı" tarafından belirlenir.

Ağ teşvikleri, açık kaynak projelerine katılmalarını ve kodlarını sürdürmelerini teşvik etmek için tea Protokolü tarafından doğrudan TEA tokenları şeklinde dört grup paydaşa dağıtılır:

Paket Bakıcıları;
Paket Kullanıcıları (tea topluluğunun tüm üyelerini içerir);
Proje Destekçileri; ve,
Tea Taster'lar.
TEA tokenları ayrıca, bir paketi desteklemek ve yazılım tedarik zincirini güvence altına almak için staking yoluyla kullanılacaktır, bu da bir paketi değerlendirmek için bir inceleme yapmak ve hataları veya zafiyetleri bildirmek üzere bir paketi zorlama hakkını içerir, kayıtlı projelerin açık kaynak geliştiricilerine ödül vermek ve tea Protokolü'nün yönetimine katılmak için.

Maksimum 10 milyar jeton arzının dağıtılması önerilir:
Paket Bakıcıları: Bir paketin tescili, güncellenmesi ve bakımı için paket bakıcılarına teşvik sağlamak önemlidir. Bu teşvik, açık kaynak ekosisteminin büyümesine katkıda bulunurken, paket bakıcılarının çabalarını değerlendirir.

Paket Kullanıcıları: Paket kullanıcıları, açık kaynak projeleri kullanan tüm üyeleri içerir. Bu kullanıcılar, paketlerin güvenliğini, güncelliğini ve işlevselliğini artırmak için teşvik edilmelidir. Onların katılımı ve güvenilirliği, tea Protokolü'nün sağlamlığı için kritiktir.

Proje Destekçileri: Proje destekçileri, açık kaynak projelerini finanse eden veya destekleyen kişileri ve kurumları içerir. Onların teşvik edilmesi, projelerin sürdürülebilirliğini sağlar ve açık kaynak ekosisteminin büyümesine katkıda bulunur.

Tea Taster'lar: Tea taster'lar, paketlerin doğruluğunu, güvenliğini ve kalitesini değerlendiren deneyimli yazılım geliştiricileridir. Onların katılımı, açık kaynak projelerin güvenilirliğini artırır ve topluluğun güvenini kazanır.

Protokol Geliştirme
Tea Protokolü'nün sürdürülebilirliğini ve gelişimini sağlamak için protokol gelişimine yönelik kaynaklar ayrılmalıdır. Bu, protokolün teknik altyapısının güncel tutulmasını ve ölçeklendirilebilirliğini sağlar.

Erken Destekçiler ve Danışmanlar
Erken destekçiler ve danışmanlar, projenin başlangıcında ve gelişim aşamalarında değerli katkılarda bulunmuş kişilerdir. Onların teşvik edilmesi ve ödüllendirilmesi, projenin ilerlemesini ve sürdürülebilirliğini sağlar.

Özel ve Halka Açık Satış
Özel ve halka açık satışlar, tea tokenlarının dağıtımını sağlar ve projenin finansmanını güvence altına alır. Bu kaynaklar, protokolün gelişimi ve topluluk katılımını desteklemek için kullanılır.

Likiditeyi Destekleme
Piyasadaki likidite, tea tokenlarının geniş çapta benimsenmesini ve kullanılmasını sağlar. Bu nedenle, bir kısmı marketplace likiditesini artırmak için ayrılmalıdır.

Gelecek Çalışmalar ve Potansiyel Topluluk Çabaları
Tea sistemi olgunlaştıkça, topluluğun tea sisteminin değişikliklerini ve uzantılarını belirleme ve katkıda bulunma yeteneğini görmekteyiz. Aşağıda, bazı fikirlerin topluluğu heyecanlandırabileceğini düşündüğümüz bazı fikirler bulunmaktadır, ancak gelecekteki performansı garanti etmiyoruz.


Çay Toptancıları
Açık kaynak yazılım toplulukları canlıdır ve sürekli olarak yenilik yapmak ve değer sunmak için çaba gösterirler. Bu bağlılık ve fedakarlık, sürekli olarak yeni yazılım ve paketler oluşturulmasına yol açar, her biri bağımlılıklar çeker. Sonuç olarak, bağımlılıklar haritasının sürekli olarak evrilmesini ve sık sık staking oranı ve ödüllerde değişikliklere yol açmasını bekliyoruz. Gelecekte, çay topluluğu, her bir projenin staking oranını dinamik olarak izlemek ve projeyi destekleyenlerin TEA tokenlarını kendi kriterlerine göre yeniden dengeliyor olabileceği bir sistem geliştirmeyi önermekte olabilir.

Paket Transferinde Telif Hakkı
Paket bakıcılarının ödül akışını bir veya daha fazla geliştiriciye aktarma kararı verebileceğini kabul ediyoruz. Bu transferin yönetişimi, paket bakıcısı ve ortaklarının kararı olmalıdır ve çaydan müdahale edilmemelidir. Böyle bir transferin tam veya kısmi olması (belki de ödüllerin bir kısmının bir veya daha fazla geliştiriciye yönlendirilmesi, geri kalan ödüllerin ise orijinal paket bakıcısına akması, orijinal paket bakıcısına geri kalan ödüllerin akması veya ödüllerin bir hesaptan, birden fazla hesaba veya otomatik olarak birden fazla hesap arasında statik veya dinamik oranlar kullanılarak dağıtılması) için araçlar sağlanmalıdır.

Ödüllerin Birden Fazla Bakıcı Arasında Dağıtılması
Bir paketin bakımı, bir veya daha fazla geliştirici ekibinin çalışmasına dayanabilir. Ödüllerin akışı başlamadan önce, ekipler arasında değer dağıtımını otomatikleştirmeyi düşünmelidir. Dağıtımın nasıl gerçekleşeceğine bakıcılar kendileri karar vermeli, çünkü kimin ne kadar katkıda bulunduğunu en iyi değerlendirebilirler.

Bunu başarmak için, her bir ekip (veya ekipler) kendi merkezi olmayan özerk organizasyonunu (DAO) kurabilir ve dağıtımı otomatikleştirebilir veya tüm DAO üyelerinin oylarından oluşan bir oya veya sürekli katkıya, başarıyla tamamlanan ödüllerin, vb. zaman tabanlı dağıtımlara dayalı olarak uygun değer dağıtımını belirlemek için daha karmaşık sistemler de uygulayabilir.

Paket "Fork"larının İşlenmesi
Fork'ların temel ve büyük ölçüde kullanılmayan önemli olduğunu düşünüyoruz. Fork'lar, fonksiyonellik, performans, güvenlik ve hatta ilgi açısından rekabet eden paketler geliştirmek için etkili bir araç olabilirler. Ne kadar kullanışlı olursa olsunlar, fork'lar orijinal çabaları tanımalıdır. Gelecekteki çalışmalar veya olası katkılar aracılığıyla, çay topluluğu, fork'ların beyan edilmesini gerektiren bir sistem geliştirebilir, belki de bir proje kaydedildiğinde tespit edilirler. Çay taster'lar tarafından ortaya çıkarılan beyan edilmemiş fork'lar, fork'un hazinesinin bir kısmının kırpılmasına, orijinal paket bakıcısına aktarılmasına veya fork'u ortaya çıkaran çay taster'larına gönderilmesine neden olabilir.

Çalışma Zamanı ve Yapı Bağımlılıkları
Çay, lansmanda Proof of Contribution ödüllerini dağıtırken yapı bağımlılıklarını çalışma zamanı bağımlılıklarından ayırt etmeyebilir. Ancak, çay topluluğu bu ayrımı yapmanın önemli olduğunu düşünüyorsa, çay topluluğu, her bir bağımlılığın kritikliğini ve bunların paketlerin bireysel değerine katkısını hesaba katan bir ödül dağıtım algoritması için iyileştirmeler önermeye hak kazanabilir. Bu öneriler, topluluk kararına göre oylanacak ve uygulanacaktır.

Kullanıma Dayalı Ödüller
Daha fazla uygulama, çay ile kaydedilen projeler kullanılarak inşa edildikçe, topluluk, dağıtımı dışsal onaylanmış veri kümeleri gibi kullanım gibi etkilenen verilere dayandırmak için ödül algoritmasını artırabilir. Ödüllerin dağıtımını etkilemek için mekanizmanın dışsal verilere, örneğin kullanıma dayalı olarak yönlendirilebileceği bir güncelleme düşünülebilir. Bu güncelleme, TEA token ödüllerinin en yüksek kullanıma sahip paketlere daha fazla akmasına izin verebilirken, TEA tokenların staking oranı bölümünün sınırlamalarına saygı duyabilir. Paket bakıcıları, bağımlılıklarının katkılarına göre ödülleri dağıtmak için benzer bir yaklaşımı kullanabilirler. Unutulmaması gereken nokta, çay sisteminde paketler ve bağımlılıklar arasında ödül dağıtımını etkilemek için kullanılan tüm bilgilerin ispat edilebilir güvenilir olması gerektiğidir.

Teşekkürler
Bu beyaz kağıdın var olması, birçok çayseverin desteği ve özverisi olmadan mümkün olmazdı. Yazarlar, bu belgenin içeriği hakkında geri bildirim sağlayan Jacob Heider, Jadid Khan, Josh Kruger ve Shane Molidor'u, teaRank algoritmasına katkıda bulunan Sanchit Ram'ı ve birçok farklı bireyin zamanını gönüllü olarak vererek katkıda bulunduğu kişileri tanımak ister.

Terimler Sözlüğü
Terim	Tanım
Yaprak	TEA tokeninin en küçük birimi. Bir yaprak, bir quintillionth (10^âˆ’18) çay'a karşılık gelir.
Kırpmak	Protokol kurallarına aykırı davranışlara ceza verme eylemi.
Staking	Talebinizi desteklemek ve iddianıza dayanarak ödül (veya ceza) almak için TEA tokenlarınızı kilitleme eylemi.
stTEA	Her staked TEA tokenı için alınan devredilemez "staked TEA" (stTEA) tokenı veya "stTEA". stTEA, çay Protokolünün yönetişimine katılmak için kullanılabilir.
teaRank	Protokolün "Katılımın Kanıtı" algoritması tarafından her projeye atanan dinamik etki puanı.
Referanslar
https://creativecommons.org/licenses/by-sa/4.0/
https://archive.org/details/historyofmodernc00ceru
https://nvd.nist.gov/vuln/detail/CVE-2021-44228
https://www.reuters.com/article/usa-cyber-vulnerability-idCNL1N2SY2PA
https://twitter.com/yazicivo/status/1469349956880408583
https://www.thestack.technology/core-js-maintainer-denis-pusharev-license-broke-angry/
https://www.w3.org/TR/did-core/
https://www.bleepingcomputer.com/news/security/npm-ecosystem-at-risk-from-manifest-confusion-attacks/
https://www.theregister.com/2016/03/23/npm_left_pad_chaos/
https://fossa.com/blog/npm-packages-colors-faker-corrupted/
https://www.lunasec.io/docs/blog/node-ipc-protestware/
https://github.com/dominictarr/event-stream/issues/116
https://blog.npmjs.org/post/163723642530/crossenv-malware-on-thenpm-registry.html
https://www.zdnet.com/article/open-source-software-how-many-bugs-are-hidden-there-on-purpose/
https://threatpost.com/backdoor-found-in-utility-for-linux/147581/
https://www.fbi.gov/news/stories/phantom-secure-takedown-031618
https://www.europol.europa.eu/media-press/newsroom/news/800-criminalsarrested-in-biggest-ever-law-enforcement-operation-against-encryptedcommunication
https://medium.com/intrinsic-blog/compromised-npm-package-event-stream-d47d08605502
https://www.npmjs.com/package/lodash
https://www.npmjs.com/package/chalk
https://www.npmjs.com/package/log4js/
[https://www.bleepingcomputer.com/news/security/npm-ecosystem-at-risk-from-manifest-confusion-attacks
