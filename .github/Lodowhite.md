---
Açıklama: Version 2.1.0
---

# white-paper

## Değer Oluşturdukları Değeri Yakalamak İçin Açık Kaynak Geliştiriciler İçin Merkezi Olmayan Bir Protokol

* Max Howell
* Thomas Borrel
* Timothy Lewis
* Troy Wong

## Özet

Açık kaynaklı geliştiricilerin katkılarına uygun şekilde ödüllendirildiği bir sistem, yazılım tedarik zincirinin sürdürülebilirliğini ve bütünlüğünü artırabilir. Bir merkezi olmayan protokol, itibar ve teşviklerle güvence altına alınmış, değer biriktirmeyi, açık kaynaklı kod tabanlarını bir halk hizmeti olarak sürdüren geliştiricilere kolaylaştırarak, açık kaynaklı ekosistemde gelecekteki yenilik ve büyümeyi teşvik edebilir. Paket yöneticileri, bir Bizans hataya dayanıklı blok zinciri tarafından desteklenen bir kayıt defteriyle projelerini kaydedeceklerdir. Tea Protokolü'nün benzersiz "Katkı Kanıtı" algoritması, her projenin sistem kullanımı ve sağlığına katkısını ve etkisini belirleyecektir. Kayıtlı projeler, katkılarına uygun olarak tea Protokolü'nden ödüller alacak, staking ile güvence altına alınacak, projeler ve katkıda bulunanlar arasında genişleyen bir itibar sisteminden faydalanacak ve açık kaynak ekosisteminin bölgelerini toplulukların dış etkenlerden bağımsız olarak yönetmelerine izin vereceklerdir. Tea Protokolü, açık kaynağın bakımını teşvik ederek, projelerini kaydettiren ve ağın kurallarına uyum sağlayan ağ katılımcılarının ödüller almasına ve itibarlarını ve projelerinin itibarını artırmasına izin verecektir. Güvenlik veya geliştirme sorunları bulunursa, geliştiriciler, pakete karşı delillendirilmiş taleplerde bulunabilir ve kesinti meydana gelebilir. Açık kaynak topluluğunun üyeleri, kalite sorunları için paketleri inceleyebilir ve protokol, bu incelemelere orantılı kesinti olayları gerçekleştirerek yanıt verebilir.

## Uyarı

Bu beyannameye konu bilgiler ön çalışma niteliğindedir. Dolayısıyla, yazarlar veya ilgili herhangi bir ortakları, burada belirtilen bilgilerin nihai veya doğru olduğu konusunda herhangi bir sorumluluk kabul etmez ve burada belirtilen beyannameye ilişkin olarak, uygulanabilir yasaların izin verdiği en geniş kapsamda, herhangi bir ve her türlü sorumluluktan feragat eder. Bu beyanname veya burada yer alan hiçbir şey, herhangi bir sözleşme veya taahhüdün temeli oluşturmayacak veya bağlayıcı olmayacaktır.

Bu beyanname hiçbir tokenin satış teklifi veya satın alma talebini oluşturmamaktadır. Herhangi bir durumda, bu beyanname böyle bir teklif veya talep olarak kabul edilse bile, böyle bir teklif veya talep bu beyanname tarafından yasal olmayan herhangi bir yerde yapılmamıştır veya iletilmemiştir, böyle bir teklif veya talep lisansa veya kayıta tabi olmadığı yerlerde ve böyle bir teklif veya talep kısıtlamalara tabi olduğu yerlerde. Özellikle, burada tartışılan herhangi bir token, bu beyanname yayınlanma tarihinden itibaren, herhangi bir yargı alanının, bu tür tokenleri bir menkul kıymet veya benzeri bir enstrüman olarak kabul edip etmediğine bakılmaksızın, kayıtlı olması veya olmaması amaçlanmamıştır ve ilgili yargı alanının ilgili yasalarının ihlalini oluşturacak şekilde satışa sunulamaz veya satılamaz. Herhangi bir token satın almadan önce, satın alma bedelinin tamamını kaybetmeye hazır olmadıkça satın almayın. Bu yüksek riskli bir satın almadır ve bir şeyler ters giderse muhtemelen korunamazsınız.

## Lisans

Bu belge Creative Commons Atıf-Benzer Paylaşım 4.0 Uluslararası lisansı altında bulunmaktadır.(https://creativecommons.org/licenses/by-sa/4.0/).

## Giriş

Modern internet günümüzde çoğunlukla açık kaynak projelerinden oluşmakta ve başlangıcından beri böyle olmuştur. Açık kaynak projeleri küresel geliştirici topluluklarının işbirliği ile geliştirilir ve sürdürülür ve kod tabanları herkesin kamusal bir yarar olarak kullanabileceği şekilde sunulur. Geçmiş 80 yıl boyunca (genellikle ilk özgür ve açık kaynak yazılım örneğinin 1953 yılında yayımlandığı genel olarak kabul edilir), açık kaynak yazılım, nispeten küçük teknoloji meraklılarının ürünü olmaktan çıkıp, tüm yeniliğin üzerine inşa edildiği altyapıya dönüşmüştür. Açık kaynak yazılımının önemine rağmen, kod tabanını bir kamu hizmeti olarak oluşturan ve sürdüren geliştiriciler, yenilikçi ve sürdürücü olarak yaptıkları büyük katkılara karşılık değiştirilebilir hiçbir ödül almamaktadırlar.

Açık kaynak yazılımının temelini oluşturanın, milyarlarca dolarlık bir endüstri haline gelen kurumsal yazılım olduğu bir gerçektir. Ancak, bu altyapının teşekkürsüz olarak sürdüren bireylere neredeyse hiçbir değer aktarımı yoktur. Ve bununla birlikte, ondan servetler kazanılmış olsa da, açık kaynak yazılımı genellikle bir kamu hizmeti olarak oluşturulur ve sürdürülürken, geliştiricilerin yarattıkları değeri yakalamak için geçerli bir yol bulunmamaktadır.

Günümüz internetinin potansiyelinin, açık kaynak yazılımını sürdürmek için dünyadaki mühendislerin küçük bir yüzdesine tamamen iyilikseverlikten yararlanarak sınırlı olduğuna inanıyoruz. Açık kaynak, genellikle temel bakım sorumluları için anlamlı teşviklerin eksikliği nedeniyle engellenmiş bir sevgi işidir. Açık kaynak geliştiricileri, yaşam giderlerini karşılayan bir iş veya kurumsal yazılımın temelini sürdürme arasında seçim yapmak zorundadır. Teşviklerin eksikliği, gerçekten değerli projelerin potansiyeline hiçbir zaman ulaşmamasına neden olurken, diğerleri yazılımın yaşam döngüsü boyunca bakım eksikliğinden kaynaklanan güvenlik sorunlarından muzdarip olurlar. Açık kaynağın tam potansiyelini açığa çıkarmak için, açık kaynak projelerinin "adil değerini" değerlendirmek için evrensel bir yönteme ve sermaye girişlerini kolaylaştırarak açık kaynak geliştiricilerinin yarattıkları değeri yakalamalarını sağlayacak bir yönteme ihtiyacımız var, tüm bunlar açık kaynağın nasıl geliştirildiği ve kullanıldığı temel prensipleri değiştirmeden.

İşletmeler genellikle açık kaynağı iş modellerinin temeli olarak kullanır ve cömert geliştiricilerin çalışmalarından doğrudan gelir elde ederken aynı zamanda onlara hataları düzeltmek için güvenirler. Açık kaynak kod tabanları, işletmeler için tak-çalıştır temel işlevsellik sunar; ancak, açık kaynak üzerine inşa edilen uygulamalar için yazılım güvenlik açıkları büyük bir risk oluşturabilir. Son zamanlarda yaşanan bir olay, birçok ticari yazılım ve hizmet tarafından kullanılan ve kuruluşlar ve hükümetler tarafından istihdam edilen Log4j adlı bir pakette kritik bir güvenlik açığına işaret ediyor. Kasım 2021'de, Alibaba Group Holding Ltd.(https://www.alibabagroup.com/) 'den bir güvenlik araştırmacısı, Apache Software Foundation'dan bir paket olan ve kuruluşlar ve hükümetler tarafından kullanılan birçok ticari yazılım ve hizmette yer alan CVE-2021-44228(https://nvd.nist.gov/vuln/detail/CVE-2021-44228) numaralı güvenlik açığını rapor etti. Bu açık, Apache Software Foundation'dan en yüksek taban puanını aldı(https://www.apache.org/) . Tenable'ın CEO'su ve Amerika Birleşik Devletleri Bilgisayar Acil Durum Hazırlık Ekibi (US-CERT) kurucu direktörü Amit Yoran, bu güvenlik açığını "son on yılın en büyük, en kritik güvenlik açığı" olarak tanımladı. Panik başladı ve bu paketi sürdüren az sayıdaki gönüllü, başarısızlık nedeniyle kamuoyu önünde eleştirildi. Adaletsizlikle ilgili öfkeyi biraz da olsa giderdikten sonra, sistemler yamalandı. Sonunda, işletmeler ve hükümetler Log4j'nin, iki on yıldır birçok kritik sistemin kullandığı bir paket olduğunu ve bu paketin birkaç gönüllü tarafından sürdürüldüğünü fark ettiler. Bu gönüllüler, endüstri tarafından istismar edilmelerine rağmen harekete geçen ve güvenlik açığını gidermek için gayret gösteren aynı tanınmayan kahramanlardı.(https://twitter.com/yazicivo/status/1469349956880408583)

Maalesef, Log4j sadece bir örnekten ibaret değil. Örneğin, core-js haftada 30 milyon kez indiriliyor ve her Node.js uygulamasının temeli olarak hizmet veriyor. Ancak, bu proje de ciddi şekilde yetersiz finanse edilmekte ve başlıca bakıcısının projeyi terk etmeyi veya hatta lisansı kapalı kaynaklı hale getirmeyi düşünmesine neden olabilir. Son zamanlarda, birkaç Bitcoin Core geliştiricisi, katkıları için yetersiz maddi tazminatın yanı sıra diğer nedenleri de göstererek istifa etti.

Açık-kaynağı destekleme girişimlerinde sponsorluk ve ödül sistemleri gibi pek çok deneme oldu. Sponsorluk, açık-kaynağı tüketenlerin desteklemek istedikleri projelere bağış yapmasını sağlar. Ancak, açık-kaynağı bir kule tuğlaları yığını olarak düşünün; alt katmanlar uzun süredir unutulmuş olsa da hala özverili mühendisler tarafından sürdürülüyor ve daha da fazla geliştirici tarafından güvenle kullanılıyor. Genellikle kuledeki projeler sadece bilinen ve destek alan en üstteki projelerdir. Bu önyargılı seçim, kuleyi ayakta tutan temel tuğlaların hiç bağış almadan kalmasına neden olurken, favorilerin ihtiyaçlarından daha fazlasını aldığı görülüyor. Ödüller, projelerin kendi çıkarlarına olmayan şeyleri yapmak için teşvik edilmesini sağlamak için projelerin tüketenlerinin belirli özelliklerin geliştirilmesi için ödeme teklif etmesine olanak tanır, bu da yine yalnızca favorilerin ödüllendirilmesine neden olur.

Tea'da, açık-kaynak topluluğunu desteklemek için yapılan bu başarısız denemelerden muzdarip çok sayıda açık-kaynak projesine şahit olduk ve açık-kaynak geliştiricilerinin yarattıkları değeri yakalamalarını sağlayarak yazılım tedarik zincirinin sürdürülebilirliğini ve bütünlüğünü artırmak misyonumuz haline geldi.

Bu belgede, her açık-kaynak projesine genel ekosistemle ilgili olarak "Katkı Kanıtı"nı hesaplayıp atayan, açık-kaynak yazılım projelerinin iyi bir şekilde bakımlı olduğundan emin olan, açık-kaynak geliştiricilerini ekosistem genelindeki katkılarına orantılı olarak adil ödüllerle güçlendiren ve tea kayıt defterindeki her girişte tea teşvik algoritmasının uygulanması yoluyla bunu başaran ve ağ katılımcılarını güvenlik açıkları ve hatalar için sorumlu açıklama uygulamalarını takip etmeye teşvik eden merkezi olmayan bir sistem olan tea'yi öneriyoruz.

## Bileşenler

Bir uygulama geliştiren yazılım geliştiricisi dört şeye ihtiyaç duyar: bir tarayıcı, bir terminal, bir düzenleyici ve bir paket yöneticisi. Bunlardan dördü arasında, paket yöneticisi geliştiricinin ürününü oluşturmak için ihtiyaç duyduğu araçları ve çerçeveleri kontrol eden bileşendir. Bu katman, açık kaynağın nasıl güvence altına alındığı ve ödüllendirildiğinin nasıl değiştirilebileceğini gördüğümüz yerdir.

## Paket Yöneticisi

Paket yöneticisi, bir paketin veya uygulamanın işlev görmesi için açık kaynak yazılıma neye bağımlı olduğunu en tepeden en tabana kadar bilir. Her proje, her paketlenmiş sürümle birlikte, tüm temel bileşenleri ve bunların karşılık gelen sürümlerini titizlikle belgeler.

Paket yöneticisi, kulenin en üstünün bağımlılıklarını dikkatlice seçtiğini ve bu dikkatli seçimin devam ettiğini bilir. Paket yöneticisi, gerçek dünya katkılarına dayalı otomatik ve hassas değer dağıtımını mümkün kılmak için geliştirici araç yığınında benzersiz bir konumda bulunmaktadır.

Tea Protokolü'nün benzersiz "Katkı Kanıtı" na dayalı değer dağıtımını tasarlanmış değişmez merkezi olmayan bir kayıt defteri öneriyoruz. Bu algoritma, her proje katkısını ve sistemin kullanışlılığı ve sağlığına olan etkisini belirleyen bir algoritmadır. Değer, temel kütüphaneler gibi zirve noktalardan grafikte girebilir ve kayıt defteri tüm açık kaynak grafiklerini bildiği için bu paketlerin bağımlılıklarına ve bunların bağımlılıklarına kadar dağıtılabilir.

Ayrıca, protokolün Katkı Kanıtı tarafından sağlanan bilgilerin, geliştiricilerin bir projeye ve yazarına güvenip güvenemeyeceklerini değerlendirmek için kullanılabilir olması gerektiğine inanıyoruz. Bu bilgiler, itibara, topluluk övgülerine, merkezi olmayan kimlik sistemlerinden ("DID") alınan verilere, diğer paket yöneticilerine veya ağ katılımcılarının değeri riske koymasına dayanan teşvik mekanizmalarına dayanabilir.

Tea'nın araçlar, bilgi ve ödüller kombinasyonunun, geliştiricileri adil bir şekilde teşvik ederek yazılım tedarik zincirini güvence altına alacağını, açık kaynak yazılımın büyümesini teşvik edeceğini ve yeniliği teşvik edeceğini öngörüyoruz.

### Merkezi Olmayan Kayıt Defteri

Her paket yöneticisinin kendi paket kayıt defteri vardır ve aynı meta verileri tekrar tekrar çoğaltır. Bazı durumlarda, bu kayıt defteri, proje manifestosundan farklı bilgiler içerebilir, bu da kötü niyetli kişilerin kullanıcının haberi olmadan zararlı kodları enjekte etmesine olanak tanır. Artık, bu kaynağı kullanan topluluklar tarafından tasarlanan ve yönetilen tek, kapsamlı ve kesin bir kayıt defterinin olması gerektiği zaman geldi. Bu merkezi olmayan, değiştirilemez kayıt defteri güvenlik, kararlılık sağlayabilir ve kötü niyetli niyetleri önleyebilir.

İnternet, on binlerce hayati açık kaynak bileşeni üzerinde çalışır. Şimdiye kadar, temel açık kaynak altyapısının kaldırılmasından kaynaklanan olaylar minimal olmuştur. En ünlüsü, 2016'da bir NPM left-pad bağımlılığının kaldırılması olayı idi ve bu olay, sürekli entegrasyon ve sürekli dağıtım sistemlerine yayıldı, geliştiricileri günlerce mağdur bıraktı. Bu olay, İnternet'in kendisinin gelişigüzel geliştirme sistemlerine dayandığını gösterdi. Diğer örnekler, popüler paketlerini sabotaj etmek için paket bakıcılarının aktif veya kasıtlı katılımını içerir (Bkz. colors.js ve faker.js, ayrıca node-ipc), veya kötü niyetli aktörlerin paketleri sürdürmek için yardım etmiş gibi görünerek bunları bozması ve örneğin Bitcoin özel anahtarlarını çalmak için bunları bozması (Bkz. event-stream), veya kasıtlı yazım hataları olan kötü niyetli paketler, ayrıca "typosquatting" olarak da bilinir, bunlar, kullanıcıları bunları yüklemeye ikna etmeye çalışarak yapılmıştır, örneğin crossenv vs. cross-env NPM paketleri.

Yazılım bütünlüğü, dijital varlıkların yazılımın bir parçası olduğu bir geleceğe doğru ilerlerken garanti altına alınmalıdır. Yazılımı değiştirebilecek kötü niyetli aktörlerin bizi savunmasız bırakmaya devam edemeyiz.

Çoğu paket yöneticisinin, bu uygulamalara ve dApps'e yerleştirilen paketlerin, orijinal yazarları tarafından yayınlanan değiştirilmemiş açık kaynak kodları olduğunu garanti edememesi şaşırtıcıdır. Microsoft’un GitHub'ı, yazılımlardaki zafiyetlerin %17'sinin kötü niyetli amaçlar için ekildiğini bulmuştur, bazıları uzun süreler boyunca tespit edilememiştir (Bkz. Webmin 1.890).

Kötü niyetli aktörleri ortaya çıkarmayı ve iyi niyetli olanları ödüllendirmeyi amaçlayan bir itibar sistemi tarafından desteklenen ve teşvik edilen küresel merkezi olmayan bir kayıt defteri, geliştirici topluluklarının yazılım tedarik zincirini güvence altına almak için aradıkları güvenceleri sağlayabilir.


## Depolama Sistemi

Açık kaynak projeleri geniş bir işlev yelpazesi sunar, bunların bazıları kısıtlı veya istenmeyen olabilir. Şifreleme bunun mükemmel bir örneğidir. Şifrelemenin kritik bir kullanım durumu, dünya çapında bireylerin gizliliğini desteklemektir. Ancak, şifreleme aynı zamanda kötü niyetli amaçlar için de kullanılabilir (bkz. Phantom Secure, Mart 2018'de kolluk kuvvetleri tarafından ortadan kaldırıldı) veya yasal yürütmeyi desteklemek için tehlikeye atılabilir (Bkz. Operation Ironside (AFP), Operation Greenlight (Europol) ve Operation Trojan Shield (FBI) FBI'ın "şifreli" bir iletişim platformu olan AN0M'u işlettiği ve suçluları "şifreli" telefonlarını güvenli iletişim için kullanmaya ikna ettiği yerlerde).

Şifrelemenin geniş uygulamaları, açık kaynak yazılımlar için mükemmel bir kullanım durumu olmuştur ve paketleri depolayan herhangi bir çözümün müdahaleye dayanıklı ve sansürsüz olması gerektiğinin harika bir örneğidir. tea, paketleri işlevlerine göre filtrelemeyi veya yaptırım uygulamayı amaçlamayan merkezi olmayan bir protokoldür. tea yönetimi, kanıtlanmış kötü amaçlı paketleri kaldırmayı seçebilir (daha fazla bilgi için yönetim bölümüne bakınız), ancak paket bakıcıları, paketlerini güvenli bir şekilde depolamak ve dağıtmak için en uygun depolama sistemini seçebilirler.


## Protokol Genel Bakışı

Açık kaynak katkılarını ödüllendiren bir protokol tasarlamak ciddi zorluklar sunar. Evrensel olarak erişilebilir olan açık kaynak yazılım, yanlış atıf, mülkiyet alma ve kötü niyetli değişikliklere maruz kalabilir. Ancak, açık kaynak topluluğu, iyi aktörleri vurgulama ve kötü aktörleri ortaya çıkarma konusundaki istekliliğini sürekli olarak göstermiştir. Tarihsel olarak, diğer geliştiricilerin katkılarını inceleme ve yorumlama için harcanan enerji kesinlikle gönüllü olmuştur, bununla birlikte bulguların bildirilmesi ve savunulmasının ne kadar zaman alıcı ve önemli olabileceğine bakılmaksızın.

Açık kaynak geliştiricilerin yarattıkları değeri güvenilir bir şekilde yakalamalarına olanak tanıyarak yazılım arz zincirinin sürdürülebilirliğini ve bütünlüğünü artıran, üne dayalı ve teşviklerle güvence altına alınmış merkezi olmayan bir protokol oluşturmayı amaçlıyoruz. Açık kaynak katkıları için yeterli ödüllerin, hem bir itibar sistemi hem de topluluğun bir projeyi veya bir geliştiricinin çalışmasını desteklemek (veya karşı çıkmak) için bulgularını iletebilme yeteneği olmadan başarılı olamayacağına inanıyoruz. Ayrıca, geliştiricilere bu itibar sistemine erişim sağlayacak araçlar sunmalıyız. Bu araçlar, projelerindeki tüm bağımlılıkların sürüm ve itibarına basit görsel ve programlanabilir erişimi içermelidir.

Topluluk üyelerinin her projeyi desteklemek için TEA token'larını yatırdığına dair şeffaflık, her projenin itibarını artırır, paket bakıcısının kendi çalışmasına ne kadar yatırım yaptığını gösteren token sayısı da bunun belirtilerinden biridir. Bu birleşik veri noktaları, tüm topluluk üyeleri için bir itibar sistemi oluşturmak ve seçim yapmayı kolaylaştırmak için bilgi sağlayacaktır. Event-stream paketi hack paketin kendisi aracılığıyla gerçekleştirilmedi, ancak bağımlılıklarından biri aracılığıyla gerçekleştirildiğinden, güvenilmez sistemini oluşturmak için bağımlılıkların tüm katmanlarında görünürlük hayati öneme sahiptir. Ancak, hesaplama ve işlem ("gas") maliyetleri gibi düşünceler, sistem tasarlandığı ve inşa edildiği sırada öncelikli olacaktır.

Amacımız, hem Web 2.0 hem de web3 geliştiricilerini ödüllendirmektir. Her bir yığının karmaşıklıkları ve özellikleri, paketlerin kurulumlarının takibinin kolayca bir veya daha fazla kötü aktörün kurbanı olabileceği anlamına gelir. Bu, kurulumları yapay olarak şişirmek için "satın alma" işlemlerini içerir. Daha da kötüsü, lisans anahtarları veya diğer dağıtım izleme mekanizmalarıyla gereksiz sürtünme yaratılarak açık kaynak yazılımın doğasında temel değişiklikler yapılabilir. En geniş kapsamı sağlamak için, ödüllerin kurulumları izlemenin basit bir kavramına dayanmaması, ancak kaliteli paketlerin sunulmasını ve kötü amaçlı veya yüksek riskli paketlerin bildirilmesini teşvik eden teşvik mekanizmalarına dayanması gerektiğine inanıyoruz. Son olarak, birçok paket ortak bağımlılıklara dayanır. Örneğin, lodash 176.308 açık kaynak bağımlıya sahipken, chalk 100.247 bağımlıya ve log4js 3.809 bağımlıya sahiptir. Aynı bağımlılıkları kullanarak daha fazla paket oluşturulduğunda, ödüllerin adil ve eşit bir şekilde dağıtılmasını nasıl sağlarız? En çok kullanılan bağımlılıkların ödüllendirilmesini nasıl sağlarız, ancak yeni veya gelişmekte olan paketleri ve geliştiricileri aç bırakmaz? İncelikli dillerden geliştiricileri teşviklerin daha iyi olduğu yerlere yönlendirmeyi nasıl önleriz? Ancak geliştiriciler olarak, bağımlılıkların en çok bağımlı olanları nasıl belirleriz ve bunların alternatiflerini oluştur.

### Katkı Kanıtı

Bu beyaz kağıtta, tüm açık kaynak sistemlerindeki tüm projelerin etkisini nicelendirmek için tasarlanmış yeni bir fikir birliği mekanizması olan "Katkı Kanıtı"nı öneriyoruz.

Katkı Kanıtı, her bir açık kaynak projesinin zaman içinde geniş açık kaynak ekosistemi içindeki konumuna dayalı olarak dinamik bir puan olan bir proje için çaySıralaması adı verilen bir puan atar.

Bu yaklaşımın, genellikle halka en fazla görünür olan ve en çok ilgi çeken uygulama katmanından çok uzak olan temel yazılımlara fayda sağladığını ve tüm bir projenin bileşenlerinin (en üstten başlayarak, en altına kadar) katkıları için ödüllendirme mekanizmasını genişlettiğine inanıyoruz.

Her proje puanını hesaplamak için, çaySıralaması Google'ın PageRank algoritmasının üzerine inşa edilmiştir. Google'ın PageRank'i, arama ürününün belirleyici bileşenidir ve web sayfalarının grafik benzeri yapısı üzerine inşa edilmiştir. PageRank, temelde, bir grafiğin düğümlerine (veya web sayfalarına) rastgele gezinen her şeyin belirli bir düğüme ulaşma olasılığını temsil eden puanlar atayan bir olasılık dağılım algoritmasıdır. Bu algoritma, internet gibi bir grafik benzeri veri yapısında özellikle etkilidir çünkü her düğümün etkisini (veya web sayfasını), ona giden kenarların (bağlantıların) miktarı ve kalitesi temelinde nicelendirir. Bu algoritma, zaman içinde web'in topolojisini daha iyi ayırt etmek ve web sayfaları arasındaki sahte bağlantıları tanımlamak için değiştirilmiştir, bu da çeşitli saldırıların hafifletilmesine olanak tanımıştır.

İnternetin grafik yapısı ve çay Protokolü'nün merkezi olmayan kaydı arasında dikkate değer benzerlikler olduğundan, başlangıçta PageRank analizi için umut verici bir yaklaşım gibi görünüyordu. Ancak, daha fazla deney yapıldıktan sonra, PageRank'in istenmeyen postalara uygulandığında, açık kaynak üzerindeki etkinliği daha az etkili olduğu açık hale geldi.

Anahtar fark, açık kaynak yazılım meta verilerindedir. Web sayfalarının aksine, çoğu açık kaynak paketi meta verileri, kod satırları ve commit mesajları gibi kullanıcı tarafından oluşturulan ve sahteleştirilebilen verilerdir. Paket yöneticileri, kötü niyetli aktörlerin, balık avlama bağlantıları veya diğer zararlı içerikler içeren paketlerle kaydı doldurduğu istenmeyen postalara karşı savunmasızdır. Paket yöneticisi kayıtları ayrıca belirli projelerin bağımlılıklarını yanlış şekilde yansıtabilir. Bu sorun, "manifest karmaşası" olarak bilinir ve kötü niyetli kod enjekte etmeye veya üçüncü taraf bağımlılıkların etkisini yapay olarak artırmaya olanak tanır, genellikle kötü niyetli amaçlarla.

Spam paketlerinin tanımlanması ve izole edilmesi ve yalnızca etkili projelerin adil bir ödül almasının sağlanması için özel olarak tasarlanmış bir algoritma olan Katkı Kanıtı, açık kaynakta spam saldırılarıyla mücadele etmek için ölçeklenebilir bir çözüm sunan güvenilirlik ve teşviklere dayalı bir sistemdir. Katkı Kanıtı algoritmasının ayrıntıları, ayrı bir teknik makalenin konusu olacaktır.



### Network Participants

Bu beyaz kağıtta, katılımcıları katkılarıyla ayırt ediyoruz. Bazıları kod ekleyebilir veya eklenen kodu doğrulayabilir. Diğerleri geliştiricilere ve onların itibarına destek olabilir.

Paket Bakım Uzmanları
tea, paket oluşturucuların kendi çalışmalarını sürdürdüklerini varsayar. Bu beyaz kağıtta, onlara "paket bakım uzmanları" olarak atıfta bulunacağız.

Paket bakım uzmanları, endüstri evrildikçe yazılımlarının artan değer sağlamaya devam ettiğinden emin olmalıdır. Açık kaynak topluluklarının direkleridir ve sürekli katkıları için güçlendirilmeli ve ödüllendirilmelidirler. Ancak, bir paket bakım uzmanı, bakım çabalarını sona erdirme veya projenin kullanıcılarının beklentilerine uygun bir hızda çalışamayacaklarını fark edebilir. Sürekliliği sağlamak için, projelerini başka bir geliştirici veya geliştirici grubuna kontrolünü devretme yeteneğine sahip olmalıdırlar, böylece onları bakımcı olarak atayarak, projeye ilişkin mevcut ve gelecekteki ödüllerin sahipliğini ve kontrolünü verirler.

Benzer şekilde, bir geliştirici, mevcut projeyi çatallayarak ve yeni bir proje kaydederek (kaydederek) paket bakım uzmanı olmayı seçebilir ve böylece paket bakım uzmanı olabilir. Kaydedildikten sonra, çay Sıralaması, bir yönetim tarafından tanımlanan eşik değerini aşan projeler, çay Protokolü'nden ödül almaya başlar, bu da protokolün Katkı Kanıtı algoritması aracılığıyla eski çatal projeye paralel olarak. Açık kaynak topluluğu, eski projeden daha yeni bir versiyon lehine kaydırıldıkça, Katkı Kanıtı algoritması, eski projeye ayrılan ödülleri aşamalı olarak azaltırken, yeni çatallı projeye atananları artırır.

Geliştirici topluluklarının, hangi projelerin bakıldığını ve geçmiş ve mevcut bakımcıların itibarını ve çalışma kalitesini belirlemelerine yardımcı olacak doğru araçları sunmak çok önemlidir. Açık kaynak çalışmalarının kötü niyetli kişiler tarafından değiştirildiğini ve birçok kişinin çabalarının mahvolduğunu çok sık gördük. Bu kötü niyetli kişilerin çalışmaları genellikle keşfedilse ve çözülse de, genellikle önemli miktarda maddi veya veri kaybı yaşanana kadar değil. Örneğin, event-stream npm paketi, haftada 1,5 milyondan fazla indirilmiş ve 1.500'den fazla paket tarafından güvenilmiştir. Bir hacker, açık kaynak projeye sızmış, orijinal yazarının güvenini kazanmış ve event-stream'i bir üçüncü taraf sunucusuna Bitcoin cüzdanı kimlik bilgilerini çıkarmak için kullanacak kötü niyetli bir pakete bağımlı hale getirene kadar bu paketi değiştirmeyi başardı. Bu tür saldırıların bazılarını tespit etmeye yardımcı olabilecek araçlar olabilir, ancak her zaman güvenilemezler, bu da bir topluluğun birbirlerine olan özenine ve bulgularını paylaşma isteklerine bağımlı bir topluluğa neden olur.

"Açık-kaynak topluluklarının bulgularını yapıcı bir şekilde bildirmelerini teşvik etmek için, "TEA token" bölümünde tanımlanan TEA jetonu aracılığıyla teşviklerin tanıtılmasını öneriyoruz, böylece paket yöneticileri bunları istismar edilmeden önce ele alabilir."


### Proje Destekçileri

Web 2.0 ve web3'te, genellikle "sponsorlar" olarak adlandırılan bir paket kullanıcılarının alt kümesi, paket yöneticilerini bağışlar veya diğer tazminat biçimleri ile desteklemeyi seçmiştir; ancak, bu nadiren gerçekleşmiştir.

Bu "proje destekçileri", ticari ürünlerini oluşturmak için açık-kaynak yazılımını kullanan kuruluşlar veya açık-kaynak proje kullanıcıları, ekosistemi desteklemek isteyen hayırseverler veya daha büyük bir sistem bileşenlerini geliştirmek için ekipleri fonlamak isteyen girişimcilerdir.

tea, açık-kaynak proje destekçileri topluluklarını tüm tea topluluğuna, kuruluşlara, geliştiricilere, kullanıcılara veya teknoloji tutkunlarına genişletmeyi önermektedir. tea'nın amacı, tea topluluğunun her üyesinin açık-kaynak yazılımın sürekli sürdürülebilirliğine ve sürekli büyümesine katkıda bulunması için TEA jetonunun benzersiz kullanım durumları aracılığıyla merkezi olmayan teşvik mekanizmaları uygulamaktır. Proje destekçileri, çalışmalarına, inançlarına veya kararlarını etkileyecek herhangi bir kriter ve ölçüte dayalı olarak hangi projeleri veya paket yöneticilerini desteklemek istediklerine karar verebilirler. Ayrıca, proje destekçilerinin bu projeleri nasıl desteklemek istediklerine karar vermekte özgür oldukları vurgulanmaktadır.

Sponsorluk, açık-kaynak geliştirmeyi desteklemek için etkili bir sistem olabilir; ancak, bu sponsorlukların genellikle tüm bağımlılıklara uzanmadığı görülür. Bu kısıtlama, favorilere ve inovasyona ve yazılım oluşturmaya engel olur. Yazılım geliştirmenin temeli olarak başarılı olmak için, açık-kaynak tüm geliştiricilere, başlangıç seviyesindeki veya uzmanlar dahil, kuledeki tüm katmanlarda güç vermelidir.

Yazılım tedarik zincirinin sürdürülebilirliğini ve bütünlüğünü güçlendirmek ve açık-kaynak geliştiricilerin oluşturdukları değeri yakalamalarını sağlamak için, tea, desteklemenin bir projenin tüm yönlerine fayda sağladığı mekanizmaları oluşturmayı amaçlamaktadır. Destekçilerin desteği, bir projenin bağımlılıklarına, ağacın en üstünden en altına kadar yayılacaktır. Bu, paket yöneticisinin yığını hakkında bilinçli seçimler yapma yeteneğine güven duyulduğunu ima eder ve dolayısıyla onların itibarını artırır.


#### Çay Uzmanları

Yeni projeler veya mevcut projelerin yeni sürümleri piyasaya sürüldüğünde, çalışmanın geçerliliği kanıtlanabilir bir şekilde gösterilmelidir. Bu bilgi, paket kullanıcılarının pakete ve bakımını yapanlara güvenip güvenemeyeceklerine karar vermeleri için hayati öneme sahiptir. Çay Protokolü içinde, bu işlev "çay uzmanları" tarafından sağlanır.

Çay uzmanları genellikle, bir paketle ilgili iddiaları (işlevsellik, güvenlik, anlamsal sürümleme, lisans doğruluğu vb.) kontrol etmeye ve araştırmalarının sonucunu göstermek ve incelemelerini desteklemek için itibarlarını ve TEA jetonlarını riske atmaya istekli deneyimli yazılım geliştiricilerdir. Çay Protokolü'nde, "çayınızı yatırmak", incelemelerinizi desteklemek için TEA jetonlarını kilitleme sürecidir ve bu, incelemelerinizin kalitesi hakkında alınan fikirlere dayanarak ödüller kazanmanıza veya cezalara maruz kalmanıza yol açabilir. Çay uzmanları ayrıca, paket yöneticilerine gizlice hata veya güvenlik açıkları bildirme seçeneğine sahiptir. Geçerli raporlar, projenin kasasından ödüller alırken, geçersiz raporlar çay uzmanının yatırımının kaybına neden olur. Son olarak, paket bakımcıları bu rapor edilen sorunları görmezden gelirse, projenin kasası için cezalar veya "kesim" tetiklenir.

Proje destekçileri gibi, çay uzmanları da bir projeyi ve paket bakımını daha büyük bir ölçüde etkileyebilir; ancak, güvenliğin, işlevselliğin ve kalitenin doğrulanmasındaki rolleri nedeniyle etkileri daha önemlidir. Çay uzmanlarının iddialarını desteklemek için itibarlarını inşa etmeleri gerekecek. Her çay uzmanının, incelemelerini desteklerken risk altına attığı TEA jetonlarının kalitesi ve miktarı ile diğer dış veri kaynakları bir araya gelerek çay uzmanının itibarını oluşturacak ve çalışmalarına daha fazla değer katacaktır. Bir projenin ve paket bakımının itibarını nasıl etkileyeceklerine dair daha fazla ayrıntı için "Paket ve Paket Bakımı İtibarı" bölümüne bakın.


### Proje Kaydı ve Katkı Kanıtı Ödülleri

Bir proje sürümünün kaydı atomik olarak birden fazla işlemin gerçekleşmesini gerektirir. Özellikle:

Paket bakıcısı proje kaydını merkezi olmayan kayıt defterine kaydetmelidir,
Çay Protokolü, paket bakıcıları tarafından belirlenen kurallara göre sahipliği, kontrolü ve yapılandırması olan bir proje hazinesini oluşturmalıdır, ve
Çay Protokolü, hazineye özgü ismi Ethereum İsimlendirme Servisi veya ENS ile kaydetmeli, böylece tüm kullanıcı etkileşimlerini hazineyle basitleştirmelidir.
Herhangi bir işlemin başarısız olması, protokolün önceki durumuna geri dönmesine neden olur.

Bir projenin belirli bir yönetim tarafından tanımlanan bir eşiği aşan bir çay sıralaması ile başarılı bir şekilde kaydedilmesi durumunda, çay Protokolü, Katkı Kanıtı ödüllerinin projenin hazinesine dağıtımını başlatır. Bu ödülleri, çay Protokolü tarafından kontrol edilen ve TEA tokenlarının toplam arzından tahsis edilen önceden belirlenmiş bir havuzdan belirlenen bir eğriye göre dağıtmayı öneriyoruz.

Paket bakıcıları, projenin hazinesi tarafından alınan Katkı Kanıtı ödüllerinin bir kısmını sürekli olarak riske atmaları gereken proje itibarını ve güvenilirliğini artırmak zorundadır. Her jeton için bir jeton yatırmak, ağ katılımcılarının çay Protokolü'nün yönetimine katılması için bir 1:1 oranında aktarılamaz "yatırılmış TEA" veya stTEA alacakları anlamına gelir. Protokolün kurallarıyla uyumlu olarak, bu yatırılan ödüller ve bunların karşılık gelen stTEA'sı, paket bakıcıları hataları veya güvenlik açıklarını ele alamazlarsa azaltılmaya ("kesilme") veya yeniden dağıtılmaya maruz kalabilir.

Son olarak, yönetim kurallarında tanımlanan minimum yatırılmış hazine oranını koruyamama durumunda, Katkı Kanıtı ödül dağıtımının projeye askıya alınmasıyla sonuçlanır. Bunun yerine, bu ödüller uyumlu projeler arasında yeniden dağıtılacaktır.

Paket ve Paket Bakıcısı İtibarı
Yazarın ekonomik katkısına dayalı olarak sadece bir itibar sistemi, yeterli kullanıcı koruması sağlamaz ve bir kişinin kendisini birden çok temsil olarak oluşturarak işlerine büyük bir pozitif inceleme hacmi bırakmasına olanak tanıyan Sybil saldırılarına maruz kalabilir.

Sybil saldırılarını önlemek için birkaç metodoloji bulunmaktadır, bunlardan bazıları Nitish Balachandran ve Sugata Sanyal tarafından "Sybil Saldırılarını Hafifletme Tekniklerinin Bir İncelemesi" adlı çalışmada açıklanmıştır. Çayın merkezi olmayan bir protokol olması nedeniyle, merkezi bir sertifika verme yetkisine dayanan bir güven sertifikası sistemi kullanmak, çekirdeğine aykırı olur. Sybil saldırılarının önlenmesine odaklanmak ve daha spesifik olarak, her paketin ve onun bakıcısının itibarını değerlendirmek ve kamuoyuna temsil etmek için teşvik edilen geniş bir ağ katılımcısı grubuna dayanan metodolojilere odaklanmayı öneriyoruz.

Bir blok zincirinin ispatı-öz sermaye modelinde blokların üretimine benzer şekilde, üretmeyen düğümler diğerlerinin işlerini doğrulayabilir ve gerektiğinde ağın kurallarını ihlal eden bir ihlali belirterek kötü aktörü cezalandırabilir. Bir protokol veya belirli paketlerin itibarını etkilemek için büyük token sahiplerinin büyük ölçüde etkili olmasını önleyen bir sistemi öneriyoruz. Bu yaklaşımın, daha yaygın benimsenmeyi, güveni ve sonuç olarak çayın büyümesini kolaylaştırabileceğine inanıyoruz.

Ek olarak, çay topluluğu üyelerinin herhangi birinin itibarı belirli kilometre taşlarına ulaştığında, protokolün yükseltilmiş kısımlarına erişim sağlanabilir.


### Üçüncü Taraf Tarafından Paket İncelemesi

Üçüncü taraflar tarafından yapılan paket incelemesi, itibar oluşturmanın ve yazılım tedarik zincirinin güvenliğinin önemli bir bileşenidir. Ancak, üçüncü taraf incelemeleri, yukarıda bahsedilen Sybil saldırıları da dahil olmak üzere kendilerine özgü benzersiz tehditlerle gelmektedir.

Bloğ zinciri teknolojisi ve daha açık bir şekilde staking, çayın bu zorluğun üstesinden gelmesi için eşsiz bir fırsat sunar. Cüzdan adresleri sonsuz miktarda mevcut olabilirken, TEA tokenlarının toplam arzının 10 milyar olması beklenmektedir. Ayrıca, geliştiriciler tarafından gönderilen, doğrulanan veya paketleri stakelama gibi her bir eylemin, geliştiricilerin itibarına katkıda bulunacağını ve böylece her geliştiricinin çay topluluğuna katkıda bulunmak ve çayın yönetimine katılmak için kullanabileceği benzersiz bir profil oluşturacağını unutmamak önemlidir.

Üçüncü taraf inceleyicilerden TEA tokenları stakelamalarını ve ağın çıkarlarına karşı davranmaları veya kötü bir aktör olmaları durumunda bir kısmını kaybetme riskini almalarını isteyerek, üçüncü taraflar bir pakete ek bir güvenilirlik sağlayabilir ve TEA tokenları şeklinde ödül alabilirler.

Ayrıca, bağımsız doğrulama yapan üçüncü tarafları da kapsayan bir itibar sistemi oluşturmayı öneriyoruz - çay tadımları. Pozitif bir incelemenin tamamlanması, iki işlemin atomik olarak gerçekleşmesini gerektirecektir:

Çay tadımcısı tarafından imzalanan ve topluluğun tüm üyelerinin erişimine açık olan kod incelemesinin sunulması,
İncelemelerini belgelemek için paketin stakelenmesi.
Bir veya daha fazla kritik güvenlik açığı içeren negatif bir incelemenin tamamlanması, çay tadımlarının önce paket bakıcısına bir mesajlaşma protokolü kullanarak güvenlik açığı hakkında bilgi vermesini ve bu sorunu zamanında ele almalarına izin vermesini gerektirecektir. Paket bakıcısına belirli bir süre tanınır ve bu süre içinde güvenlik açıklarını ele almaları veya düzeltilmiş bir paket sunulduğunda, aynı mesajlaşma protokolü, bu paketin (bağımlılıklar dahil) kullanıcılarına ve testçilerine bir güvenlik açığı tespit edildiğini ve umarız ele alındığını bildirmek için kullanılacaktır. Geliştiricilerin zamanını boşa harcamayı önlemek için, çay tadımcıları ile paket bakıcıları arasındaki iletişim, çay tadımcılarının TEA tokenları stakelamasını gerektirecektir.

Her iki işlemi tamamladıktan sonra, çay tadımları, belirli bir paket ve paket sürümü üzerinde yaptıkları çalışmanın bir kanıtı olarak bir NFT alacaktır. Biriken NFT'lerin, incelenen her bir paketin staking oranı ve harici sistemlerden çıkarılan bilgilerin birleşimi, bir çay tadımcısının itibarını bilgilendirecektir. İtibarları belirli kilometre taşlarına ulaştığında, çay tadımları protokolün yükseltilmiş bölümlerine veya protokol tarafından hızlandırılmış ödüllere erişim kazanabilir, çayın yönetimi tarafından kararlaştırıldığı gibi.


## Güncelliğini Yitirmiş veya Bozulmuş Paketler

Tea'nın misyonu, açık kaynaklı geliştiricilerin oluşturdukları değeri yakalayarak yazılım tedarik zincirinin sürdürülebilirliğini ve bütünlüğünü artırmaktır; ancak, ödüller paket bakıcıları ve çay tadımları tarafından harcanan çaba ile orantılı olmalıdır. Bakımı yapılmayan, güncelliğini yitirmiş veya bozulmuş paketler, paket bakıcılarının topluluğun beklentilerine uygun davranmadığını veya üzerlerine yüklenen güvene ve desteğe yanıt vermediğini açıkça gösterir. Güncelliğini yitirmiş paketlerin başka bir tezahürü, çoklu sürümlü dillerin miras dili veya eski sürümünün devam etmesi olabilir. Paketlerin uzun süre güncel olmaması veya bozulmuş olması, çay tadımlarının paket bakıcılarının çalışmalarını düzenli ve tutarlı bir şekilde incelemeleri gerektiğini gösterir.

Çay tadımları, açık kaynaklı topluluklarda hayati bir rol oynarlar, çünkü incelemeleri ve ilişkili iddiaları, paket kullanıcılarını belirli paketlere yönlendirebilir veya onlardan uzaklaştırabilir. İncelemelerin sürekli olarak güvenilir olmasını sağlamak için, çay tadımları tarafından yapılan incelemelerin staked TEA tokenları ile ilişkilendirilmesi gerektiği bir mekanizma öneriyoruz. Güncelliğini yitirmiş veya bozulmuş paketler, hazinelerinin bir kısmının kesilmesini görebilirken, diğer bir kısmı, bakım eksikliğini ilk fark eden çay tadımcısına gönderilir.

Paketler popülerlik kazandıkça ve daha fazla uygulama ve potansiyel olarak misyon-kritik sistemler onlara bağlandıkça, geliştiricileri paket bakıcılarına kusurları gizlice bildirmeye ve paket bakıcılarını böyle kusurları istismar edilmeden önce ele almaya teşvik etmemiz gerekmektedir. Sonuç olarak, sıfır gün açığı gibi bir hata veya güncelliğini yitirmiş bir bağımlılığın kullanımı gibi bir kusuru belirten herhangi bir olumsuz incelemenin, yönetim tarafından tanımlanan bir zarafet döneminden ötesine açık kalması durumunda, paket bakıcısının hatası olarak kabul edilmesi ve kesilmiş tokenların bir kısmını ilk hatayı bildiren çay tadımcısına gönderilmesi gerektiğini öneriyoruz.

Aynısı, ihmalkar paket bakıcılarının çalışmalarını desteklemek için itibarlarını ve TEA tokenlarını yatıran paket destekçileri için de geçerlidir. Bakımın yapılmamasını tespit etmede başarısız oldukları veya paketi desteklemeye devam etmeyi seçtikleri için, tüm kesme faaliyetlerinin paket destekçilerine de uzanmasını öneriyoruz.

Tüm çay tadımlarına dağıtım, incelemelerinin yaşına ve incelemeleri için staked TEA tokenlarının sayısına dayalı olabilir.

### TEA Token

TEA, kahve Protokolü'nün belirli bölümlerine ve belirlenmiş özelliklerine erişim anahtarı olarak hizmet eden bir kripto tokenidir.

TEA token sahipleri şunları yapabilir:

Paketlerini kaydedebilirler.
Belirli paketlere TEA tokenlarını staking yaparak paketleri destekleyebilirler.
Yazılım tedarik zincirinin güvenliğine katkıda bulunmak için paketleri sorgulayabilir ve incelemeler yaparak hataları ve/veya güvenlik açıklarını raporlayabilirler.
Bahsedildiği gibi, kahve Protokolü, açık kaynak ekonomisini açığa çıkarır ve geliştiriciler, bakıcılar ve kurumsal yazılımın son kullanıcıları için değer yaratır. Sonuç olarak, kahve Protokolü tarafından yakalanan değer, topluluk ölçeklendikçe, katılımı daha da teşvik eden bir geri besleme döngüsü oluşturarak token sahiplerine geri döner.

### Açık Kaynak Geliştiricilerin Ödüllendirilmesi

TEA'nın Katkı Kanıtı ve staking mekanizmalarının açık kaynak gelişimini teşvik etmesini bekliyoruz, bu da katılımcıları tutkularını engelsiz bir şekilde takip etmek için ihtiyaç duydukları kaynaklarla güçlendirir.

"Proje Kaydı ve Katkı Kanıtı Ödülleri" bölümünde açıklandığı gibi, tea Protokolü'ne kaydedilen ve bir yönetim tarafından belirlenen eşiği aşan bir teaRank'a sahip projeler, tea Protokolü'nden TEA tokenları şeklinde Katkı Kanıtı ödülleri alacaktır. Bu dağıtım, paketin protokol kurallarına uygun olduğu sürece devam edecektir. Özellikle, paketin bir yönetim tarafından belirlenen eşiğin üzerinde bir teaRank'a sahip olması ve paket bakıcılarının, projenin hazinesi tarafından alınan Katkı Kanıtı ödüllerinin bir kısmını sürekli olarak staking yaparak projenin itibarına ve güvenilirliğine katkıda bulunması gerekecektir. Bu kurallara uymamanın sonucu, Katkı Kanıtı ödüllerinin dağıtımının askıya alınması ve gelecekteki ödüllerin uyumlu projeler arasında yeniden dağıtılması olacaktır.

Bağımlılıklar, bir paketin güvenilirliğini ve güvenliğini önemli ölçüde etkileyebilir ve bir paketin bağımlılıklarının kaydedilmemesi, potansiyel bir risk olarak görülmelidir. Paket bakıcıları, bu bağımlılıkların hem doğrulayıcıları hem de kullanıcıları oldukları için, bu bağımlılıkların bakımıyla ilgili olarak bu bakımları sürdürmeleri için bu bağımlılıkların bakımını yapanların bakımıyla bağlantı kurmak için mükemmel bir konumdadır. Onları tea'ya kaydetmeye teşvik edebilirler, böylece çay tadımları tarafından denetlenebilirler ve ilişkili ödüller için uygun olabilirler. İtibar sisteminin güçlendirilmesine yönelik bu topluluk genelindeki katılımı teşvik etmek için, kaydedilmemiş herhangi bir bağımlılığı olan paketlerin bir kısmının Katkı Kanıtı ödüllerinin yanması önerilmektedir. Bu yanma, kayıtlı olmayan her bir bağımlılığın sayısına ve katkısına, teaRank cinsinden, ve bu bağımlılıkların kaydedilmemiş kalması durumunda devam eder.

Güçlü teşviklerin kötü niyetli aktörleri açık kaynaklı yazılımları tehlikeye atmaya teşvik edebileceği birçok durum gösterilmiştir. İnternetin kritik altyapısının çoğu açık kaynaklı olarak çalışır ve açıklar ve diğer güvenlik açıklarını bulma yarışı devam eder. tea'da, paket bakıcılarının suçlanması gerekenler olmadığına inanıyoruz (bununla birlikte, genellikle suçlanırlar).

tea Protokolü'nün teşvikleri, adil ve eşitlikçi bir teşvik dağılımını sağlayarak bu sorunu ele alır. Örneğin, 176 binden fazla bağımlıya sahip lodash gibi bir paket, açık kaynaklı geliştirimin bir direğidir ve bakıcıları orantılı olarak ödüllendirilmeyi hak eder. Ancak, sadece bağımlıların sayısına dayanan bir ödül sistemi, bu monopolileri bozmak için yenilikçileri yeterince finanse etmekten veya zaten yeterli kaynağı bir araya getirmekten başka bir seçenek bırakmazdı. Bu yaklaşım, katılımcıların sayısının azalmasına yol açarak, tea'nın amacının tam tersi sonuçlanır.

Bu sınırlamayı ele almak ve her TEA token sahibini paket bakıcılarını destekleme yeteneği ile donatmak için, tüm ağ katılımcıları tarafından alınan tüm staking ödüllerinin bir yönetim tarafından belirlenen bir kısmının, bağımlılıklarıyla birlikte staked paketin hazinesine yönlendirilmesini de öneriyoruz.

### Yazılım Tedarik Zincirini Güvence Altına Almak İçin Staking

Staking, merkezi olmayan bir itibar sistemi desteklemek için etkili bir metod olabilir. Ancak, yazılım tedarik zincirinin güvenliğini sağlamak için, çay teşvik dağıtım sistemi her paketin staking oranını dikkatlice düşünmeli ve her paketin teşvikini buna göre ayarlamalıdır.

Çok sayıda uygulama tarafından kullanılan birkaç paketin çoğu staking ödüllerini toplaması riskini azaltmak için, web3 Vakfı tarafından üretilen araştırmada tanımlanan optimum staking oranının uygulanmasını öneriyoruz.

Bir paketin yönetim tarafından belirlenen optimum staking oranını aşması durumunda, pakete tahsis edilen toplam staking ödül miktarı, pakete staking yapılan TEA tokenlarının miktarından bağımsız olarak sabit kalacaktır. Bu önlem, paket destekçilerini ve çay tadımlarını yüksek staking yapılan paketlere daha fazla staking yapmaktan vazgeçirmek için tasarlanmıştır ve her bir paket destekçisinin aldığı staking ödüllerinde lineer bir azalmaya neden olacaktır.

Web3 Vakfı'nın araştırmasında tanımlanan eğri tabanlı bir yaklaşım, staking ödüller havuzunun pakete tahsis edilen staking ödüllerini azaltma hızını yavaşlatarak, daha az staking yapılan paketlerden almaya devam edecek ve büyük token sahiplerine daha fazla etki sağlayarak olumsuz dışsallıkları tanıtacaktır.

Önerilen lineer tasarım, daha az staking yapılan paketleri hem paket destekçileri hem de çay tadımları için daha çekici hale getirmelidir. Ayrıca, deneyimli geliştiricilerin yüksek staking yapılan paketlere alternatifler geliştirmesi teşvik edilebilir, bu da çay topluluğunun mevcut yazılımı desteklemeyi ve yeniliği teşvik etmeyi dengeleme fırsatı yaratabilir. Başlangıçta, staking oranı dolaşımdaki arz kullanılarak hesaplanacaktır. Çay topluluğu, sistemin ölçeklenebilirliğini artırmak için bu tasarımı değiştirebilir.

İyi aktörlerin ödüllendirilmesi gerektiği gibi, kötü niyetli aktörlerin de tanımlanıp cezalandırılması gerekmektedir. Açık kaynaklı yazılımlar, bir topluluğun tüm geliştiricileri için acı noktalar ve itibar riskleri yaratma fırsatları sağlar. İşin kötü yanı, paketlerin dijital raflardan yasaklanması veya kötü bir itibara maruz kalması olmuştur.

Kötü niyetli aktörlerle doğrudan başa çıkmak ve açık kaynağa aykırı eylemler için sonuçları artırmak için, “Paket Tadımları Tarafından İncelenen Paketler” ve “Eski veya Bozuk Paketler” bölümlerinde detaylandırılan slashing mekanizmasının uygulanmasını öneriyoruz.

Çay tadımları, yeni gönderilen paketlerdeki kodları değerlendirip analiz ettiğinde, kötü niyetli kodları belirlemek ve vurgulamak için çay tadımlarının araçlar ve teşvikler alması gerektiğini öneriyoruz, böylece

paket kullanıcıları risklerden haberdar edilebilir ve
paket bakıcıları ve paket destekçileri kötü niyetli kod göndermek veya desteklemekten cezalandırılır.
Bu kapsamda, ağ kuralları doğrultusunda gerçekleştirilen ve paket bakıcısı tarafından yönetim tarafından belirlenen süre içinde ele alınan olumsuz incelemeler için, paket bakıcısının herhangi bir ceza almaması gerekmektedir. Bu, ilgili paket için pozitif bir inceleme sunan paket destekçileri veya çay tadımlarının aksine negatif incelemeyi yapan çay tadımları için de geçerlidir.

Ağ kuralları doğrultusunda gerçekleştirilen ve paket bakıcısı tarafından belirtilen süre içinde ele alınmayan olumsuz incelemeler için, projenin hazinesi, paket destekçileri ve önceki çay tadımları tarafından staked TEA tokenlarının bir kısmı kırpılacak ve bulgu veya zafiyetleri tanımlayan çay tadımlarına gönderilecektir. Başka bir kesim, çay yönetimi tarafından kontrol edilen bir sigorta havuzuna kilitlenecektir. Çay yönetimi, havuzdaki içeriği etkilenen kişilere dağıtmak için toplulukla yakın işbirliği içinde politika ve kurallar belirleyecektir. Protokol, kırılan TEA tokenlarının üçüncü bir kesimini, negatif incelemeye katkıda bulunan tüm çay tadımlarına dağıtacaktır.

Staking ve slashing, çay Protokolü'nün teşvik ve ceza sisteminin hayati bileşenleridir. Paket bakıcıları, projelerinin hazinesinin bir kısmını stakelamak zorundadırlar, böylece hataları veya zafiyetleri ele almazlarsa büyük bir risk altında kalırlar. Paket kullanıcıları, destekçileri ve çay tadımları da bir paketin veya paket bakıcısının itibarına katkıda bulunmak ve yazılım tedarik zincirinin sürdürülebilirliğini ve bütünlüğünü sağlamak için protokole aktif olarak katılarak ekosistem içinde hesap verebilirliği güçlendirirler.

Bu etkin katılımla sıkı bir bağlılık ilişkilidir. Her bir TEA token için staking yapıldığında, katılımcılar protokolün yönetimine katılmak için devredilemez "staked TEA" (stTEA) alırlar. Staked ödüller ve bunların karşılık gelen stTEA tokenları, protokol kurallarının takip edilmemesi durumunda azaltılabilecek veya yeniden dağıtılabilecek, içinde yer aldığı ekosistemde hesap verebilirlik sağlayarak güçlendirir.


### TEA Token Arzı Dağıtımı

Protokol tarafından oluşturulan TEA tokenlerinin çoğunluğu, paket bakıcılarını, kullanıcılarını ve destekçilerini de merkezsiz ağa değer sağlayan faaliyetlerde bulunmaya teşvik etmek için kullanılır. TEA tokenlerinin protokol içindeki çeşitli paydaşlara dağıtımı bir "dağıtım takvimi" tarafından belirlenir.

Ağ teşvikleri, TEA tokenları şeklinde, doğrudan çay Protokolü tarafından, dört grup paydaşa dağıtılacaktır:

Paket Bakıcıları;
Paket Kullanıcıları (bu, çay topluluğunun tüm üyelerini içerir);
Proje Destekçileri; ve,
çay Tadımları.
TEA tokenleri, paketleri desteklemek ve yazılım tedarik zincirini korumak için staking aracılığıyla kullanılacaktır, bu da bir paketi inceleyerek meydan okuma hakkını içerir ve hataları veya zafiyetleri bildirir, kayıtlı projelerin açık kaynak geliştiricilerini ödüllendirir ve çay Protokolü'nün yönetimine katılır.

Önerilen maksimum token arzının 10 milyar olması ve çay topluluğunun tüm üyeleri arasında aşağıdaki gibi dağıtılması önerilmektedir:

<figure><img src=".gitbook/assets/Token Allocation-Updated.svg" alt=""><figcaption><p>Şekil 3 - Maksimum arzın token dağıtımı</p></figcaption></figure>
Maksimum token arzının yaklaşık %51.4'ü "Ekosistem ve Yönetişim"e tahsis edilmelidir, bu da açık kaynaklı projelerin platforma katılımını ve kodlarını sürdürmelerini teşvik eden teşviklerin yanı sıra çay DAO aracılığıyla merkezsiz oylamalara ve fikir birliği sağlamaya yönelik ödülleri içerir. "Ekosistem ve Yönetişim"e tahsis edilen tokenler, Proof of Contribution ödülleri, staking ödülleri ve diğer geliştirici odaklı teşvikler şeklinde dağıtılmalıdır.

Maksimum token arzının yaklaşık %18.6'sı "Protokol Geliştirme"ye tahsis edilmelidir, çay Protokolü'nün sürdürülebilirliğini ve sürekli evrimini sağlamak için. Yaklaşık %12.7'si "Erken Destekçiler ve Danışmanlar" için ayrılmalıdır. Yaklaşık %11.0'u Özel satış için, %3.0'u halka açık satış için, geri kalan %3.2'si ise bir token üretim etkinliği gerçekleştiğinde pazar likiditesini desteklemek için ayrılmalıdır.

Ayrıntılı Tokenomics, kapsamlı bir Token Dağıtımı ve Emisyonlar takvimi ayrı bir belgenin konusu olacaktır.

## Governance

Önerilen tea Protokolü için yönetişim çerçevesi, gelişimi, sürdürülebilirliği ve yaygın kabulü için hayati öneme sahiptir. TEA tokenı sahibi aktif katılımcıların, belirli paket yöneticilerine destek verme önceliği, yeni protokol özellikleri tanıtma veya kullanıcı ve paket itibarına dış etkenlerin etkisini ayarlama gibi kritik parametre değişiklikleri önerme ve oy kullanma yetkisini içerir. Oyların stTEA token sahipliği ve bireysel itibara göre ağırlıklı olması, kararların sisteme sahip ve katkılarını kanıtlamış olanlar tarafından alınmasını sağlar.

Tea sistemi evrildikçe, yönetişim, ilerleyici merkezsizleşme ve optimizasyonunda hayati bir rol oynayacaktır. Başlangıçta, yönetişim basit bir yapıyla başlayacak ve zamanla ekosistemin artan karmaşıklığını karşılamak için genişleyecektir. Belirli sistem parametreleri, yönetişimden muaf olabilir veya saldırı yüzeyini minimize etmek için nadiren değişikliklere tabi tutulabilir.

Ayrıca, tea Protokolü, üçüncü taraf genişletilebilirliğini kolaylaştırmak üzere tasarlanmıştır, bu da geliştiricilerin protokolün üstünde uzantılar oluşturmasına ve yenilik yapmasına olanak tanır. Bu açıklık, işbirliğini ve yaratıcılığı teşvik eder, topluluğun ekosistemin büyümesine ve evrimine katkıda bulunmasını sağlar. Ayrıca, diğer paket yöneticilerinin de protokolle entegre olma fırsatı olabilir, böylece protokolün erişim ve etkisini genişletir.

Geleceğe bakıldığında, tea topluluğu, yönetişim kararları ve topluluk odaklı çabalar aracılığıyla protokolün geleceğini şekillendirmede kilit bir rol oynayacaktır. Belirli fikirler ve öneriler ortaya çıkabilir, ancak protokolün nihai yönü, katılımcıların kolektif çabaları ve vizyonu tarafından belirlenecektir.

### Üçüncü Taraf Genişletilebilirliği

Açık kaynak topluluklarının uzun süredir beklenen desteğini ateşlemek için ilk araçları oluştururken, misyonumuzun bir parçasının üçüncü tarafların genel araç setini genişletebilmesini sağlamak olduğuna inanıyoruz. Protokole uzantılar oluşturmak için altyapı sağlamanın yanı sıra, açık kaynak geliştiricilerin desteğini ileriye taşımak ve yenilik yapmak için yeni yollar sunan uzantılar oluşturmak üzere geliştiricilere olanak sağlamak da dahil olmak üzere, planlarımız diğer paket yöneticilerinin protokole katkıda bulunma potansiyelini içermektedir.

Açık kaynak geliştiricilerin hayalleri ve çabaları, günlük yaşamımızı destekleyen inovasyonu inşa etmiştir. tea Protokolü tarafından önerilen yeni kullanımları ve uzantıları keşfetmek için sabırsızlanıyoruz.

### Gelecek Çalışmalar ve Potansiyel Topluluk Çabaları

tea sistemi olgunlaştıkça, topluluğun yönetişim aracılığıyla tea sisteminin değişikliklerini ve uzantılarını belirlemesi ve katkıda bulunması beklenmektedir. Aşağıda, bazı fikirlerin bazılarını ilham verebileceğine inandığımız fikirler var, ancak gelecekteki performansı garanti etmiyoruz.

### Tea Toptancıları

Açık kaynak yazılım toplulukları dinamik ve sürekli olarak yenilik yapmaya ve değer sunmaya çalışmaktadır. Bu özveri ve fedakarlık, sürekli olarak yeni yazılım ve paketlerin oluşturulmasına yol açar, her biri bağımlılıkları çeker. Bu nedenle, bağımlılıklar haritasının sürekli olarak evrim geçirmesini, dolayısıyla staking oranı ve ödüllerin sık sık değişmesini bekliyoruz. Gelecekte, tea topluluğu, her projenin staking oranını dinamik olarak izlemek ve proje destekçilerinin TEA tokenlarını kendi kriterlerine dayanarak nasıl stakedeceklerini yeniden dengelemek için tasarlanmış bir sistem geliştirmeyi önerme potansiyeline sahip olabilir.

### Paket Transferinde Telif Ücretleri

Paket yöneticilerinin ödül akışını bir veya daha fazla geliştiriciye devretmeye karar verebileceğini kabul ediyoruz. Bu tür bir transferin yönetişi, paket yöneticisi ve ortaklarının kararıyla, tea'nın müdahalesiz olmalıdır. Bu tür bir transferin tam veya kısmi olabilmesi için araçlar sağlanmalıdır (belki de ödüllerin sadece bir veya daha fazla geliştiriciye yönlendirilmesi, geri kalan ödüllerin ise orijinal paket yöneticisine akması), ve staking ödüllerinin tek bir ağ katılımcısı tarafından kontrol edilen tek bir hesap üzerinden akması, birden fazla ağ katılımcısı tarafından kontrol edilen hesaplar arasında otomatik olarak veya statik veya dinamik oranlar kullanılarak birden fazla hesaba dağıtılması gerekmektedir.

### Birden Fazla Yönetici Arasındaki Ödül Dağıtımı

Bir paketin bakımı bir veya daha fazla geliştirici ekibine dayanabilir. Ödüllerin akması başlamadan önce, ekipler arasındaki değerin dağıtımını otomatikleştirmeleri gerekmektedir. Dağıtımın nasıl gerçekleşeceği, katkıda bulunanları ve nasıl ödüllendirileceklerini en iyi değerlendirebilecekleri için, tamamen yöneticiler tarafından belirlenmelidir.

Bunu başarmak için, her ekip (veya ekipler) kendi merkezi olmayan özerk kuruluşunu (DAO) kurabilir ve dağıtımı otomatikleştirebilir veya tüm DAO üyelerinin oyları gibi dış faktörlere dayalı olarak yeterli değer dağıtımını belirlemek için daha karmaşık sistemler kurabilir.

### Paket "Fork"larının İşlenmesi

Fork'ların temel ve genellikle az kullanılmış olduğunu düşünüyoruz. Fork'lar, işlevsellik, performans, güvenlik ve hatta ilgi açısından rekabet eden paketler geliştirmek için etkili bir araç olabilir. Ne kadar yararlı olursa olsun, fork'lar orijinal çabalara saygı duymalıdır. Gelecekteki çalışmalar veya potansiyel katkılarla, tea topluluğu, fork'ların açıklanmasını gerektirecek sistemleri geliştirebilir, hatta bir proje kaydedildiğinde tespit edilebilir. tea taster'ları tarafından ortaya çıkarılan açıklanmamış fork'lar, fork'ün hazinesinin bir kısmının kesilmesine, orijinal paket yöneticisine aktarılmasına veya fork'u ortaya çıkaran tea taster'larına gönderilmesine neden olabilir.

### Çalışma Zamanı ve Derleme Bağımlılıkları

Tea, Başlangıçta, Proof of Contribution ödüllerini dağıtırken derleme bağımlılıklarını çalışma zamanı bağımlılıklarından ayırt etmeyebilir. Ancak, tea topluluğu bu ayrımı yapmanın önemli olduğuna inanıyorsa, topluluk, her bağımlılığın kritikliğini ve onların bağımlı oldukları paketlerin bireysel değerine katkısını hesaba katan ödül dağıtım algoritmasını geliştirmek için önerilerde bulunabilir. Bu öneriler, topluluğun kararına göre oylanacak ve uygulanacaktır.


### Kullanıma Dayalı Ödüller

tea ile kayıtlı projeler kullanılarak daha fazla uygulama oluşturulduğunda, topluluk ödül algoritmasını dışarıdan doğrulanmış veri kümeleri gibi kullanım gibi etkenlere göre etkileyebilir. Bu ödül mekanizmasının güncellenmesi, en yüksek kullanıma sahip paketlere daha yüksek miktarda TEA token ödülü ayrılmasına izin verebilir, ancak TEA token bölümünde açıklanan staking oranı kısıtlamalarına saygı gösterebilir. Paket yöneticileri, ödülleri paketler arasında ve bağımlılıklarında şeffaf bir mantık temelinde dağıtmak için benzer bir yaklaşımı kullanabilirler. tea sisteminde paketler ve bağımlılıklar arasındaki ödül dağıtımını etkilemek için kullanılan tüm bilgilerin kanıtlanabilir güvenilir olması gerekecektir.

### Teşekkürler

Bu beyaz kağıt, birçok tea tutkununun desteği ve özverisi olmadan var olmazdı. Yazarlar, tokenomikse katkılarından dolayı Jacob Heider, Jadid Khan, Josh Kruger ve Shane Molidor'a, teaRank algoritmasına katkılarından dolayı Sanchit Ram'a ve bu belgenin içeriği hakkındaki geri bildirimlerini sağlayan birçok bireye teşekkür etmek isterler.

### Terimler Sözlüğü

Terim:	Tanım
Leaf:	TEA tokenının en küçük birimi. Bir yaprak, bir tea'nın bir quintillionth (10^−18) karşılık gelir.
Slashing:	Protokol kurallarına aykırı davranışa karşılık stakerları cezalandırma işlemi.
Staking:	Talebinizi desteklemek ve talebinizin geçerliliği konusunda uzlaşıya dayalı olarak ödül (veya ceza) almak için TEA tokenlarını kilitleme işlemi.
stTEA:	Ağ katılımcılarına her staked token başına 1:1 oranında verilen devredilemez “staked TEA” tokenı veya “stTEA”. stTEA, tea Protokolü'nün yönetişimine katılmak için kullanılabilir.
teaRank:	Protokolün "Katkı Kanıtı" algoritması tarafından her projeye atanmış olan dinamik etki puanı.

## Referanslar

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
