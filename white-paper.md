Beyaz kağıt
Açık Kaynak Geliştiricilerinin Yarattıkları Değeri Yakalamalarına Yönelik Merkezi Olmayan Bir Protokol
Max Howell
Thomas Borrel
Timothy Lewis
Troy Wong
Soyut
Açık kaynak geliştiricilerin katkılarıyla orantılı ödüller alabilecekleri bir sistem, yazılım tedarik zincirinin sürdürülebilirliğini ve bütünlüğünü artıracaktır. İtibar ve teşviklerle güvence altına alınan merkezi olmayan bir protokol, açık kaynak kod tabanlarını bir kamu hizmeti olarak sürdüren geliştiricilere değer tahakkukunu kolaylaştırarak ve böylece açık kaynak ekosisteminde gelecekteki inovasyonu ve büyümeyi teşvik ederek bunu başarabilir. Paket bakımcıları, projelerini Bizans hataya dayanıklı blok zinciri tarafından desteklenen bir kayıt defterine kaydedecekler. Çay Protokolünün benzersiz “Katkı Kanıtı” algoritması, her projenin sistemin faydasına ve sağlığına olan katkısını ve etkisini belirleyecektir. Kayıtlı projeler, çay Protokolü'nden katkılarıyla orantılı ödüller alacak, stake etme yoluyla güvence altına alınacak, projeleri ve katkıda bulunanları kapsayan bir itibar sisteminden yararlanacak ve toplulukların açık kaynak ekosistemindeki kendi bölgelerini bağımsız olarak yönetmesine izin verme seçeneğine sahip olacak. dış gündemler. Çay Protokolü, projelerini kaydeden ve ağın kurallarına uyan ağ katılımcılarının ödüller almasına ve itibarlarına ve projelerine katkıda bulunmalarına olanak tanıyarak açık kaynağın sürdürülmesini teşvik edecek. Güvenlik veya geliştirme sorunları bulunursa geliştiriciler pakete karşı kanıtlarla desteklenen iddialarda bulunabilir ve kesinti meydana gelebilir. Açık kaynak topluluğunun üyeleri, kalite sorunları açısından paketleri inceleyebilir ve protokol, orantılı kesinti olaylarını yürürlüğe koyarak bu incelemelere yanıt verebilir.

Sorumluluk reddi beyanı
Bu teknik incelemede belirtilen bilgiler ön niteliğindedir. Sonuç olarak, ne yazarlar ne de onların ilgili bağlı kuruluşları burada belirtilen bilgilerin nihai veya doğru olduğu konusunda herhangi bir sorumluluk kabul etmez ve yukarıda belirtilenlerin her biri, geçerli yasaların izin verdiği ölçüde, haksız fiil, sözleşmeden kaynaklanan her türlü ve tüm sorumluluğu reddeder. veya bu teknik incelemeyle ilgili olarak başka türlü. Ne bu tanıtım yazısı ne de burada yer alan herhangi bir şey, herhangi bir sözleşme veya taahhüdün temelini oluşturmayacak veya bunlarla bağlantılı olarak temel alınmayacak veya herhangi bir sözleşme veya taahhüde girme konusunda bir teşvik olarak hareket etmeyecektir.

Bu tanıtım belgesindeki hiçbir şey, burada tartışılan herhangi bir tokenı satma teklifi veya satın alma talebi teşkil etmez. Her halükarda, bu teknik incelemenin böyle bir teklif veya talep olarak kabul edilmesi durumunda, bu teknik inceleme tarafından böyle bir teklif veya talebin yasa dışı olduğu herhangi bir yargı bölgesinde böyle bir teklif veya talep amaçlanmamakta veya iletilmemektedir. lisans veya tescil gerektiren veya böyle bir teklif veya talebin kısıtlamalara tabi olduğu durumlarda. Özellikle, burada tartışılan herhangi bir belirteç, bu teknik incelemenin yayınlanma tarihi itibariyle, herhangi bir yargı bölgesinin menkul kıymetler veya benzer yasaları kapsamında, söz konusu yargı mercii bu tür belirteçleri kabul etse de etmese de, kaydedilmesi amaçlanmamıştır. bir menkul kıymet veya benzeri bir araç olamaz ve herhangi bir yargı bölgesinde teklif edilemez veya satılamaz; bunun yapılması söz konusu yargı bölgesinin ilgili yasalarının ihlali anlamına gelecektir. Satın alma fiyatının tamamını kaybetmeye hazır olmadığınız sürece herhangi bir jeton satın almayın. Bu yüksek riskli bir satın almadır ve bir şeyler ters giderse korunmanız pek mümkün değildir.

Lisans
Bu makale Creative Commons Atıf-AynıPaylaş 4.0 Uluslararası lisansı kapsamında mevcuttur .

giriiş
Günümüz İnterneti ağırlıklı olarak açık kaynaklı projelerden oluşmaktadır ve başlangıcından bu yana varlığını sürdürmektedir. Açık kaynaklı projeler, küresel geliştirici toplulukları arasındaki işbirliği yoluyla geliştirilir ve sürdürülür ve kod tabanları, herkesin kamu malı olarak kullanmasına sunulur. Geçtiğimiz 80 yılda ( genel olarak özgür ve açık kaynaklı yazılımın ilk örneğinin 1953'te piyasaya sürüldüğüne inanılıyor), açık kaynaklı yazılım, niş teknoloji meraklılarının ürünü olmaktan, tüm yeniliklerin üzerine inşa edildiği altyapıya dönüştü. . Açık kaynaklı yazılımın önemine rağmen, kod tabanını bir kamu hizmeti olarak yaratan ve sürdüren geliştiriciler, yenilikçiler ve sürdürücüler olarak muazzam katkılarından dolayı hiçbir karşılıksız ödül almazlar.

Milyarlarca dolarlık bir sektöre dönüşen kurumsal yazılım, açık kaynağın attığı temeller üzerine inşa ediliyor. Ancak onun temellerini nankörce koruyan kişilere neredeyse hiçbir değer kazandırılmıyor. Her ne kadar bundan servetler kazanılsa da, açık kaynak yazılım esas olarak kamu hizmeti olarak yaratılıyor ve sürdürülüyor; geliştiricilerin yarattıkları değeri yakalamaları için hiçbir geçerli araç yok.

Dünyadaki mühendislerin küçük bir yüzdesinin, tamamen fedakarlık amacıyla açık kaynaklı yazılımları sürdürmesine güvenerek günümüz internetinin potansiyelinin engellendiğine inanıyoruz. Açık kaynak, temel bakım sağlayıcılara yönelik anlamlı teşviklerin bulunmaması nedeniyle sıklıkla sekteye uğrayan bir sevgi emeğidir. Açık kaynak geliştiricileri, geçinmeye yetecek ücret sağlayan bir günlük iş ile kurumsal yazılımın temellerini koruyan bir iş arasında seçim yapmak zorundadır. Teşvik eksikliği, gerçekten değerli projelerin hiçbir zaman potansiyellerine ulaşamamasına neden olurken, diğerleri yazılımın yaşam döngüsü boyunca bakım eksikliği nedeniyle güvenlik sorunları yaşıyor. Açık kaynağın tam potansiyelini ortaya çıkarmak için, açık kaynak projelerinin "gerçeğe uygun değerini" değerlendirmek için evrensel bir yönteme ihtiyacımız var; bu yöntem, açık kaynak geliştiricilerinin, açık kaynak topluluğuna sermaye akışını kolaylaştırarak yarattıkları değeri elde etmelerini sağlar. tüm bunlar açık kaynağın nasıl geliştirildiğine ve kullanıldığına ilişkin temel ilkeleri değiştirmeden gerçekleştiriliyor.

İşletmeler genellikle iş modellerini açık kaynak etrafında topluyor, hayırsever geliştiricilerin çalışmalarından doğrudan gelir elde ederken aynı zamanda sorunlar ortaya çıktıkça hataları düzeltmek için onlara güveniyorlar. Açık kaynaklı kod tabanları, kuruluşlar için temel tak ve çalıştır işlevselliği sunar; ancak yazılımdaki güvenlik açıkları, açık kaynak üzerine inşa edilen uygulamalar için büyük bir risk oluşturabilir. Bunun harika bir örneği, Apache Yazılım Vakfı'nın kurumlar ve hükümetler tarafından kullanılan birçok ticari yazılım ve hizmette kendine yer bulan bir paketi olan Log4j'deki kritik bir güvenlik açığını içeren yakın zamanda yaşanan bir olaydır . Kasım 2021'de Alibaba Group Holding Ltd. için çalışan bir güvenlik araştırmacısı, Apache Software Foundation'dan mümkün olan en yüksek taban puanı alan CVE-2021-44228 güvenlik açığını bildirdi . Tenable İcra Kurulu Başkanı ve Amerika Birleşik Devletleri Bilgisayar Acil Durum Hazırlık Ekibi'nin (US-CERT) kurucu direktörü Amit Yoran, bu güvenlik açığını " son on yılın en büyük, en kritik güvenlik açığı " olarak tanımladı. Panik ortaya çıktı ve bu paketi muhafaza eden az sayıdaki gönüllü, başarısızlık nedeniyle kamuoyu önünde ateş altında kaldı. Öfkeyi mütevazı bir adalet talebiyle ele aldıktan sonra sistemler yamalandı. Şirketler ve hükümetler, yirmi yıl boyunca çok çeşitli kritik sistemler tarafından kullanılan bir paket olan Log4j'nin, sektördeki suiistimallere rağmen harekete geçen ve güvenlik açığını gidermek için yorulmadan çalışan aynı isimsiz kahramanlar olan birkaç ücretsiz gönüllü tarafından sürdürüldüğünü sonunda fark etti. .

Ne yazık ki Log4j tek örnek olmaktan çok uzak. core-js, her Node.js uygulamasının temeli olarak haftada 30 milyon kez indiriliyor, ancak aynı zamanda zar zor finanse ediliyor ve potansiyel olarak birincil bakımcısını projeden uzaklaşmaya ve hatta lisansı kapalı kaynağa değiştirmeye zorluyor . Son zamanlarda birkaç bitcoin çekirdeği geliştiricisi, diğer nedenlerin yanı sıra, kararları için mali tazminat eksikliğini öne sürerek istifa etti.



Şekil 1 - Bağımlılık - Kaynak: https://xkcd.com/2347/

Teşvik yapıları sağlamaya yönelik, genellikle sponsorluk ve ödül sistemlerini içeren çok sayıda girişimde bulunulmuştur. Sponsorluk, açık kaynak tüketicilerinin tercih ettikleri projelere bağış yapmalarını mümkün kılar. Bununla birlikte, açık kaynağı, alt katmanların çoktan unutulduğu, ancak yine de özel mühendisler tarafından sürdürülen ve daha da fazla geliştiricinin güvendiği bir tuğla kulesi olarak hayal edin. Yalnızca kulenin tepesindeki projeler genellikle bilinir ve sponsorluk alır. Bu taraflı seçim, kuleyi ayakta tutan temel tuğlaların bağış alamamasına, favorilerin ise ihtiyaç duyduklarından fazlasını almasına yol açıyor. Ödüller, proje tüketicilerinin geliştiricilere belirli özellikler geliştirmeleri için ödeme teklifinde bulunmalarına olanak tanır, böylece projeleri yalnızca kendi çıkarlarına uygun olmayan şeyleri yapanlar ödüllendirir. Ve yine, yalnızca ödüllendirici favoriler.

Çay sırasında, açık kaynak topluluğunu desteklemeye yönelik bu başarısız girişimlerden zarar gören çok fazla açık kaynak projesi gördük ve açık kaynak geliştiricilerin yazılım tedarik zincirinin sürdürülebilirliğini ve bütünlüğünü geliştirmeyi misyonumuz haline getirdik. yarattıkları değer.

Bu yazıda çay için merkezi olmayan bir sistem öneriyoruz.

tüm ekosisteme göre her açık kaynaklı projeye bir “ Katkı Kanıtı ” hesaplamak ve atamak ,
Açık kaynaklı yazılım projelerinin iyi bir şekilde sürdürülmesini sağlamak,
Açık kaynak geliştiricilerini, çay kayıt defterindeki her girişte çay teşvik algoritmasının uygulanması yoluyla elde edilen, ekosistem çapındaki katkılarıyla orantılı olarak adil ödüllerle güçlendirmek ve
Ağ katılımcılarını güvenlik açıkları ve hatalar konusunda sorumlu açıklama uygulamalarını takip etmeye teşvik etmek.
Bileşenler
Bir uygulama geliştiren bir yazılım geliştiricisinin dört şeye ihtiyacı vardır: bir tarayıcı, bir terminal, bir düzenleyici ve bir paket yöneticisi. Bu dördünden paket yöneticisi, bir geliştiricinin ürününü oluşturmak için ihtiyaç duyduğu araçları ve çerçeveleri kontrol eden şeydir. Bu katman, açık kaynağın güvence altına alınma ve ödüllendirilme biçimini değiştirme potansiyelini gördüğümüz yerdir.

Paket Yöneticisi
Paket yöneticisi, kulenin tepesinden tabanına kadar bir paketin veya uygulamanın hangi açık kaynaklı yazılıma bağlı olduğunu bilir. Her proje, her paketlenmiş sürümle birlikte, tüm temel bileşenleri ve bunlara karşılık gelen sürümleri titizlikle belgelendirir.

Kulenin tepesinin bağımlılıklarını dikkatle seçtiğini ve dikkatli seçimin aşağıya doğru devam ettiğini biliyor. Paket yöneticisi, gerçek dünya katkısına dayalı olarak otomatik ve hassas değer dağıtımını mümkün kılmak için geliştirici araç yığınına benzersiz bir şekilde yerleştirilmiştir.

Her projenin sistemin faydasına ve sağlığına olan katkısını ve etkisini belirleyen bir algoritma olan çay Protokolünün benzersiz "Katkı Kanıtı"na dayalı olarak değer dağıtmak üzere tasarlanmış, değişmez, merkezi olmayan bir kayıt öneriyoruz. Değer, grafiğe temel kütüphaneler gibi tepe noktalarından girebilir ve kayıt defteri açık kaynak grafiğin tamamını bildiğinden bu paketlerin bağımlılıklarına ve bunların bağımlılıklarına yinelemeli olarak dağıtılabilir.

Ek olarak, protokolün Katkı Kanıtı tarafından sağlanan bilgilerin, geliştiricilerin bir projeye ve yazarına güvenip güvenemeyeceklerini değerlendirmeleri için mevcut olması gerektiğine inanıyoruz. Bu bilgiler; itibara, topluluk övgülerine, merkezi olmayan kimlik (" DID ") sistemlerinden alınan verilere, diğer paket yöneticilerine veya potansiyel olarak ağ katılımcılarının değeri riske atmasına dayanan teşvik mekanizmalarına dayanabilir .

Çayın araç, bilgi ve ödül kombinasyonunun geliştiricileri haklı olarak teşvik edeceğini, yazılım tedarik zincirinin güvence altına alınmasına yardımcı olacağını, açık kaynaklı yazılımın büyümesini teşvik edeceğini ve yeniliği teşvik edeceğini tahmin ediyoruz.

Merkezi Olmayan Kayıt Defteri
Her paket yöneticisinin aynı meta verileri tekrar tekrar kopyalayan kendi paket kaydı vardır. Bazı durumlarda, bu kayıt defteri projenin manifest dosyasından farklı bilgiler içerebilir ve böylece kötü aktörlerin kullanıcının haberi olmadan zararlı kod eklemesine olanak tanıyabilir. Artık ona bağlı olan topluluklar tarafından tasarlanıp yönetilen tek, kapsamlı ve kesin bir kayıt defterinin olmasının zamanı geldi. Bu merkezi olmayan, değişmez kayıt defteri, güvenlik, istikrar sağlayabilir ve kötü niyetli niyetleri önleyebilir.

İnternet on binlerce hayati önem taşıyan açık kaynak bileşen üzerinde çalışır. Şu ana kadar temel açık kaynak altyapısının kaldırılmasından kaynaklanan olayların minimum düzeyde olması dikkat çekicidir. Bunlardan en ünlüsü, 2016 yılında NPM sol tuş bağımlılığının kaldırılmasıydı ; bu durum, sürekli entegrasyon ve sürekli dağıtım sistemlerine kademeli olarak aktarılarak geliştiricilerin günlerce başıboş ve başıboş kalmasına neden oldu. Bu olay, İnternet'in kendisinin kırılgan gelişim sistemlerine dayandığını gösterdi. Diğer örnekler arasında, paket bakımcılarının popüler paketlerini sabote eden aktif veya kasıtlı katılımı (bkz. colours.js ve faker.js ve ayrıca node-ipc ) veya paketlerin bakımına yardımcı oluyormuş gibi yaparak ve onları çalmak için bozarak kar elde etmek isteyen kötü aktörler yer alıyordu. , örneğin, Bitcoin özel anahtarları (bkz . olay akışı ) veya kullanıcıları bunları yüklemeleri için kandırma umuduyla " yazım hatası " olarak da bilinen kasıtlı yazım hatası içeren kötü amaçlı paketler (örneğin , crossenv ve cross-env NPM paketleri) .

Sektör, dijital varlıkların yazılımın bir parçası olduğu bir geleceğe doğru ilerledikçe yazılım bütünlüğünün garanti altına alınması gerekiyor. Yazılımı değiştiren kötü niyetli aktörlere karşı kendimizi savunmasız bırakmaya devam edemeyiz.

Paket yöneticisi dediğimiz çoğu araç, uygulamalarda ve dApp'lerde yerleşik olarak bulunan bu paketlerin, orijinal yazarları tarafından yayınlanan değiştirilmemiş açık kaynak kod olduğunu garanti edemez. Microsoft GitHub, yazılımdaki güvenlik açıklarının %17'sinin kötü amaçlı amaçlarla yerleştirildiğini ve bazılarının uzun süreler boyunca tespit edilmeden kaldığını tespit etti (Bkz. Webmin 1.890 ).

Bir itibar sistemiyle güçlendirilmiş ve kötü aktörleri ortaya çıkarmak ve iyi olanları ödüllendirmek için tasarlanmış teşviklerle desteklenen küresel, merkezi olmayan bir kayıt, geliştirici topluluklarının yazılım tedarik zincirini güvence altına almak için aradıkları garantileri sağlayabilir.

Depolama Sistemi
Açık kaynaklı projeler, bazıları kısıtlanmış veya istenmeyen olabilecek geniş bir işlevsellik yelpazesi sunar. Şifreleme bunun mükemmel bir örneğidir. Şifrelemenin kritik bir kullanım durumu, dünya çapında bireylerin gizliliğinin desteklenmesidir. Bununla birlikte, şifreleme kötü amaçlarla da kullanılabilir (bkz. Mart 2018'de kolluk kuvvetleri tarafından dağıtılan Phantom Secure ) veya yasa uygulama faaliyetlerini desteklemek için tehlikeye atılabilir (bkz. Ironside Operasyonu (AFP), Greenlight Operasyonu (Europol) ve Operasyon FBI'ın "şifreli" bir iletişim platformu olan AN0M'yi işlettiği ve suçluları güvenli iletişim için "şifreli" telefonlarını kullanmaya ikna ettiği Trojan Kalkanı (FBI) .

Şifrelemenin geniş uygulamaları, onu açık kaynaklı yazılım için mükemmel bir kullanım örneği haline getirdi ve paketleri saklayan herhangi bir çözümün kurcalamaya ve sansüre karşı dayanıklı olması gerektiğine dair harika bir örnek. çay, paketleri işlevlerine göre filtrelemeyi veya onaylamayı amaçlamayan merkezi olmayan bir protokoldür. Çay yönetişimi, kanıtlanmış kötü amaçlı paketleri kaldırmayı seçebilse de ( daha fazla bilgi için yönetim bölümüne bakın), çay sisteminin, bir paketin değiştirilmediğini ve doğru şekilde kopyalandığını gösteren merkezi olmayan sistemler de dahil olmak üzere birden fazla depolama sistemine bağlanması kritik öneme sahiptir. Paket bakımcıları, paketlerini güvenli bir şekilde saklama ve dağıtma ihtiyaçlarına en uygun depolama sistemini seçebilirler.

Protokole Genel Bakış
Açık kaynak katkılarını ödüllendirecek bir protokol tasarlamak zorlu zorlukları beraberinde getirir. Evrensel olarak erişilebilir olan açık kaynaklı yazılım, yanlış atıf, tahsis ve kötü niyetli tahrifatlara karşı hassastır. Bununla birlikte, açık kaynak topluluğu, iyi aktörleri öne çıkarma ve kötü aktörleri açığa çıkarma konusundaki istekliliğini sürekli olarak göstermiştir. Tarihsel olarak, bulguların raporlanması ve savunulması ne kadar zaman alıcı ve önemli olsa da, diğer geliştiricilerin katkılarını incelemek ve bunlara yorum yapmak için harcanan enerji kesinlikle gönüllülük esasına dayalıydı.

Açık kaynak geliştiricilerin yarattıkları değeri güvenilmez bir şekilde yakalamalarına olanak tanıyarak yazılım tedarik zincirinin sürdürülebilirliğini ve bütünlüğünü artıran itibar ve teşviklerle güvence altına alınan merkezi olmayan bir protokol oluşturmayı amaçlıyoruz. Açık kaynak katkıları için yeterli ödüllerin, hem bir itibar sistemi hem de topluluk üyelerinin bir projeye veya bir geliştiricinin çalışmasına yönelik bulgularını ve desteklerini (veya muhaliflerini) iletme yeteneği olmadan başarılı olamayacağına inanıyoruz. Ayrıca geliştiricilere bu itibar sistemine erişmeleri ve katkıda bulunmaları için araçlar sağlamalıyız. Projelerindeki tüm bağımlılıkların sürümüne ve itibarına basit görsel ve programlanabilir erişim içeren araçlar.

Her projeyi desteklemek için topluluk üyeleri tarafından stake edilen TEA tokenlerinin şeffaflığı, her projenin itibarını artırır; tıpkı bir paket bakımcısının kendi çalışması için stake ettiği token sayısının, projeye olan bağlılığını işaret ettiği gibi. Bu birleştirilmiş veri noktaları, tüm topluluk üyeleri için bir itibar sisteminin bilgilendirilmesine yardımcı olacak ve seçimi kolaylaştıracaktır. Olay akışı paketi hacklemesi paketin kendisi aracılığıyla değil, bağımlılıklarından biri aracılığıyla gerçekleştirildiğinden, tüm bağımlılık katmanlarındaki görünürlük, bu güvenilmez sistemi oluşturmak için hayati önem taşıyacaktır. Ancak sistem tasarlanıp inşa edilirken hesaplama ve işlem ("gaz") maliyetleri gibi hususların öncelikli olması gerekecektir.

Amacımız hem Web 2.0 hem de web3 geliştiricilerini ödüllendirmektir. Her yığının karmaşıklığı ve özellikleri, paketlerin kurulumlarının izlenmesinin bir veya daha fazla kötü aktörün kurbanı olabilmesini sağlar. Buna, rakamları yapay olarak şişirecek tesislerin "satın alınması" da dahildir. Daha da kötü bir senaryo, lisans anahtarları veya diğer dağıtım izleme mekanizmalarıyla gereksiz sürtüşmeler yaratarak açık kaynaklı yazılımın doğasında temel değişiklikler yapmak olabilir. En geniş kapsamı sağlamak için, ödüllerin basit bir kurulum takibi kavramına dayanmaması gerektiğine, bunun yerine kaliteli paketlerin sunulmasını ve kötü veya yüksek riskli paketlerin bildirilmesini teşvik eden teşvik mekanizmalarına dayanması gerektiğine inanıyoruz. Son olarak, birçok paket ortak bağımlılıklara dayanır. Örneğin, lodash'ın 176.308 açık kaynaklı bağımlısı varken, tebeşirin 100.247 bağımlısı var veya log4js'nin 3.809 bağımlısı var. Aynı bağımlılıklar kullanılarak daha fazla paket oluşturuldukça ödüllerin adil ve eşitlikçi bir şekilde dağıtılmasını nasıl sağlayabiliriz? En çok kullanılan bağımlılıkların, yeni veya ortaya çıkan paket ve geliştiricileri aç bırakmadan ödüllendirilmesini nasıl sağlayabiliriz? Teşvik sisteminin, geliştiricileri niş dillerden uzaklaştırıp onları teşviklerin daha iyi olduğu yerlerde merkezileştirmesine yol açmamasını nasıl sağlayabiliriz? Ancak geliştiriciler olarak, alternatifler (bu paketlerin daha yalın, daha verimli, daha iyi kodlanmış versiyonları) oluşturmak için en fazla bağımlıya sahip paketleri nasıl tanımlayacağız?

Çayda görünürlük ve teşvik eksikliğinin açık kaynaklı yazılımın gelişimini engellediğine inanıyoruz. Doğru teşvikler ve ödüllerle desteklenen daha fazla geliştirici, dünyanın daha iyi hale getirilmesi için açık kaynaklı yazılım oluşturabilecek, iyileştirebilecek ve geliştirebilecek konumda olacak.

Katkı Kanıtı
Bu teknik incelemede, tüm projelerin tüm açık kaynak sistemlerdeki etkisini ölçmek için tasarlanmış yeni bir fikir birliği mekanizması olan "Katkı Kanıtı"nı öneriyoruz.

Katkı Kanıtı, her açık kaynak projesinin zaman içindeki daha geniş açık kaynak ekosistemindeki yönelimine ve kullanımına dayalı olarak projenin teaRank'ı olarak adlandırılan dinamik bir puan atar.

Bu yaklaşımın, (kamuoyunun en görünür katmanı olan ve ilginin çoğunu çeken) uygulama katmanından çok uzaktaki temel yazılımlara fayda sağladığına ve bir projenin tüm bileşenlerinin (en üstten başlayarak) garanti altına alınmasını sağlayacak şekilde ödül mekanizmasını genişlettiğine inanıyoruz. Ağacın tabanına kadar olan kısmı katkılarından dolayı ödüllendirilir.

TeaRank, her projenin puanını hesaplamak için Google'ın PageRank algoritmasının attığı temeli temel alır. Google'ın PageRank'ı, arama ürününün tanımlayıcı bileşenidir ve web sayfalarının grafik benzeri yapısı üzerine kurulmuştur. PageRank, özünde, bir grafikteki düğümlere puanlar atayan ve grafikte rastgele gezinen herhangi bir şeyin belirli bir düğüme ulaşma olasılığını temsil eden bir olasılık dağıtım algoritmasıdır. Bu algoritma özellikle internet gibi grafik benzeri bir veri yapısında etkilidir, çünkü her bir düğümün (veya web sayfasının) etkisini, kenarların (bağlantıların) miktarına ve kalitesine göre ölçer. Bu algoritma, web'in topolojisini daha iyi ayırt etmek ve web sayfaları arasındaki sahte bağlantıları belirlemek için zamanla değiştirildi ve çeşitli saldırıların azaltılmasına olanak tanıdı.

İnternetin grafik yapısı ile Çay Protokolü'nün merkezi olmayan kayıt sistemi dikkate değer benzerlikler taşıdığından, PageRank başlangıçta analiz için umut verici bir yaklaşım gibi göründü. Ancak daha fazla deneme yapıldığında PageRank'in spam önleme stratejilerinin açık kaynağa uygulandığında daha az etkili olduğu ortaya çıktı.

Temel ayrım açık kaynaklı yazılım meta verilerinde yatmaktadır. Web sayfalarının aksine, kod satırları ve taahhüt mesajları gibi çoğu açık kaynak paket meta verileri kullanıcı tarafından oluşturulur ve sahteciliğe karşı hassastır. Paket yöneticileri, kötü niyetli aktörlerin kayıt defterini kimlik avı bağlantıları veya diğer zararlı içerik içeren paketlerle doldurduğu spam kampanyalarına karşı savunmasızdır. Paket yöneticisi kayıtları ayrıca belirli projelerin bağımlılıklarını da hatalı şekilde yansıtabilir. " Açık kafa karışıklığı " olarak bilinen bu sorun, kötü aktörlerin kötü amaçlı kodlar yerleştirmesine veya üçüncü taraf bağımlılıklarının etkisini yapay olarak şişirmesine, genellikle kötü niyetli amaçlarla izin verebilir.

Bu spam paketlerini tanımlama ve ele alma gibi zorlu görev genellikle güvenlik firmalarına veya fedakar bireylere düşüyor; bunların hiçbiri açık kaynakta spam saldırılarıyla mücadele etmek için ölçeklenebilir bir çözüm sunmuyor.

Katkı Kanıtı, spam paketlerinin tanımlanması ve izolasyonunu ele almak ve yalnızca etkili projelerin adil bir ödül almasını sağlamak için özel olarak tasarlanmış bir algoritmadır. Katkı Kanıtı algoritmasının ayrıntıları özel bir teknik makalenin konusu olacaktır.

Ağ Katılımcıları
Bu teknik incelemede katılımcıları katkılarına göre ayırıyoruz. Bazıları koda katkıda bulunabilir veya katkıda bulunulan kodu doğrulayabilir. Diğerleri geliştiricileri ve itibarlarını destekleyebilir.

Paket Bakımcıları
tea, paket yaratıcılarının çalışmalarını sürdürdüğünü varsayar. Bu teknik incelemede onlardan "paket koruyucuları" olarak bahsedeceğiz.

Paket bakımcıları, sektör geliştikçe yazılımlarının artan değer sunmaya devam etmesini sağlamalıdır. Onlar, devam eden katkılarından dolayı güçlendirilmesi ve ödüllendirilmesi gereken açık kaynak topluluklarının temel direkleridir. Ancak paket bakımcısı bakım çalışmalarını durdurmaya karar verebilir veya proje kullanıcılarının beklentilerine uygun bir hızda çalışamayacaklarını fark edebilir. Sürekliliği sağlamak için, projelerinin kontrolünü başka bir geliştiriciye veya geliştirici grubuna devretme, böylece onları bakımcı olarak atama ve onlara projeyle ilişkili mevcut ve gelecekteki ödüller üzerinde sahiplik ve kontrol verme becerisine sahip olmaları gerekir.

Benzer şekilde, bir geliştirici, mevcut projeyi çatallayarak ve ilerlemeye devam edecekleri yeni bir projeyi kaydederek paket koruyucusu rolünü üstlenmeye ve böylece paket koruyucusu olmaya karar verebilir. Kaydolduktan sonra, teaRank'ı yönetişim tarafından tanımlanan eşiği aşan projeler, eski çatallı projeye paralel olarak, protokolün Katkı Kanıtı algoritması aracılığıyla çay Protokolünden ödüller almaya başlar. Açık kaynak topluluğu eski projeden daha yeni yinelemeye doğru kaydıkça, Katkı Kanıtı algoritması eski projeye tahsis edilen ödülleri kademeli olarak azaltırken yeni çatallanmış projeye atanan ödülleri artıracaktır.

Geliştirici topluluklarına, hangi projelerin sürdürüldüğünü ve bunların geçmiş ve şimdiki yürütücülerinin itibarını ve iş kalitesini belirlemek için doğru araçları sağlamak önemlidir. Açık kaynak çalışmalarının tahrif edildiğini ve birçok kişinin çabalarının kötü aktörler tarafından mahvolduğunu çok sık gördük. Her ne kadar bu kötü aktörlerin çalışmaları büyük ölçüde keşfedilip düzeltilse de, bu genellikle mali veya veri kaybı nedeniyle ciddi hasar meydana gelene kadar gerçekleşmez. Örneğin, haftada 1,5 milyondan fazla indirilen ve bir bilgisayar korsanının açık kaynaklı projeye sızmayı, orijinal yazarının güvenini kazanmayı ve olay akışını değiştirmeyi başardığında 1.500'den fazla paket tarafından güvenilen olay akışı npm paketini ele alalım. bitcoin cüzdanı kimlik bilgilerini üçüncü taraf bir sunucuya sızdıracak kötü amaçlı bir pakete bağımlı olmak. Araçlar, bu saldırılardan bazılarının tespit edilmesine yardımcı olsa da, bunlara her zaman güvenilemez; bu da, bütün bir topluluğun, bulgularını paylaşma konusundaki çabasına ve istekliliğine bağımlı hale gelmesine neden olur.

Açık kaynak topluluklarını bulgularını yapıcı bir şekilde raporlamaya teşvik etmek için " TEA belirteci " bölümünde açıklanan TEA belirteci aracılığıyla teşvikler sunmayı öneriyoruz , böylece paket sahipleri istismar edilmeden önce bunları ele alabilirler.

Paket Kullanıcıları ve çay topluluğu üyeleri
"Paket kullanıcıları" belirli bir sorunu çözmeye odaklanan yazılım geliştiricilerdir. Paket bakımcılarının çalışmalarından doğrudan yararlanarak, hızlı bir şekilde deneme yapmak ve çok az maliyetle veya hiç maliyet olmadan yinelemek için ihtiyaç duydukları araçları genellikle açık kaynak topluluğuna ararlar.

En üstteki 30 paket yöneticisinde erişilebilen 10 milyondan fazla paket varken, açık kaynak projelere evrensel değer atfedilmesinin olmayışı, geliştirme için güvenli ve verimli paketlerin seçimini yüksek riskli ve göz korkutucu bir çabaya dönüştürebilir. Değeri atfetmek ve ölçmek için gözle görülür hiçbir araç olmadığında, paket kullanıcıları, geliştirmeleri için güvenli paketleri verimli bir şekilde nasıl seçecekler?

Çay Protokolünün Katkı Kanıtı algoritmasının diğer teşviklerle birlikte paket kullanıcılarına kendi projelerinin temelini hızlı ve dikkatli bir şekilde seçmeleri için ihtiyaç duydukları bilgileri sağlayabileceğine inanıyoruz.

Proje Destekçileri
Web 2.0 ve web3'te, genellikle "sponsorlar" olarak adlandırılan paket kullanıcılarının bir alt kümesi, paket bakımcılarını bağışlar veya diğer ücretlendirme biçimleri yoluyla desteklemeyi seçmiştir; ancak bu nadiren böyle olmuştur.

Bu "proje destekçileri", ticari ürünlerini oluşturmak için açık kaynaklı yazılım kullanan kuruluşlar veya açık kaynaklı proje kullanıcıları, ekosistemi desteklemek isteyen hayırseverler veya daha büyük bir sistemin bileşenlerini geliştirmek için ekiplere fon sağlamak isteyen girişimcilerdir.

tea, açık kaynak proje destekçileri topluluklarını ister kuruluşlar, geliştiriciler, kullanıcılar veya teknoloji meraklıları olsun tüm çay topluluğuna genişletmeyi öneriyor. tea'nin hedefi, açık kaynağın sürekli sürdürülebilirliğine ve sürekli büyümesine katkıda bulunmak amacıyla çay topluluğunun herhangi bir üyesi için TEA tokeninin benzersiz kullanım durumları aracılığıyla merkezi olmayan teşvik mekanizmalarını uygulamaktır. Proje destekçileri, çalışmalarına, inançlarına veya kararlarını etkileyecek herhangi bir kriter ve ölçüt temelinde hangi projeyi veya paket koruyucusunu desteklemek istediklerine karar vermekte özgürdür. Ayrıca proje destekçileri bu projeleri nasıl desteklemek istediklerine karar vermekte özgürdür.

Sponsorluk, açık kaynak gelişimini desteklemek için etkili bir sistem olabilir; ancak bu sponsorluklar genellikle tüm bağımlılıkları kapsamaz. Bu sınırlama favorilere fayda sağlar ve inovasyonun ve yazılım geliştirmenin önüne geçer. Yazılım geliştirmenin temeli olarak çabalamak için açık kaynak, kuledeki tüm katmanlardaki yeni başlayanlar veya uzmanlar olsun tüm geliştiricilere güç vermelidir.

Yazılım tedarik zincirinin sürdürülebilirliğini ve bütünlüğünü desteklemek ve açık kaynak geliştiricilerin yarattıkları değeri yakalamalarını sağlamak için tea, desteğin bir projenin tüm yönleriyle fayda sağladığı mekanizmalar kurmayı hedefliyor. Destekçilerden gelen destek, projenin bağımlılıkları boyunca ağacın tepesinden tabanına kadar kademeli olarak yayılacaktır. Bu, paket bakımcısının yığınları hakkında bilinçli seçimler yapma becerisine dolaylı olarak güven verir ve böylece itibarlarını artırır.



Şekil 2 - Bağımlılıklar arasında ödül dağılımı

çay tadımcıları
Yeni projeler veya mevcut projelerin yeni versiyonları yayınlandıkça, çalışmanın geçerliliğinin kanıtlanabilir bir şekilde ortaya konması gerekmektedir. Bu bilgi, paket kullanıcılarının pakete ve onun bakımcılarına güvenip güvenemeyeceklerine karar vermeleri açısından kritik öneme sahiptir. Çay Protokolünde bu fonksiyon “çay tadımcıları” tarafından sağlanmaktadır.

Çay tadımcıları genellikle zamanlarının bir kısmını bir paketle ilgili talepleri (işlevsellik, güvenlik, anlamsal versiyonlama , lisans doğruluğu vb.) kontrol etmeye ayırmaya ve sonucu göstermek için hem itibarlarını hem de TEA tokenlerini riske atmaya istekli deneyimli yazılım geliştiricilerdir. araştırmalarını değerlendirin ve incelemelerini destekleyin. Çay Protokolünde "çayınızı bahise koymak", incelemelerinizi desteklemek için TEA tokenlerini kilitleme sürecidir; incelemelerinizin kalitesi hakkındaki fikir birliğine bağlı olarak potansiyel olarak ödüller kazanma veya cezalarla karşılaşma olasılığı vardır. çay tadımcıları ayrıca hataları veya güvenlik açıklarını paket yöneticilerine gizli olarak bildirme seçeneğine de sahiptir. Geçerli raporlar proje hazinesinden ödüllerle sonuçlanırken, geçersiz raporlar çay tadımcısının hisselerinin kaybedilmesine neden olur. Son olarak, eğer paket sağlayıcıları bildirilen bu sorunları göz ardı ederse, bu durum projenin hazinesi için cezaları veya "kesintiyi" tetikler.

Proje destekçileri gibi çay tadımcıları da bir projeyi ve paket bakımcısının itibarını etkileyebilir; ancak bir projenin güvenliğini, işlevselliğini ve kalitesini doğrulamadaki rolleri göz önüne alındığında etkileri daha önemlidir. Çay tadımcılarının iddialarını desteklemek için itibarlarını da geliştirmeleri gerekecek. Çalışmalarının kalitesi ve incelemelerini diğer dış veri kaynaklarıyla birleştirerek riske attıkları TEA tokenleri, her çay tadımcısının itibarını artıracak ve çalışmalarına daha fazla değer katacaktır. Bir projeyi ve paket bakımcısının itibarını etkilemek için kullanılan mekanizmalar hakkında daha fazla ayrıntı için " Paket ve Paket Bakımcısının İtibarı " bölümüne bakın.

Proje Kaydı ve Katkı Belgesi Ödülleri
Bir proje sürümünün kaydedilmesi birden fazla işlemin atomik olarak gerçekleşmesini gerektirir. Özellikle:

Paket koruyucusu projeyi merkezi olmayan kayıt defterine kaydetmelidir,
Çay Protokolü, paket bakımcıları tarafından tanımlanan kurallara göre paket bakımcıları tarafından sahip olunan, kontrol edilen ve yapılandırılan bir proje hazinesini başlatmalı ve
Çay Protokolü, hazinenin benzersiz adını Ethereum Adlandırma Hizmeti veya ENS'ye kaydetmeli, böylece hazine ile tüm kullanıcı etkileşimleri basitleştirilmelidir.
İşlemlerden herhangi birinin başarısız olması, protokolün önceki durumuna dönmesine neden olacaktır.

Yönetişim tarafından tanımlanan eşiği aşan bir teaRank'e sahip bir projenin başarılı bir şekilde kaydedilmesi üzerine, çay Protokolü, Katkı Kanıtı ödüllerinin proje hazinesine dağıtımını başlatır. Bu ödüllerin, çay Protokolü tarafından kontrol edilen ve TEA tokenlarının toplam arzından tahsis edilen önceden tanımlanmış bir token havuzundan önceden belirlenmiş bir eğriyi takip ederek dağıtılmasını öneriyoruz.

Paket koruyucularının, proje hazinesi tarafından alınan Katkı Kanıtı ödüllerinin bir kısmını tutarlı bir şekilde stake ederek projelerinin itibarını ve güvenilirliğini güçlendirmeleri gerekmektedir. Ağ katılımcıları, stake edilen her token için, çay Protokolünün yönetimine katılmak üzere devredilemeyen bir "stake edilmiş TEA" veya 1:1 oranında stTEA alacaklar. Protokol kurallarına uygun olarak, paket bakımcılarının hataları veya güvenlik açıklarını giderememesi durumunda, bu stake edilen ödüller ve bunlara karşılık gelen stTEA, indirime (“kesme”) veya yeniden dağıtıma tabi tutulabilir.

Son olarak, yönetişim kurallarında tanımlanan minimum bahisli hazine oranının sürdürülememesi, projeye Katkı Kanıtı ödül dağıtımının askıya alınmasıyla sonuçlanacaktır. Bunun yerine, bu ödüller uyumlu projeler arasında yeniden dağıtılacak.

Paket ve Paket Bakımı İtibarı
Yalnızca yazarın ekonomik katkısına dayanan bir itibar sistemi, yeterli kullanıcı koruması sağlamaz ve Sybil saldırılarına maruz kalabilir; tek bir kişi, çalışmaları hakkında çok sayıda olumlu yorum bırakmak için kendisinin birden fazla temsilini oluşturur ve kullanıcıları kandırarak buna inanmalarını sağlar. çalışmaları birçok kişi tarafından incelendi ve onaylandı.

Sybil saldırılarını önlemek için çeşitli metodolojiler mevcuttur; bunlardan bazıları Nitish Balachandran ve Sugata Sanyal tarafından " Sybil Saldırılarını Azaltmaya Yönelik Tekniklerin Gözden Geçirilmesi " kitabında açıklanmıştır . Çay merkezi olmayan bir protokol olduğundan, merkezi bir sertifika verme otoritesine dayanan bir güven sertifikasyon sistemi kullanmak, bu sistemin özüne aykırı olacaktır. Sybil saldırılarının azaltılmasına yönelik merkezi olmayan yaklaşımlara ve daha spesifik olarak, her paketin ve bakımcısının itibarını değerlendirmek ve kamuya açık bir şekilde temsil etmek için teşvik edilen büyük bir ağ katılımcısı grubuna dayanan metodolojilere odaklanmayı öneriyoruz.

Üretmeyen düğümlerin başkalarının çalışmalarını doğrulayabildiği ve gerektiğinde ağ kurallarının ihlalini vurgulayarak kötü aktörün cezalandırılmasına yol açan, hisse kanıtı blok zincirindeki blokların üretilmesine benzer. kesinti (hisselerinin bir kısmının imhası), çay tadımcıları gibi üçüncü tarafların paket bakımcıları tarafından üretilen paketleri inceleyebileceği ve açık kaynak yazılımın çıkarına en uygun şekilde davranmaya teşvik edilebileceği bir sistem öneriyoruz. topluluk ve onun kullanıcılarının yanı sıra iyi davranışları tanır ve kötü davranışları cezalandırır. Bu sistem hem Sybil'e dayanıklı olmalı hem de büyük token sahiplerinin protokolü veya belirli paketlerin itibarını maddi olarak etkilemesini önlemelidir. Bu yaklaşımın açık kaynakla daha uyumlu olacağına, benimsenmeyi ve güveni teşvik etmek için daha verimli bir alt tabaka sağlayacağına ve sonuçta çayın büyümesini kolaylaştıracağına inanıyoruz.

Ek olarak, çay topluluğunun herhangi bir üyesinin itibarı önemli aşamalara ulaştığında, onlara protokolün üst düzey bölümlerine erişim izni verilebilir.

Üçüncü Tarafların Paket İncelemesi
Paketlerin üçüncü taraflarca incelenmesi itibar oluşturmanın ve yazılım tedarik zincirinin güvenliğinin önemli bir bileşenidir. Ancak üçüncü taraf incelemeleri, yukarıda bahsedilen Sybil saldırıları da dahil olmak üzere kendilerine özgü tehditlerle birlikte gelir.

Blockchain teknolojisi ve daha açık bir şekilde stake etme, çayın bu zorluğun üstesinden gelmesi için eşsiz bir fırsat sunuyor. Cüzdan adresleri sonsuz miktarda mevcut olsa da toplam arzının 10 milyar olması beklenen TEA tokenlarında durum böyle değil. Ek olarak, geliştiriciler tarafından gerçekleştirilen paketlerin gönderilmesi, doğrulanması veya stake edilmesi gibi her eylem, itibarlarına katkıda bulunacak ve böylece her geliştiricinin hem çay topluluğuna katkıda bulunmak hem de çay yönetimine katılmak için kullanabileceği benzersiz bir profil oluşturacaktır.

Üçüncü taraf incelemecilerin TEA tokenlerini stake etmelerini ve ağın çıkarlarına aykırı davranmaları veya kötü bir aktör olmaları durumunda hisselerinin bir kısmını kaybetme riskine maruz kalmalarını talep ederek, üçüncü taraflar bir pakete ek güven sağlayabilir ve alabilirler. TEA jetonları şeklinde bir ödül.

Ayrıca itibar sisteminin, paketlerin bağımsız doğrulamasını gerçekleştiren üçüncü taraflara (çay tadımcıları) da genişletilmesini öneriyoruz. Olumlu bir incelemenin tamamlanması iki işlemin atomik olarak gerçekleşmesini gerektirecektir:

Çay tadımcısı tarafından imzalanan ve topluluğun tüm üyelerinin erişimine açık olan kod incelemesinin sunulması,
İncelemelerini kanıtlamak için paketi stake etme eylemi.
Bir veya daha fazla kritik güvenlik açığını içeren olumsuz bir incelemenin tamamlanması, çay tadımcılarının öncelikle bir mesajlaşma protokolü kullanarak paket sorumlusuyla iletişime geçerek onları güvenlik açığı konusunda bilgilendirmesini ve sorunu zamanında çözmelerine olanak sağlamasını gerektirecektir. Paket sorumlusuna güvenlik açığını gidermek için tahsis edilen yönetişim tanımlı sürenin sona ermesi üzerine veya düzeltilmiş paket kullanılabilir hale geldiğinde, bu paketin kullanıcılarına ve testçilerine (bağımlı kişiler dahil) bir güvenlik açığının tespit edildiğini bildirmek için aynı mesajlaşma protokolü kullanılacaktır. ve umarız ki ele alınır, böylece uygulamalarını veya bağımlılıklarını güncellemeyi bilirler. Geliştiricilerin zamanını boşa harcamayı engellemek için, çay tadımcıları ile paket bakımcıları arasındaki iletişim, çay tadımcılarının TEA tokenlarını stake etmelerini gerektirecektir.

Her iki işlemin tamamlanmasının ardından çay tadımcıları, belirli paket ve paket versiyonu üzerindeki çalışmalarının kanıtı olarak bir NFT alacaklar. NFT'lerin birikimi, incelenen her paketin stake oranı ve harici sistemlerden alınan bilgilerle birleştiğinde, çay tadımcısının itibarı hakkında bilgi sahibi olunacaktır. İtibarları önemli dönüm noktalarına ulaştıkça çay tadımcıları, çay yönetiminin kararına göre protokolün yükseltilmiş bölümlerine erişim kazanabilir veya protokolden hızlandırılmış ödüller kazanabilir.

Eski veya Bozuk Paketler
tea'nin misyonu, açık kaynak geliştiricilerin yarattıkları değeri yakalamalarına olanak tanıyarak yazılım tedarik zincirinin sürdürülebilirliğini ve bütünlüğünü geliştirmek; ancak ödüller paket bakımcıları ve çay tadımcıları tarafından gösterilen çabalarla orantılı olmalıdır. Bakımı yapılmamış, eskimiş veya bozulmuş paketler, paket koruyucularının topluluğun beklentilerini karşılayamadıklarının veya paketlerin stake edilmesi yoluyla kendilerine duyulan güveni ve desteği karşılayamadıklarının açık göstergeleridir. Güncelliğini yitirmiş paketlerin başka bir belirtisi, eski bir dilin veya çok sürümlü dillerin eski sürümünün sürekli olarak kullanılması olabilir. Paketlerin çok uzun süre eskimiş veya bozuk kalması, çay tadımcılarının paket bakımcılarının çalışmalarını düzenli ve tutarlı bir şekilde gözden geçirmeleri gerektiğini göstermektedir.

Çay tadımcıları, açık kaynak topluluklarında çok önemli bir rol oynamaktadır; çünkü onların incelemeleri ve ilgili iddiaları, paket kullanıcılarını etkileyerek onları belirli paketlere doğru veya belirli paketlerden uzaklaştırabilir. İncelemelere sürekli olarak güvenilebilmesini sağlamak için, çay tadımcıları tarafından gönderilen incelemelerin stake edilmiş TEA tokenleri ile ilişkilendirilmesini gerektiren bir mekanizma öneriyoruz. Eski veya bozuk paketler hazinelerinin bir kısmının kesilmesine neden olurken, bir kısmı da herhangi bir paketin bakımsızlığını ilk fark eden çay tadımcısına gönderilir.

Paketlerin popülaritesi ve kullanımı arttıkça, daha fazla uygulama ve potansiyel olarak görev açısından kritik sistemler bunlara bağlı olarak, geliştiricileri kusurları paket bakımcısına gizlice bildirmeye teşvik etmeli ve paket bakımcılarını bu tür kusurları istismar edilmeden önce gidermeye teşvik etmeliyiz. Sonuç olarak, sıfır gün güvenlik açığı veya güncel olmayan bir bağımlılığın kullanımı gibi bir kusurun ana hatlarını çizen ve yönetişim tarafından tanımlanan yetkisiz kullanım süresinin ötesinde açık kalan herhangi bir olumsuz incelemenin, paket bakımcısı açısından bir başarısızlık olarak değerlendirilmesi ve değerlendirilmesi gerektiğini öneriyoruz. Kesilen jetonların bir kısmını alan kusuru bildiren ilk çay tadımcısı ile aynı cezalara tabidir.

Aynı şey, itibarlarını ve TEA tokenlerini gecikmiş paket bakımcılarının çalışmalarına yatıran ve bunun için ödüller alan paket destekçileri için de söylenebilir. Bakım eksikliğini tespit edemedikleri veya buna rağmen paketi desteklemeye devam etmeyi seçtikleri için, tüm kesinti faaliyetlerinin paketin destekçilerini kapsayacak şekilde genişletilmesini öneriyoruz.

Tüm çay tadımcılarına dağıtım, inceleme yaşlarına ve incelemeleri için stake ettikleri TEA tokenlarının sayısına bağlı olabilir.

ÇAY Jetonu
TEA, çay Protokolünün belirli bölümlerine ve belirlenmiş özelliklerine erişim anahtarı görevi gören bir kriptografik belirteçtir.

TEA token sahipleri şunları yapma olanağına sahiptir:

Paketlerini kaydedin;
TEA tokenlarını belirli paketlere stake ederek paketleri destekleyin;
Paketleri sorgulayarak ve hataları ve/veya güvenlik açıklarını bildirmek için incelemeler gerçekleştirerek yazılım tedarik zincirinin güvenliğine katkıda bulunun.
Tartışıldığı gibi, Çay Protokolü açık kaynak ekonomisinin kilidini açar ve kurumsal yazılım geliştiricileri, bakımcıları ve son kullanıcıları için değer yaratır. Sonuçta, çay Protokolü tarafından yakalanan değer, topluluk ölçeklendikçe token sahiplerine geri döner ve katılımı daha da teşvik eden bir geri bildirim döngüsü yaratır.

Açık Kaynak Geliştiricilerini Ödüllendirmek
Tea'nin Katkı Kanıtı ve staking mekanizmalarının, katılımcılarını tutkularını engelsiz bir şekilde sürdürmeleri için ihtiyaç duydukları kaynaklarla güçlendirerek açık kaynağın büyümesini teşvik etmesini bekliyoruz.

" Proje Kaydı ve Katkı Kanıtı Ödülleri " bölümünde belirtildiği gibi , çay Protokolüne kayıtlı ve yönetişim tarafından tanımlanan eşiği aşan bir teaRank'e sahip projeler, çay Protokolünden TEA tokenleri şeklinde Katkı Kanıtı ödülleri alacaktır. Bu dağıtım, paket protokol kurallarına uygun olduğu sürece devam edecektir. Spesifik olarak, paketin teaRank'i yönetişim tarafından tanımlanan eşiğin üzerinde tutması gerekecek ve paket sahipleri, proje hazinesi tarafından alınan Katkı Kanıtı ödüllerinin bir kısmını sürekli olarak stake ederek projelerin itibarına ve güvenilirliğine katkıda bulunmak zorunda kalacaklar. Bu kurallara uyulmaması, Katkı Kanıtı ödüllerinin dağıtımının askıya alınmasına ve gelecekteki ödüllerin uyumlu projeler arasında yeniden dağıtılmasına neden olacaktır.

Bağımlılıklar bir paketin güvenilirliğini ve güvenliğini önemli ölçüde etkileyebilir ve bir paketin bağımlılıklarının kayıt edilmemesi potansiyel bir risk olarak görülmelidir. Bu bağımlılıkların hem doğrulayıcıları hem de kullanıcıları olan paket bakımcıları, bu bağımlılıkların bakımcılarıyla bağlantı kurma konusunda birinci sınıf bir konumdadır. Onları çayla ilgili projelerini kaydetmeye teşvik edebilirler, böylece çay tadımcılarının gözetimine tabi tutulabilir ve ilgili ödüllere hak kazanabilirler. İtibar sistemini geliştirmeyi amaçlayan bu topluluk çapındaki katılımı teşvik etmek için, çay Protokolüne kayıtlı olmayan bağımlılıkları olan herhangi bir paketin, Katkı Kanıtı ödüllerinin bir kısmının yakılmasını öneriyoruz. Bu yanma, her kayıtsız bağımlılığın teaRank cinsinden ölçülen sayısı ve katkısıyla orantılı olacak ve bu bağımlılıklar kayıtsız kaldığı sürece devam edecektir.

Çok sayıda vaka, güçlü teşviklerin kötü niyetli aktörleri açık kaynaklı yazılımları tehlikeye atmaya teşvik edebileceğini göstermiştir. İnternetin kritik altyapısının çoğu açık kaynak üzerinde çalışıyor ve açıkları ve diğer güvenlik açıklarını bulma yarışı devam ediyor. Çayda, paket koruyucularının suçlanması gereken kişiler olmadığına inanıyoruz (her ne kadar çoğu zaman suçlansa da).

Çay Protokolü'nün teşvikleri, teşviklerin adil ve eşitlikçi bir şekilde dağıtılmasını sağlayarak bu konuyu ele almaktadır. Lodash gibi 176.000'den fazla bağımlıya sahip bir paket, açık kaynak geliştirmenin temel direğidir ve bakımcıları orantılı olarak ödüllendirilmeyi hak eder. Bununla birlikte, yalnızca bakmakla yükümlü olunan kişilerin sayısına dayalı bir ödül sistemi, üçüncü taraflarca yeterince finanse edilmedikçe veya kendi kendini finanse etmek için yeterli kaynak biriktirmedikçe yenilikçilerin bu tekelleri bozmasını önleyecektir. Bu yaklaşım muhtemelen katkıda bulunanların sayısının azalmasına yol açacak ve bu da çayın neyle ilgili olduğunun tam tersiyle sonuçlanacaktır.

Bu sınırlamayı ele almak ve her TEA token sahibini paket bakımcılarını destekleme yeteneği ile güçlendirmek için, tüm ağ katılımcıları tarafından alınan tüm staking ödüllerinin yönetişim tanımlı bir kısmının, stake edilen paketin hazinesine ve bağımlılıklarına yönlendirilmesini de öneriyoruz. .

Yazılım Tedarik Zincirini Güvenceye Almak İçin Staking
Staking, merkezi olmayan bir itibar sistemini desteklemek için etkili bir metodoloji olabilir. Ancak yazılım tedarik zincirinin güvenliğini kolaylaştırmak için çay teşvik dağıtım sisteminin her paketin stake oranını dikkatlice düşünmesi ve her paketin teşvikini buna göre ayarlaması gerekir.

Pek çok uygulamada bağımlılık olarak kullanılan az sayıda paketin çoğu stake etme ödülünü toplama riskini azaltmak için, web3 Foundation tarafından üretilen araştırmada açıklanan yaklaşıma benzer şekilde optimum stake oranının uygulanmasını öneriyoruz .

Bir paket, yönetişim tarafından tanımlanan optimum stake etme oranını aştığında, pakete tahsis edilen toplam stake etme ödülü miktarı, pakete stake edilen TEA tokenlerinin sayısına bakılmaksızın sabit kalacaktır. Paket destekçilerini ve çay tadımcılarını yüksek riskli paketleri daha fazla stake etmekten caydırmak için tasarlanan bu önlem, her paket destekçisinin aldığı stake ödüllerinde doğrusal bir düşüşe yol açacak.

Web3 Vakfı'nın araştırmasında açıklanan gibi eğri tabanlı bir yaklaşım, pakete tahsis edilen stake ödül havuzunun azaltılmasını yavaşlatacak, böylece daha az stake edilen paketlerden uzaklaşmaya ve büyük paketlere daha fazla etki sağlayarak olumsuz dışsallıklar getirmeye devam edecektir. token sahipleri, staking ödül havuzunun dağıtımı konusunda.

Önerilen doğrusal tasarım, daha az istiflenen paketlerin hem paket destekçileri hem de çay tadımcıları için daha çekici hale gelmesine olanak sağlamalıdır. Aynı zamanda deneyimli geliştiricileri yüksek riskli paketlere alternatifler oluşturmaya teşvik ederek çay topluluğunun mevcut yazılımı destekleme ile yeniliği teşvik etme arasında denge kurması için bir fırsat yaratabilir. İlk tasarımında stake oranı dolaşımdaki arz kullanılarak hesaplanacak. Çay topluluğu, sistemin ölçeklenebilirliğini daha da artırmak için bu tasarımı değiştirebilir.

Tıpkı iyi oyuncuların ödüllendirilmesi gerektiği gibi; Kötü aktörlerin tespit edilip cezalandırılması gerekiyor. Açık kaynaklı yazılım, kötü aktörlerin tüm geliştirici topluluğu için sıkıntı noktaları ve itibar riskleri yaratması için birçok fırsat sağlar. İşin kötüye kullanılmasından, yazılım paketlerinin değiştirilmesi ve yeniden dağıtılmasına veya kötü amaçlı kodların enjekte edilmesine kadar, iyi ve kötü aktörler arasındaki savaş, genellikle açık kaynak paketlerinin kirlenmesini bir fırsat olarak gören iyi finanse edilen kötü aktörlerle devam ediyor maddi olarak fayda sağlamak. Paketlerin dijital raflarda potansiyel olarak yasaklanması veya kötü bir üne sahip olması nedeniyle olumsuzluk nispeten minimum düzeyde kaldı.

Kötü niyetli aktörlere doğrudan müdahale etmek ve açık kaynağa aykırı eylemlerin yansımalarını yoğunlaştırmak için, " Üçüncü Tarafların Paket İncelemesi " ve " Güncel Olmayan veya Bozuk Paketler " bölümlerinde ayrıntılı olarak açıklanan kesme mekanizmasını uygulamanızı öneririz.

Çay tadımcıları yeni gönderilen paketlerdeki kodu değerlendirip analiz ederken, çay tadımcılarının zararlı kodu tespit edip vurgulayacak araçları ve teşvikleri almasını öneriyoruz.

Paket kullanıcıları riskler konusunda bilinçlendirilebilir ve
paket bakımcıları ve paket destekçileri kötü amaçlı kod gönderdikleri veya destekledikleri için cezalandırılır.
Bu kapsamda, ağ kuralları uyarınca gerçekleştirilen ve yönetişim tarafından tanımlanan süre içerisinde paket sorumlusu tarafından ele alınan tüm kanıtlanmış olumsuz incelemeler için, paket sorumlusu, olumlu görüş sağlayan paket destekçileri veya çay tadımcılarının aksine herhangi bir cezaya maruz kalmamalıdır. söz konusu paketin incelenmesi.

Ağ kurallarına göre gerçekleştirilen ve paket sağlayıcısının yönetişim tarafından tanımlanan süre içinde ele almadığı olumsuz incelemeler için, projenin hazinesi, paket destekçileri ve önceki çay tadımcıları tarafından stake edilen TEA tokenlerinin bir kısmı kesilecek ve hatayı veya güvenlik açığını belirleyen çay tadımcısı. Diğer bir kısım ise çay yönetimi tarafından kontrol edilen bir sigorta havuzuna kilitlenecek. Çay yönetişimi, havuzun içeriğini güvenlik açıklarından etkilenenlere dağıtmak için toplulukla yakın işbirliği içinde politikalar ve kurallar oluşturacak. Protokol, kesintiye uğrayan TEA tokenlarının üçte birini, olumsuz incelemeye katkıda bulunan tüm çay tadımcılarına dağıtacak.

Kazıklama ve kesme, çay Protokolünün teşvik ve ceza sisteminin hayati bileşenleridir. Paket koruyucularının, hataları veya güvenlik açıklarını gidermeyi ihmal etmeleri durumunda önemli bir riske sahip olmalarını sağlamak için proje hazinesinin bir kısmını hisseye ayırmaları gerekmektedir. Paket kullanıcıları, destekçileri ve çay tadımcıları ayrıca bir paket veya paket bakımcısının itibarına katkıda bulunmak ve yazılım tedarik zincirinin sürdürülebilirliğini ve bütünlüğünü korumak için protokole aktif olarak katılmak için TEA tokenlerini hisselendirebilirler.

Yönetişim bu aktif katılımla yakından bağlantılıdır. Stajlanan her TEA tokenı için katılımcılar, 1:1 oranında devredilemez "stake edilmiş TEA" (stTEA) alırlar ve bu da onların çay Protokolünün yönetimine katılmalarına olanak tanır. Staking ödülleri ve bunlara karşılık gelen stTEA tokenleri, protokol kurallarına uyulmaması durumunda azalma (kesme) veya yeniden dağıtımla karşı karşıya kalabilir, bu da ekosistem içinde hesap verebilirliği güçlendirir.

TEA Token Tedarik Dağıtımı
Protokol tarafından oluşturulan TEA tokenlerinin çoğunluğu, paket bakımcılarını, kullanıcıları ve destekçileri merkezi olmayan ağa değer sağlayan faaliyetler gerçekleştirmeye teşvik etmek için teşvik olarak kullanılıyor. TEA tokenlerinin protokol dahilinde çeşitli paydaşlara dağıtımı bir "dağıtım planı" ile belirlenir.

Ağ teşvikleri doğrudan çay Protokolü tarafından TEA tokenleri şeklinde dört paydaş grubuna dağıtılacaktır:

Paket Bakımcıları;
Paket Kullanıcıları (çay topluluğunun tüm üyelerini içerir);
Proje Destekçileri; Ve,
çay Tadımcılar.
TEA tokenleri aynı zamanda paketleri desteklemek ve yazılım tedarik zincirini staking yoluyla güvence altına almak için kullanılacak; buna bir inceleme yaparak ve hataları veya güvenlik açıklarını bildirerek bir pakete itiraz etme, kayıtlı projelerin açık kaynak geliştiricilerini ödüllendirme ve yönetişime katılma hakkı da dahil. Çay Protokolü.

Çay topluluğunun tüm üyelerine aşağıda açıklandığı gibi maksimum 10 milyar token arzının dağıtılması tavsiye edilir:



Şekil 3 - Maksimum arzın token dağılımı

Maksimum token arzının kabaca %51,4'ü, açık kaynaklı projelerin kod tabanlarına katılması ve korunması için teşviklerin yanı sıra çay DAO aracılığıyla merkezi olmayan oylamalara ve fikir birliğine katkıda bulunmaya yönelik ödülleri içeren "Ekosistem ve Yönetişim"e tahsis edilmelidir. "Ekosistem ve Yönetişim"e tahsis edilen tokenlar, Katkı Kanıtı ödülleri, staking ödülleri ve diğer geliştirici merkezli teşvik türleri olarak dağıtılmalıdır.

Çay Protokolünün sürdürülebilirliğini ve sürekli gelişimini sağlamak için maksimum token arzının yaklaşık %18,6'sı "Protokol Geliştirme"ye tahsis edilmelidir. Yaklaşık %12,7'si “Erken Destekçiler ve Danışmanlar”a ayrılmalıdır. Yaklaşık %11,0'ı Özel satışa, %3,0'ı halka açık satışa ayrılmalı, geri kalan %3,2'si ise token oluşturma olayı meydana geldiğinde piyasa likiditesini desteklemek için tahsis edilmelidir.

Kapsamlı bir Token Dağıtımı ve Emisyon takvimi de dahil olmak üzere ayrıntılı Tokenomikler, özel bir makalenin konusu olacaktır.

Yönetim
Yönetişim, herhangi bir dağıtılmış sistemin geliştirilmesi, sürdürülebilirliği ve benimsenmesi açısından kritik öneme sahiptir.

Çay Protokolünün, TEA tokenlerini stake eden aktif katılımcıların finansal olmayan kritik parametre değişiklikleri önermesine ve oy kullanmasına olanak tanıyan yönetişim mekanizmalarını içermesini öneriyoruz. Oylama süreci, stTEA token sahipliği ve bireysel itibara göre ağırlıklandırılacak.

Protokol parametreleri, belirli paket yöneticilerini destekleme veya yeni protokol özellikleri veya işlevlerini tanıtma önceliğini ve ayrıca dış faktörlerin kullanıcı ve paket itibarı üzerindeki etkisini içerebilir. Bu işlevsellik, kritik parametrelerin zamanla çay topluluğunun aktif üyeleri tarafından geliştirilebilmesini ve optimize edilebilmesini sağlayacaktır. Yönetişimin basit bir yapıyla başlayacağını ve çay sistemi olgunlaştıkça kademeli olarak genişleyeceğini, benimsenmeyi kolaylaştıracağını ve kademeli olarak merkezileşmeyi sağlayacağını öngörüyoruz.

Bazı sistem parametreleri yönetişime tabi olmayabilir veya yönetişimin temsil ettiği saldırı yüzeyini azaltmak için yüksek frekanslı değişiklikleri desteklemeyebilir. Parametrelerin açık, merkezi olmayan yönetişime aşamalı olarak geçişi, sistemin istikrarını ve öngörülebilirliğini sağlayacaktır.

Üçüncü Taraf Genişletilebilirliği
Açık kaynak topluluklarının gecikmiş desteğini harekete geçirmek için ilk araçları oluştururken, misyonumuzun bir kısmının da üçüncü tarafların genel araç setini genişletebilmesini sağlamak olduğuna inanıyoruz. Planlarımız, geliştiricilere protokole uzantılar oluşturmaları için altyapı sağlamanın yanı sıra, yenilik yapmanın yeni yollarını ve açık kaynak geliştiricilere daha fazla destek sağlamanın yanı sıra, diğer paket yöneticilerinin de protokole katkıda bulunma potansiyelini içerir.

Açık kaynak geliştiricilerin hayalleri ve çabaları, günlük yaşamımızı destekleyen yeniliği inşa etti. Çay topluluğu tarafından önerilen çay Protokolü için yeni kullanımları ve uzantıları keşfetmeyi sabırsızlıkla bekliyoruz.

Gelecekteki Çalışmalar ve Potansiyel Toplumsal Çabalar
Çay sistemi olgunlaştıkça, toplumun yönetişim yoluyla çay sisteminin değiştirilmesine ve genişletilmesine karar vereceğini ve katkıda bulunacağını öngörüyoruz. Aşağıda bazılarına ilham verebileceğine inandığımız bazı fikirler yer almaktadır, ancak gelecekteki performansı garanti etmiyoruz.

çay Toptancılar
Açık kaynak yazılım toplulukları canlıdır ve sürekli olarak yenilik yapma ve değer sunma arayışındadır. Bu bağlılık ve fedakarlık, her biri bağımlılık yaratan yeni yazılım ve paketlerin sürekli olarak oluşturulmasına yol açar. Sonuç olarak, bağımlılık haritasının sürekli gelişeceğini, bunun da stake oranı ve ödüllerde sık sık değişikliklere yol açacağını öngörüyoruz. Gelecekte çay topluluğu, her proje için stake oranını dinamik olarak izlemek ve proje destekçilerinin kendi kriterlerine göre TEA tokenlerini nasıl stake edeceklerini yeniden dengelemek için tasarlanmış bir sistemin geliştirilmesini önerebilir.

Paket Transferinde Telif Ücretleri
Paket bakımcılarının ödül akışlarını bir veya daha fazla geliştiriciye aktarmaya karar verebileceklerinin farkındayız. Bu tür bir aktarımın yönetimi, çayın müdahalesi olmaksızın paket sağlayıcısının ve ortaklarının kararı olarak kalmalıdır. Bu tür bir aktarımın tam veya kısmi olması (belki de ödüllerin yalnızca bir kısmının bir veya daha fazla geliştiriciye yönlendirilmesi ve kalan ödüllerin orijinal paket sağlayıcısına akmaya devam etmesi yoluyla) ve staking ödüllerinin dağıtılması için araçların sağlanması gerekecektir. Tek bir ağ katılımcısı, birden fazla ağ katılımcısı tarafından kontrol edilen veya statik veya dinamik oranlar kullanılarak birden fazla hesaba otomatik olarak dağıtılan tek bir hesap üzerinden akış.

Çoklu Bakım Sağlayıcılar Arasında Ödül Dağılımı
Bir paketin bakımı, bir geliştirici ekibinin daha çalışmasına bağlı olabilir. Ödüller akmaya başlamadan önce ekipler değerin kendi aralarında dağılımını otomatikleştirmeyi düşünmelidir. Kimin katkıda bulunduğunu ve nasıl ödüllendirilmesi gerektiğini değerlendirebilecek en iyi konumda olduklarından, dağıtımın nasıl gerçekleşeceğine bakımcıların kendileri karar vermelidir.

Bunu başarmak için her ekip (veya ekipler) kendi merkezi olmayan özerk organizasyonunu ( DAO ) kurabilir ve dağıtımı otomatikleştirebilir veya tüm DAO üyelerinin oyu gibi dış faktörlere dayalı olarak yeterli değer dağılımını belirlemek için daha karmaşık sistemler kurabilir. veya sürekli katkıya, ödüllerin başarıyla tamamlanmasına vb. dayalı zamana dayalı dağıtımlar.

Taşıma Paketi “Çatallar”
Çatalların gerekli olduğuna ve büyük ölçüde yetersiz kullanıldığına inanıyoruz. Fork'lar işlevsellik, performans, güvenlik ve hatta dikkat açısından rekabet eden paketler geliştirmek için etkili bir araç olabilir. Ne kadar faydalı olursa olsun, çatallar orijinal çabaları tanımalıdır. Gelecekteki çalışmalar veya potansiyel katkılar yoluyla, çay topluluğu sistemi, çatalların bildirilmesini, hatta belki bir proje kaydedildiğinde tespit edilmesini gerektirecek şekilde geliştirebilir. Çay tadımcıları tarafından ortaya çıkarılan beyan edilmemiş çatallar, çatalın hazine hissesinin bir kısmının kesilmesine, orijinal paket koruyucusuna aktarılmasına veya çatalı ortaya çıkaran çay tadımcılarına gönderilmesine neden olabilir.

Çalışma Zamanı ve Derleme Bağımlılıkları Karşılaştırması
Tea, lansman sırasında Katkı Kanıtı ödüllerini dağıtırken derleme bağımlılıklarını çalışma zamanı bağımlılıklarından ayırt edemeyebilir. Bununla birlikte, çay topluluğunun böyle bir ayrım yapma konusunda güçlü bir duyguya sahip olması koşuluyla, çay topluluğu, her bağımlılığın kritikliğini ve bunlara bağlı paketlerin bireysel değerine katkılarını hesaba katmak için ödül dağıtım algoritmasında iyileştirmeler önerebilir. Bu öneriler oylanacak ve topluluğun kararına göre uygulanacaktır.

Kullanıma Dayalı Ödüller
Çaya kayıtlı projeler kullanılarak daha fazla uygulama oluşturuldukça, topluluk ödül algoritmasını artırabilir, böylece tahsis, kullanım gibi harici onaylanmış veri kümelerinden etkilenebilir. Ödül mekanizmasındaki bu güncelleme, TEA tokenı bölümünde açıklanan staking oranının kısıtlamalarına hâlâ riayet ederken, TEA token ödüllerinin en yüksek kullanıma sahip paketlere doğru daha yüksek tahsisine izin verebilir. Paket sahipleri, tercih ettikleri şeffaf mantığa dayalı olarak ödülleri bağımlılıkları arasında dağıtmak için benzer bir yaklaşım kullanabilirler. Ödüllerin paketler arasındaki dağıtımını ve çay sistemindeki bağımlılıkları etkilemek için kullanılan tüm bilgilerin güvenilir olması gerektiğini unutmayın.

Teşekkür
Bu tanıtım yazısı birçok çay tutkununun desteği ve özverisi olmasaydı var olamazdı. Yazarlar, tokenomiklere katkılarından dolayı Jacob Heider, Jadid Khan, Josh Kruger ve Shane Molidor'a, teaRank algoritmasına katkılarından dolayı Sanchit Ram'a ve içerikler hakkında geri bildirim sağlamak için zamanlarını ayıran birçok farklı kişiye teşekkür etmek ister. bu belgenin.

Terimler Sözlüğü
Terim	Tanım
Yaprak	TEA tokeninin en küçük değeri. Bir yaprak çayın kentilyonda birine (10^−18) karşılık gelir.
kesme	Protokol kurallarına aykırı davranışlara yanıt olarak stake yapanları cezalandırma eylemi.
Staking	Talebinizi desteklemek ve talebinizin geçerliliğine ilişkin fikir birliğine dayalı olarak ödüller (veya cezalar) almak için TEA tokenlerini kilitleme eylemi.
stTEA	Ağ katılımcıları tarafından 1:1 oranında stake edilen her bir token için alınan, devredilemez "stake edilmiş TEA" tokeni veya "stTEA". stTEA, çay Protokolünün yönetimine katılmak için kullanılabilir
çay Sıralaması	Protokolün "Katkı Kanıtı" algoritması tarafından her projeye atanan dinamik etki puanı.
Referanslar
https://creativecommons.org/licenses/by-sa/4.0/
https://archive.org/details/historyofmodernc00ceru
https://nvd.nist.gov/vuln/detail/CVE-2021-44228
https://www.reuters.com/article/usa-cyber-vulnerability-idCNL1N2SY2PA
https://twitter.com/yazicivo/status/1469349956880408583
https://www.thestack.teknoloji/core-js-maintainer-denis-pusharev-license-broke-angry/
https://www.w3.org/TR/did-core/
https://www.bleepingcomputer.com/news/security/npm-ecosystem-at-risk-from-manifest-confusion-attacks/
https://www.theregister.com/2016/03/23/npm_left_pad_chaos/
https://fossa.com/blog/npm-packages-colors-faker-corrupted/
https://www.lunasec.io/docs/blog/node-ipc-protestware/
dominictarr/event-stream#116
https://blog.npmjs.org/post/163723642530/crossenv-malware-on-thenpm-registry.html
https://www.zdnet.com/article/open-source-software-how-many-bugs-are-hidden-there-on-tained/
https://threatpost.com/backdoor-found-in-utility-for-linux/147581/
https://www.fbi.gov/news/stories/phantom-secure-takedown-031618
https://www.europol.europa.eu/media-press/newsroom/news/800-criminalsarrested-in-biggest-ever-law-enforcement-operation-against-encryptedcommunication
https://medium.com/intrinsic-blog/compromised-npm-package-event-stream-d47d08605502
https://www.npmjs.com/package/lodash
https://www.npmjs.com/package/chalk
https://www.npmjs.com/package/log4js/
https://www.bleepingcomputer.com/news/security/npm-ecosystem-at-risk-from-manifest-confusion-attacks/
https://medium.com/intrinsic-blog/compromised-npm-package-eventstream-d47d08605502
https://semver.org/
https://arxiv.org/abs/1207.2617
https://research.web3.foundation/Polkadot/overview/token-ekonomiks
