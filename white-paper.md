---
perihalan: Versi 2.1.0
---

# kertas putih

## Protokol Terdesentralisasi untuk Pembangun Sumber Terbuka untuk Menangkap Nilai Yang Mereka Cipta

* Max Howell
* Thomas Borrel
* Timothy Lewis
* Troy Wong

## Abstrak

Sistem di mana pembangun sumber terbuka boleh menerima ganjaran yang sepadan dengan sumbangan mereka akan meningkatkan kemampanan dan integriti rantaian bekalan perisian. Protokol terdesentralisasi yang dijamin oleh reputasi dan insentif boleh mencapainya dengan memudahkan nilai akruan kembali kepada pembangun yang mengekalkan pangkalan kod sumber terbuka sebagai utiliti awam, sekali gus menggalakkan inovasi dan pertumbuhan masa depan dalam ekosistem sumber terbuka. Penyelenggara pakej akan mendaftarkan projek mereka dengan pendaftaran yang dikuasakan oleh rantaian blok tahan kesalahan Byzantine. Algoritma unik "Bukti Sumbangan" Protokol teh akan menentukan sumbangan dan impak setiap projek kepada utiliti dan kesihatan sistem. Projek berdaftar akan menerima ganjaran daripada Protokol teh yang sepadan dengan sumbangan mereka, dijamin melalui pertaruhan, mendapat manfaat daripada sistem reputasi yang merangkumi projek dan penyumbang, dan mempunyai pilihan untuk membenarkan komuniti mentadbir kawasan mereka dalam ekosistem sumber terbuka, bebas daripada agenda luar. Protokol teh akan memberi insentif kepada penyelenggaraan sumber terbuka dengan membenarkan peserta rangkaian yang mendaftarkan projek mereka dan mematuhi peraturan rangkaian untuk menerima ganjaran dan menyumbang kepada reputasi dan projek mereka. Jika isu keselamatan atau pembangunan ditemui, pembangun boleh membuat tuntutan yang disokong oleh bukti terhadap pakej, dan pemotongan mungkin berlaku. Ahli komuniti sumber terbuka boleh menyemak pakej untuk isu kualiti dan protokol boleh membalas ulasan ini dengan menggubal peristiwa pemotongan berkadar.

## Penafian

Maklumat yang dinyatakan dalam kertas putih ini adalah bersifat awal. Oleh itu, pengarang mahupun mana-mana ahli gabungan masing-masing tidak memikul sebarang tanggungjawab bahawa maklumat yang dinyatakan di sini adalah muktamad atau betul dan setiap penafian di atas, setakat yang dibenarkan oleh undang-undang yang terpakai, mana-mana dan semua liabiliti sama ada yang timbul dalam tort, kontrak. atau sebaliknya berkenaan dengan kertas putih ini. Baik kertas putih ini mahupun apa-apa yang terkandung di sini tidak akan menjadi asas atau dipercayai berkaitan dengan atau bertindak sebagai dorongan untuk memasuki apa-apa kontrak atau komitmen sekalipun.

Tiada apa-apa dalam kertas putih ini merupakan tawaran untuk menjual atau permintaan untuk membeli sebarang token yang dibincangkan di sini. Dalam apa jua keadaan, sekiranya kertas putih ini dianggap sebagai tawaran atau permintaan sedemikian, tiada tawaran atau permintaan tersebut dimaksudkan atau disampaikan oleh kertas putih ini dalam mana-mana bidang kuasa yang menyalahi undang-undang untuk berbuat demikian, di mana tawaran atau permintaan tersebut akan memerlukan lesen atau pendaftaran, atau jika tawaran atau permintaan sedemikian tertakluk kepada sekatan. Khususnya, sebarang token yang dibincangkan di sini belum, dan, pada tarikh pengeluaran kertas putih ini, tidak bertujuan untuk, didaftarkan di bawah sekuriti atau undang-undang seumpamanya bagi mana-mana bidang kuasa, sama ada atau tidak bidang kuasa tersebut menganggap token tersebut untuk menjadi sekuriti atau instrumen yang serupa dan tidak boleh ditawarkan atau dijual dalam mana-mana bidang kuasa di mana untuk berbuat demikian akan menjadi pelanggaran undang-undang berkaitan bidang kuasa tersebut. Jangan beli sebarang token melainkan anda bersedia untuk kehilangan keseluruhan harga pembelian. Ia adalah pembelian berisiko tinggi dan anda tidak mungkin dilindungi jika berlaku masalah.

## Lesen

Karya ini boleh didapati di bawah [Creative Commons Attribution-ShareAlike 4.0 International license](https://creativecommons.org/licenses/by-sa/4.0/).

## Pengenalan

Internet zaman moden kebanyakannya terdiri daripada projek sumber terbuka dan telah wujud sejak penubuhannya. Projek sumber terbuka dibangunkan dan diselenggara melalui kerjasama antara komuniti pembangun global, dan pangkalan kod mereka disediakan untuk digunakan oleh sesiapa sahaja sebagai kebaikan awam. Dalam 80 tahun yang lalu (adalah [dipercayai secara umum](https://archive.org/details/historyofmodernc00ceru) bahawa contoh pertama perisian percuma dan sumber terbuka telah dikeluarkan pada tahun 1953), perisian sumber terbuka telah berkembang daripada produk penggemar teknologi khusus kepada infrastruktur di mana semua inovasi telah dibina. Di sebalik kepentingan perisian sumber terbuka, pembangun yang mencipta dan mengekalkan pangkalan kod sebagai utiliti awam tidak menerima ganjaran yang boleh digunakan untuk sumbangan besar mereka sebagai inovator dan penyelenggara.

Perisian perusahaan, yang telah berkembang menjadi industri berbilion dolar, dibina di atas asas yang diletakkan oleh sumber terbuka. Namun hampir tiada nilai terakru kembali kepada individu yang tanpa bersyukur mengekalkan asasnya. Dan sementara kekayaan telah dibuat daripadanya, perisian sumber terbuka terutamanya dicipta dan dikekalkan sebagai utiliti awam tanpa cara yang berdaya maju untuk pembangun menangkap nilai yang mereka cipta.

Kami percaya bahawa potensi internet moden telah terbantut dengan bergantung pada peratusan kecil jurutera dunia untuk mengekalkan perisian sumber terbuka semata-mata kerana altruisme. Sumber terbuka ialah kerja cinta yang sering dihalang oleh kekurangan insentif yang bermakna untuk penyelenggara teras. Pembangun sumber terbuka mesti memilih antara pekerjaan harian yang menyediakan gaji hidup atau mengekalkan asas perisian perusahaan. Kekurangan insentif menyebabkan projek yang benar-benar berfaedah tidak pernah mencapai potensi mereka manakala yang lain mengalami masalah keselamatan kerana kekurangan penyelenggaraan sepanjang kitaran hayat perisian. Untuk membuka kunci potensi penuh sumber terbuka, kami memerlukan kaedah universal untuk menilai "nilai saksama" projek sumber terbuka, membolehkan pembangun sumber terbuka menangkap nilai yang mereka cipta dengan memudahkan aliran masuk modal kepada komuniti sumber terbuka, semuanya tanpa mengubah prinsip teras tentang cara sumber terbuka dibangunkan dan digunakan.

Perusahaan sering membungkus model perniagaan di sekitar sumber terbuka, menjana pendapatan terus daripada kerja pembangun yang baik hati sambil juga bergantung kepada mereka untuk membetulkan pepijat apabila isu berlaku. Pangkalan kod sumber terbuka menawarkan fungsi teras plug-and-play untuk perusahaan; walau bagaimanapun, kelemahan perisian boleh menimbulkan risiko yang besar untuk aplikasi yang dibina di atas sumber terbuka. Satu contoh yang baik ialah insiden baru-baru ini yang melibatkan kerentanan keselamatan kritikal dalam Log4j, pakej daripada [Yayasan Perisian Apache](https://www.apache.org/) yang menemui jalannya merentasi banyak perisian dan perkhidmatan komersial yang digunakan oleh perusahaan dan kerajaan. Pada November 2021, seorang penyelidik keselamatan yang bekerja untuk [Alibaba Group Holding Ltd.](https://www.alibabagroup.com/) melaporkan kerentanan [CVE-2021-44228](https://nvd.nist.gov/vuln/ detail/CVE-2021-44228), yang menerima skor asas tertinggi yang mungkin daripada Yayasan Perisian Apache. Amit Yoran, Ketua Eksekutif [Tenable](https://www.tenable.com/) dan pengarah pengasas Pasukan Kesediaan Kecemasan Komputer Amerika Syarikat (US-CERT), menyifatkan kelemahan ini sebagai “[satu-satunya yang terbesar, paling kritikal kerentanan dekad yang lalu](https://www.reuters.com/article/usa-cyber-vulnerability-idCNL1N2SY2PA)”. Panik berlaku dan beberapa sukarelawan yang mengekalkan pakej ini mendapat kecaman secara terbuka kerana kegagalan itu. Selepas menangani kemarahan itu dengan rayuan yang rendah hati untuk keadilan, sistem telah ditampal. Perusahaan dan kerajaan akhirnya menyedari bahawa Log4j, sebuah pakej yang digunakan oleh pelbagai sistem kritikal selama dua dekad, telah diselenggara oleh beberapa sukarelawan tidak bergaji, wira yang tidak didendang yang sama yang mula bertindak walaupun [penyalahgunaan daripada industri](https:// twitter.com/yazicivo/status/1469349956880408583) dan bekerja tanpa jemu untuk menangani kelemahan itu.

Malangnya, Log4j jauh dari satu-satunya contoh. core-js dimuat turun 30 juta kali seminggu sebagai asas bagi setiap aplikasi Node.js, namun ia juga hampir tidak dibiayai, berpotensi memaksa penyelenggara utamanya untuk [meninggalkan projek atau menukar lesen kepada sumber tertutup](https://www.thestack.technology/core-js-maintainer-denis-pusharev-license-broke-angry/). Baru-baru ini beberapa pembangun teras bitcoin meletak jawatan, memetik, antara sebab lain, kekurangan pampasan kewangan untuk keputusan mereka.

<figure><img src=".gitbook/assets/xkcd-dependency (1).png" alt=""><figcaption><p>Rajah 1 - Kebergantungan - Sumber: <a href="https://xkcd.com/2347/">https://xkcd.com/2347/</a></p></figcaption></figure>

Terdapat beberapa percubaan untuk menyediakan struktur insentif, biasanya melibatkan sistem penajaan dan hadiah. Penajaan membolehkan pengguna sumber terbuka menderma kepada projek yang mereka gemari. Walau bagaimanapun, gambarkan sumber terbuka sebagai menara batu bata di mana lapisan bawah telah lama dilupakan, tetapi masih diselenggara oleh jurutera yang berdedikasi dan dipercayai oleh lebih banyak pembangun. Hanya projek di bahagian atas menara yang biasanya diketahui dan menerima tajaan. Pemilihan berat sebelah ini membawa kepada batu bata penting yang menahan menara tidak menarik derma, manakala kegemaran menerima lebih daripada yang mereka perlukan. Bounties membenarkan pengguna projek mencadangkan bayaran untuk pembangun membina ciri khusus, justeru hanya memberi ganjaran kepada projek untuk melakukan perkara yang mungkin tidak sesuai dengan kepentingan mereka. Dan sekali lagi, hanya kegemaran yang bermanfaat.

Semasa minum petang, kami telah melihat terlalu banyak projek sumber terbuka yang mengalami percubaan yang gagal untuk menyokong komuniti sumber terbuka dan telah menjadikan misi kami untuk meningkatkan kemampanan dan integriti rantaian bekalan perisian dengan membenarkan pembangun sumber terbuka menangkap nilai yang mereka cipta.

Dalam kertas ini, kami mencadangkan teh — sistem terpencar untuk

1. mengira dan memberikan “[Bukti Sumbangan](white-paper.md#proof-of-contribution)” kepada setiap projek sumber terbuka berbanding keseluruhan ekosistem,
2. memastikan projek perisian sumber terbuka diselenggara dengan baik,
3. memperkasakan pembangun sumber terbuka dengan ganjaran yang saksama berkadar dengan sumbangan seluruh ekosistem mereka, yang dicapai melalui pelaksanaan algoritma insentif teh merentas setiap penyertaan dalam pendaftaran teh, dan
4. memberi insentif kepada peserta rangkaian untuk mengikuti amalan pendedahan yang bertanggungjawab terhadap kelemahan dan pepijat.

## Komponen

Pembangun perisian membina aplikasi memerlukan empat perkara: penyemak imbas, terminal, editor dan pengurus pakej. Daripada empat ini, pengurus pakej adalah yang mengawal perkakasan dan rangka kerja yang diperlukan oleh pembangun untuk membina produk mereka. Lapisan ini adalah tempat kita melihat potensi untuk mengubah cara sumber terbuka dijamin dan diberi ganjaran.

### Pengurus Pakej

Pengurus pakej mengetahui perisian sumber terbuka yang bergantung pada pakej atau aplikasi untuk berfungsi, dari bahagian atas menara ke pangkalannya. Setiap projek, bersama-sama dengan setiap versi yang dibungkus, mendokumentasikan semua komponen penting dan versi yang sepadan dengan teliti.

Ia tahu bahawa bahagian atas menara berhati-hati memilih kebergantungannya, dan pemilihan berhati-hati itu diteruskan ke bawah. Pengurus pakej diletakkan secara unik dalam timbunan alat pembangun untuk mendayakan pengagihan nilai automatik dan tepat berdasarkan sumbangan dunia sebenar yang sebenar.

Kami mencadangkan pendaftaran terpencar tidak berubah yang direka bentuk untuk mengagihkan nilai berdasarkan "Bukti Sumbangan" unik Protokol teh, algoritma yang menentukan sumbangan dan impak setiap projek kepada utiliti dan kesihatan sistem. Nilai boleh memasukkan graf pada titik puncak—seperti perpustakaan penting—dan diedarkan kepada kebergantungan pakej tersebut dan kebergantungannya secara rekursif memandangkan pendaftaran mengetahui keseluruhan graf sumber terbuka.

Selain itu, kami percaya bahawa maklumat yang diberikan oleh Bukti Sumbangan protokol mesti tersedia untuk pembangun menilai sama ada mereka boleh mempercayai projek dan pengarangnya. Maklumat ini mungkin berdasarkan reputasi, pujian komuniti, data yang diperoleh daripada identiti terpencar ("[DID](https://www.w3.org/TR/did-core/)") sistem, pengurus pakej lain atau mekanisme insentif yang berpotensi bergantung pada peserta rangkaian yang meletakkan nilai pada risiko.

Kami meramalkan bahawa gabungan alat, maklumat dan ganjaran teh akan memberi insentif yang adil kepada pembangun, membantu menjamin rantaian bekalan perisian, merangsang pertumbuhan perisian sumber terbuka dan memupuk inovasi.

### Pendaftaran Terpencar

Setiap pengurus pakej mempunyai pendaftaran pakej sendiri yang menduplikasi metadata yang sama berulang kali. Dalam sesetengah kes, pendaftaran ini mungkin termasuk [maklumat yang berbeza daripada manifes projek](https://www.bleepingcomputer.com/news/security/npm-ecosystem-at-risk-from-manifest-confusion-attacks/), sekali gus membenarkan pelakon jahat berpotensi menyuntik kod jahat tanpa diketahui oleh pengguna. Sudah tiba masanya terdapat pendaftaran tunggal, komprehensif dan muktamad yang direka dan ditadbir oleh komuniti yang bergantung padanya. Pendaftaran yang tidak berpusat dan tidak berubah ini boleh memberikan keselamatan, kestabilan dan mencegah niat jahat.

Internet berjalan pada puluhan ribu komponen sumber terbuka yang penting. Sungguh mengagumkan bahawa setakat ini, insiden yang disebabkan oleh penyingkiran infrastruktur sumber terbuka yang penting adalah minimum. Yang paling terkenal ialah [penyingkiran kebergantungan pad kiri NPM](https://www.theregister.com/2016/03/23/npm\_left\_pad\_chaos/) pada tahun 2016, yang melantun ke dalam penyepaduan berterusan dan sistem penggunaan berterusan, menjadikan pemaju tinggi dan kering selama beberapa hari. Peristiwa ini menunjukkan bahawa Internet itu sendiri adalah berdasarkan sistem pembangunan yang rapuh. Contoh lain melibatkan penyertaan aktif atau sengaja daripada penyelenggara pakej mensabotaj pakej popular mereka (Lihat [colors.js dan faker.js](https://fossa.com/blog/npm-packages-colors-faker-corrupted/), sebagai serta [node-ipc](https://www.lunasec.io/docs/blog/node-ipc-protestware/)), atau pelakon jahat yang ingin mengaut keuntungan dengan berpura-pura membantu mengekalkan pakej dan merosakkannya untuk mencuri, untuk contoh, kunci peribadi Bitcoin (Lihat [event-stream](https://github.com/dominictarr/event-stream/issues/116)), atau pakej berniat jahat dengan ralat salah ejaan yang disengajakan, juga dikenali sebagai “[typosquatting](https ://en.wikipedia.org/wiki/Typosquatting)", dengan harapan dapat menipu pengguna supaya memasangnya, contohnya [pakej NPM crossenv lwn. cross-env](https://blog.npmjs.org/post/ 163723642530/crossenv-malware-on-the-npm-registry.html).

Integriti perisian perlu dijamin semasa industri berkembang ke arah masa depan di mana aset digital adalah sebahagian daripada perisian. Kami tidak boleh terus membiarkan diri kami terdedah kepada pelakon berniat jahat yang mengubah suai perisian.

Kebanyakan alatan yang kami panggil pengurus pakej tidak dapat menjamin bahawa pakej terbina dalam apl dan dApps ini ialah kod sumber terbuka yang tidak diubah yang diterbitkan oleh pengarang asalnya. [GitHub Microsoft telah mendapati bahawa 17% daripada kelemahan dalam perisian telah ditanam untuk tujuan hasad](https://www.zdnet.com/article/open-source-software-how-many-bugs-are-hidden-there-on -purpose/), dengan beberapa baki tidak dapat dikesan untuk tempoh yang panjang (Lihat [Webmin 1.890](https://threatpost.com/backdoor-found-in-utility-for-linux/147581/)).

Pendaftaran terdesentralisasi global yang ditambah dengan sistem reputasi dan disokong oleh insentif yang direka untuk mendedahkan pelaku jahat dan memberi ganjaran kepada mereka yang baik mungkin memberikan jaminan yang dicari oleh komuniti pembangun untuk mendapatkan rantaian bekalan perisian.

### Sistem Storan

Projek sumber terbuka menyampaikan pelbagai fungsi, sesetengah daripadanya mungkin terhad atau tidak diingini. Penyulitan adalah contoh terbaik untuk itu. Kes penggunaan kritikal untuk penyulitan ialah sokongan privasi individu di seluruh dunia. Penyulitan, bagaimanapun, juga boleh digunakan untuk tujuan jahat (lihat [Phantom Secure](https://www.fbi.gov/news/stories/phantom-secure-takedown-031618), dibongkar oleh agensi penguatkuasaan undang-undang pada Mac 2018) atau mungkin dikompromi untuk menyokong aktiviti penguatkuasaan undang-undang (Lihat [Operation Ironside (AFP), Operation Greenlight (Europol) dan Operation Trojan Shield (FBI)](https://www.europol.europa.eu/media-press/newsroom /news/800-penjenayah-ditahan-dalam-operasi-penguatkuasaan-undang-terbesar-terhadap-komunikasi-disulitkan) di mana FBI mengendalikan platform komunikasi "disulitkan", AN0M, dan meyakinkan penjenayah untuk menggunakan telefon "disulitkan" mereka untuk komunikasi yang selamat).

Aplikasi luas penyulitan telah menjadikannya kes penggunaan yang sempurna untuk perisian sumber terbuka dan contoh yang bagus bahawa sebarang penyelesaian yang menyimpan pakej mestilah kalis gangguan dan kalis penapisan. teh ialah protokol terpencar yang tidak berniat untuk menapis atau menyekat pakej berdasarkan fungsinya. Walaupun tadbir urus teh boleh memilih untuk mengalih keluar pakej berniat jahat yang terbukti (lihat [bahagian tadbir urus](white-paper.md#governance) untuk mendapatkan maklumat lanjut), adalah penting bagi sistem teh untuk berhubung dengan berbilang sistem storan, termasuk sistem terpencar yang menunjukkan bahawa pakej tidak diubah dan direplikasi dengan betul. Penyelenggara pakej boleh memilih sistem storan yang paling sesuai untuk keperluan mereka untuk menyimpan dan mengedarkan pakej mereka dengan selamat.

## Gambaran Keseluruhan Protokol

Mereka bentuk protokol untuk memberi ganjaran kepada sumbangan sumber terbuka memberikan cabaran yang menggerunkan. Perisian sumber terbuka, yang boleh diakses secara universal, terdedah kepada salah atribusi, pengagihan dan gangguan berniat jahat. Walau bagaimanapun, komuniti sumber terbuka secara konsisten menunjukkan kesediaannya untuk menonjolkan pelakon yang baik dan mendedahkan pelakon yang tidak baik. Dari segi sejarah, tenaga yang dibelanjakan untuk menyemak dan mengulas mengenai sumbangan pembangun lain adalah secara sukarela, walaupun pelaporan dan mempertahankan penemuan mungkin memakan masa dan penting.

Kami berhasrat untuk mencipta protokol terdesentralisasi yang dijamin oleh reputasi dan insentif yang meningkatkan kemampanan dan integriti rantaian bekalan perisian dengan membenarkan pembangun sumber terbuka menangkap nilai yang mereka cipta dengan cara yang tidak amanah. Kami percaya ganjaran yang mencukupi untuk sumbangan sumber terbuka tidak akan berjaya tanpa kedua-dua sistem reputasi dan keupayaan untuk ahli komuniti menyampaikan penemuan dan sokongan (atau perbezaan pendapat) mereka untuk projek atau kerja pembangun. Selain itu, kami mesti menyediakan alat kepada pembangun untuk mengakses dan menyumbang kepada sistem reputasi ini. Alat yang termasuk akses visual dan boleh atur cara mudah kepada versi dan reputasi semua kebergantungan dalam projek mereka.

Ketelusan terhadap token TEA yang dipertaruhkan oleh ahli komuniti untuk menyokong setiap projek meningkatkan reputasi setiap projek, sama seperti bilangan token yang dipertaruhkan oleh penyelenggara pakej pada kerja mereka sendiri menandakan komitmen mereka terhadapnya. Titik data gabungan ini akan membantu memaklumkan sistem reputasi untuk semua ahli komuniti dan memudahkan pilihan. Memandangkan [godam pakej aliran acara](https://medium.com/intrinsic-blog/compromised-npm-package-event-stream-d47d08605502) tidak dijalankan melalui pakej itu sendiri, tetapi melalui salah satu kebergantungannya, keterlihatan merentas semua lapisan kebergantungan akan menjadi penting untuk membina sistem tanpa amanah ini. Walau bagaimanapun, pertimbangan seperti kos pengiraan dan transaksi (“gas”) perlu diberi keutamaan apabila sistem direka bentuk dan dibina.

Matlamat kami adalah untuk memberi ganjaran kepada pembangun Web 2.0 dan web3. Kerumitan dan kekhususan setiap timbunan menjadikannya supaya pemasangan penjejakan pakej dengan mudah menjadi mangsa kepada satu atau lebih pelakon yang tidak baik. Itu termasuk "membeli" pemasangan untuk melambung angka secara buatan. Senario yang lebih buruk ialah memperkenalkan perubahan asas kepada sifat perisian sumber terbuka dengan mencipta geseran yang tidak perlu dengan kunci lesen atau mekanisme penjejakan penggunaan lain. Untuk menyediakan liputan yang paling luas, kami percaya bahawa ganjaran mestilah tidak bergantung pada tanggapan ringkas mengenai pemasangan penjejakan, tetapi sebaliknya pada mekanisme insentif yang menggalakkan penyerahan pakej berkualiti dan pelaporan pakej jahat atau berisiko tinggi. Akhir sekali, banyak pakej bergantung pada kebergantungan biasa. Sebagai contoh, [lodash](https://www.npmjs.com/package/lodash) mempunyai 176,308 tanggungan sumber terbuka manakala [chalk](https://www.npmjs.com/package/chalk) mempunyai 100,247 tanggungan atau [log4js](https://www.npmjs.com/package/log4js/) mempunyai 3,809 tanggungan. Memandangkan lebih banyak pakej dicipta menggunakan kebergantungan yang sama, bagaimanakah kita memastikan bahawa ganjaran diagihkan secara adil dan saksama? Bagaimanakah kami memastikan bahawa kebergantungan yang paling banyak digunakan diberi ganjaran tanpa kebuluran pakej dan pembangun baharu atau baru muncul? Bagaimanakah kita memastikan bahawa sistem insentif tidak menyebabkan pembangun menjauhi bahasa khusus untuk memusatkan mereka di mana insentif adalah lebih baik? Tetapi juga, sebagai pembangun, bagaimanakah kita mengenal pasti pakej yang mempunyai tanggungan paling banyak untuk membina alternatif - versi pakej ini yang lebih ramping, cekap dan berkod lebih baik?

Di tea, kami percaya bahawa kekurangan keterlihatan dan insentif telah menghalang evolusi perisian sumber terbuka. Disokong oleh insentif dan ganjaran yang betul, lebih ramai pembangun akan berada dalam kedudukan untuk membina, menambah baik dan menambah perisian sumber terbuka untuk kebaikan dunia.

### Bukti Sumbangan

Dalam kertas putih ini, kami mencadangkan "Bukti Sumbangan", mekanisme konsensus baru yang direka untuk mengukur kesan semua projek merentas semua sistem sumber terbuka.

Bukti Sumbangan memberikan skor dinamik, yang dirujuk sebagai teaRank projek, berdasarkan setiap orientasi projek sumber terbuka dalam, dan penggunaan daripada ekosistem sumber terbuka yang lebih luas dari semasa ke semasa.

Kami percaya bahawa pendekatan ini memberi manfaat kepada perisian asas yang jauh dari lapisan aplikasi (yang cenderung menjadi lapisan yang paling kelihatan kepada orang ramai dan menarik kebanyakan minat) dan memanjangkan mekanisme ganjaran untuk memastikan semua komponen projek—dari atas daripada pokok itu, sehingga ke pangkalnya—diberi ganjaran atas sumbangan mereka.

Untuk mengira skor setiap projek, teaRank membina asas yang diletakkan oleh algoritma [Google's PageRank](https://en.wikipedia.org/wiki/PageRank). PageRank Google ialah komponen penentu produk carian dan dibina pada struktur seperti graf halaman web. PageRank, pada terasnya, ialah algoritma pengedaran kebarangkalian yang memberikan markah kepada nod dalam graf, mewakili kemungkinan bahawa apa-apa yang menavigasi graf secara rawak akan tiba pada nod tertentu. Algoritma ini amat berkesan dalam struktur data seperti graf, seperti internet, kerana ia mengukur kesan setiap nod (atau halaman web) berdasarkan kuantiti dan kualiti tepi (pautan) kepadanya. Algoritma ini telah diubah suai dari semasa ke semasa untuk lebih memahami topologi web dan mengenal pasti pautan penipuan antara halaman web, membolehkan pelbagai serangan dikurangkan.

Oleh kerana struktur graf internet dan pendaftaran terdesentralisasi Protokol teh berkongsi persamaan yang luar biasa, PageRank pada mulanya kelihatan sebagai pendekatan yang menjanjikan untuk analisis. Walau bagaimanapun, selepas percubaan selanjutnya, ternyata bahawa strategi anti-spam PageRank kurang berkesan apabila digunakan pada sumber terbuka.

Perbezaan utama terletak pada metadata perisian sumber terbuka. Tidak seperti halaman web, kebanyakan metadata pakej sumber terbuka, seperti baris kod dan komit mesej, dijana pengguna dan terdedah kepada penipuan. Pengurus pakej terdedah kepada kempen spam, di mana pelaku berniat jahat membanjiri pendaftaran dengan pakej yang mengandungi pautan pancingan data atau kandungan berbahaya yang lain. Pendaftaran pengurus pakej juga mungkin menggambarkan kebergantungan projek tertentu secara tidak tepat. Isu ini, yang dikenali sebagai "[kekeliruan nyata](https://www.bleepingcomputer.com/news/security/npm-ecosystem-at-risk-from-manifest-confusion-attacks/)" mungkin membenarkan pelakon jahat menyuntik jahat kod atau secara buatan meningkatkan kesan kebergantungan pihak ketiga, selalunya untuk tujuan jahat.

Tugas sukar untuk mengenal pasti dan menangani pakej spam ini lazimnya diserahkan kepada firma keselamatan atau individu altruistik, kedua-duanya tidak menawarkan penyelesaian berskala untuk memerangi serangan spam dalam sumber terbuka.

Bukti Sumbangan ialah algoritma yang direka khusus untuk menangani pengenalpastian dan pengasingan pakej spam dan memastikan hanya projek yang memberi kesan menerima ganjaran yang adil. Butiran algoritma Bukti Sumbangan akan menjadi subjek kertas teknikal khusus.

### Peserta Rangkaian

Dalam kertas putih ini, kami membezakan peserta melalui sumbangan mereka. Sesetengah mungkin menyumbang kod atau mengesahkan kod yang disumbangkan. Orang lain mungkin menyokong pembangun dan reputasi mereka.

#### Penyelenggara Pakej

teh menganggap bahawa pencipta pakej mengekalkan kerja mereka. Dalam kertas putih ini, kami akan merujuk mereka sebagai "penyelenggara pakej".

Penyelenggara pakej mesti memastikan perisian mereka terus memberikan nilai yang semakin meningkat apabila industri berkembang. Mereka adalah tonggak komuniti sumber terbuka yang perlu diperkasa dan diberi ganjaran untuk sumbangan berterusan mereka. Walau bagaimanapun, penyelenggara pakej mungkin memutuskan untuk menghentikan usaha penyelenggaraan mereka atau menyedari bahawa mereka tidak boleh beroperasi pada kadar yang sepadan dengan jangkaan pengguna projek. Untuk memastikan kesinambungan, mereka mesti mempunyai keupayaan untuk memindahkan kawalan projek mereka kepada pemaju atau kumpulan pemaju lain, dengan itu melantik mereka sebagai penyelenggara dan memberi mereka pemilikan dan kawalan ke atas ganjaran sedia ada dan akan datang yang berkaitan dengan projek itu.

Begitu juga, pemaju boleh memutuskan untuk mengambil peranan sebagai penyelenggara pakej dengan menghentikan projek sedia ada dan mendaftarkan projek baharu yang akan mereka kekalkan pada masa hadapan, sekali gus menjadi penyelenggara pakej. Setelah didaftarkan, projek yang teaRanknya melebihi ambang yang ditetapkan tadbir urus mula menerima ganjaran daripada Protokol teh melalui algoritma Bukti Sumbangan protokol, selari dengan projek bercabang warisan. Memandangkan komuniti sumber terbuka beralih daripada projek warisan yang memihak kepada lelarannya yang lebih baharu, algoritma Bukti Sumbangan akan mengurangkan secara beransur-ansur ganjaran yang diperuntukkan kepada projek warisan sambil meningkatkan yang diberikan kepada projek bercabang baharu.

Adalah penting untuk menyediakan komuniti pembangun alat yang betul untuk menentukan projek yang sedang diselenggara dan reputasi serta kualiti kerja penyenggaraan masa lalu dan sekarang mereka. Kami terlalu kerap melihat kerja sumber terbuka diganggu dan usaha ramai dimusnahkan oleh pelakon jahat. Walaupun kerja pelakon jahat ini sebahagian besarnya ditemui dan dipulihkan, ia selalunya tidak sehingga kerosakan besar telah ditanggung melalui kehilangan kewangan atau data. Ambil contoh [pakej npm aliran-event](https://medium.com/intrinsic-blog/compromised-npm-package-event-stream-d47d08605502) yang telah dimuat turun lebih 1.5 juta kali seminggu dan dipercayai oleh lebih 1,500 pakej apabila penggodam berjaya menembusi projek sumber terbuka, mendapat kepercayaan pengarang asalnya dan mengubah suai aliran acara untuk bergantung pada pakej berniat jahat yang akan menghilangkan kelayakan dompet bitcoin ke pelayan pihak ketiga. Walaupun alat boleh membantu mengesan beberapa serangan ini, ia tidak boleh selalu dipercayai, yang mewujudkan seluruh komuniti bergantung pada ketekunan dan kesediaan satu sama lain untuk berkongsi penemuan mereka.

Kami mencadangkan untuk memperkenalkan insentif melalui token TEA yang diterangkan dalam bahagian "[Token TEA](white-paper.md#tea-token)", untuk menggalakkan komuniti sumber terbuka melaporkan penemuan mereka secara konstruktif, supaya penyelenggara pakej boleh menanganinya sebelum mereka dieksploitasi.

#### Pengguna Pakej dan ahli komuniti teh

"Pengguna pakej" ialah pembangun perisian yang menumpukan pada menyelesaikan masalah tertentu. Mereka sering melihat dalam komuniti sumber terbuka untuk alatan yang mereka perlukan untuk bereksperimen dengan cepat dan berulang dengan sedikit atau tanpa kos, mendapat manfaat secara langsung daripada kerja penyelenggara pakej.

Dengan lebih daripada 10 juta pakej boleh diakses merentas 30 pengurus pakej teratas, ketiadaan atribusi nilai universal kepada projek sumber terbuka boleh mengubah pemilihan pakej yang selamat dan cekap untuk pembangunan menjadi usaha yang berisiko tinggi dan menakutkan. Dengan tiada cara yang boleh dilihat untuk mengaitkan dan mengukur nilai, bagaimanakah pengguna pakej dengan cekap memilih pakej selamat untuk pembangunan mereka?

Kami percaya bahawa algoritma Bukti Sumbangan Protokol teh digabungkan dengan insentif lain boleh memberikan pengguna pakej maklumat yang mereka perlukan untuk memilih asas projek mereka sendiri dengan cepat dan bertimbang rasa.

#### Penyokong Projek

Dalam Web 2.0 dan web3, subset pengguna pakej, sering dipanggil "penaja", telah memilih untuk menyokong penyelenggara pakej melalui derma atau bentuk imbuhan lain; namun, ini jarang berlaku.

"Penyokong projek" ini ialah organisasi atau pengguna projek sumber terbuka yang menggunakan perisian sumber terbuka untuk membina produk komersial mereka, dermawan yang ingin menyokong ekosistem, atau usahawan yang ingin membiayai pasukan untuk membangunkan komponen sistem yang lebih besar.

teh bercadang untuk meluaskan komuniti penyokong projek sumber terbuka kepada seluruh komuniti teh, sama ada organisasi, pembangun, pengguna atau peminat teknologi. Matlamat teh adalah untuk melaksanakan mekanisme insentif terdesentralisasi melalui kes penggunaan unik token TEA untuk mana-mana ahli komuniti teh untuk menyumbang kepada kemampanan berterusan dan pertumbuhan berterusan sumber terbuka. Penyokong projek bebas untuk memutuskan projek atau penyelenggara pakej yang mereka mahu sokong berdasarkan kerja, kepercayaan atau mana-mana kriteria dan metrik yang akan mempengaruhi keputusan mereka. Selain itu, penyokong projek bebas menentukan cara mereka mahu menyokong projek ini.

Penajaan boleh menjadi sistem yang berkesan untuk menyokong pembangunan sumber terbuka; namun, tajaan ini biasanya tidak meliputi semua tanggungan. Had ini memanfaatkan kegemaran dan menghalang inovasi dan pembinaan perisian. Untuk berusaha sebagai asas pembangunan perisian, sumber terbuka mesti memperkasakan semua pembangun, sama ada pemula atau pakar, merentas semua lapisan dalam menara.

Untuk meningkatkan kemampanan dan integriti rantaian bekalan perisian dan membolehkan pembangun sumber terbuka menangkap nilai yang mereka cipta, teh bertujuan untuk mewujudkan mekanisme di mana sokongan memberi manfaat kepada semua aspek projek. Sokongan daripada penyokong akan mengalir melalui kebergantungan projek, dari atas ke pangkal pokok. Ini secara tersirat meletakkan kepercayaan pada keupayaan penyelenggara pakej untuk membuat pilihan termaklum tentang timbunan mereka, sekali gus meningkatkan reputasi mereka.

<figure><img src=".gitbook/assets/figure-2.png" alt=""><figcaption><p>Rajah 2 - Pengagihan ganjaran merentas tanggungan</p></figcaption></figure>

#### Perasa teh

Apabila projek baharu atau versi baharu projek sedia ada dikeluarkan, kesahihan kerja itu perlu ditunjukkan dengan jelas. Maklumat ini penting untuk pengguna pakej memutuskan sama ada mereka boleh mempercayai pakej dan penyelenggaranya. Dalam Protokol teh, fungsi ini disediakan oleh "pengecap teh".

pengecap teh, lazimnya, adalah pembangun perisian berpengalaman yang sanggup meluangkan sedikit masa mereka untuk menyemak tuntutan yang berkaitan dengan pakej (fungsi, keselamatan, [versi semantik](https://semver.org/), ketepatan lesen, dsb.) dan mempertaruhkan reputasi mereka dan token TEA untuk menunjukkan hasil penyelidikan mereka dan menyokong ulasan mereka. Dalam Protokol teh, "menaruh teh anda" ialah proses mengunci token TEA untuk menyokong ulasan anda, berpotensi memperoleh ganjaran atau menghadapi penalti berdasarkan konsensus tentang kualiti ulasan anda. pengecap teh juga mempunyai pilihan untuk melaporkan pepijat atau kelemahan kepada pengurus pakej secara sulit. Laporan yang sah menghasilkan ganjaran daripada perbendaharaan projek, manakala laporan yang tidak sah membawa kepada pelucuthakan kepentingan pencicip teh. Akhir sekali, jika penyelenggara pakej mengabaikan isu yang dilaporkan ini, ia akan mencetuskan penalti, atau "menebas", untuk perbendaharaan projek.

Seperti penyokong projek, pengecap teh boleh mempengaruhi reputasi penyelenggara projek dan pakej; namun, impaknya lebih ketara memandangkan peranan mereka dalam mengesahkan keselamatan, fungsi dan kualiti projek. pengecap teh juga perlu membina reputasi mereka untuk menyokong dakwaan mereka. Kualiti kerja mereka dan token TEA yang mereka letakkan pada risiko apabila mereka mempertaruhkan ulasan mereka digabungkan dengan sumber data luaran yang lain akan membina reputasi setiap pengecap teh, membawa lebih nilai kepada kerja mereka. Lihat bahagian "[Reputasi Penyelenggara Pakej & Pakej](white-paper.md#package-and-package-maintainer-reputation)" untuk mendapatkan butiran lanjut tentang mekanisme yang digunakan untuk mempengaruhi reputasi penyelenggara projek dan pakej.

### Pendaftaran Projek dan Bukti Ganjaran Sumbangan

Pendaftaran keluaran projek memerlukan berbilang transaksi untuk berlaku secara atom. Secara khusus:

* Penyelenggara pakej mesti mendaftarkan projek dengan pendaftaran terdesentralisasi,
* Protokol teh mesti mewujudkan perbendaharaan projek yang dimiliki, dikawal dan dikonfigurasikan oleh penyelenggara pakej mengikut peraturan yang ditakrifkan oleh penyelenggara pakej, dan
* Protokol teh mesti mendaftarkan nama unik perbendaharaan dengan Perkhidmatan Penamaan Ethereum, atau ENS, dengan itu memudahkan semua interaksi pengguna dengan perbendaharaan.

Kegagalan mana-mana satu operasi akan menyebabkan protokol kembali kepada keadaan sebelumnya.

Setelah berjaya mendaftarkan projek dengan teaRank yang melepasi ambang yang ditentukan oleh tadbir urus, Protokol teh memulakan pengagihan ganjaran Bukti Sumbangan kepada perbendaharaan projek. Kami mencadangkan untuk mengedarkan ganjaran ini mengikut lengkung yang telah ditetapkan daripada kumpulan token yang telah ditetapkan yang dikawal oleh Protokol teh dan diperuntukkan daripada jumlah bekalan token TEA.

Penyelenggara pakej dikehendaki meningkatkan reputasi dan kebolehpercayaan projek mereka dengan secara konsisten mempertaruhkan sebahagian daripada ganjaran Bukti Sumbangan yang diterima oleh perbendaharaan projek. Bagi setiap token yang dipertaruhkan, peserta rangkaian akan menerima "TEA yang dipertaruhkan" yang tidak boleh dipindah milik, atau stTEA, pada nisbah 1:1, untuk mengambil bahagian dalam tadbir urus Protokol teh. Selaras dengan peraturan protokol, ganjaran yang dipertaruhkan ini, dan stTEA yang sepadan, mungkin tertakluk kepada pengurangan ("menebas") atau pengagihan semula jika penyelenggara pakej gagal menangani pepijat atau kelemahan.

Akhir sekali, kegagalan untuk mengekalkan nisbah perbendaharaan yang dipertaruhkan minimum yang ditakrifkan dalam peraturan tadbir urus akan mengakibatkan penggantungan pengagihan ganjaran Bukti Sumbangan kepada projek. Sebaliknya, ganjaran ini akan diagihkan semula di kalangan projek yang mematuhi.

### Reputasi Penyelenggara Pakej & Pakej

Sistem reputasi yang bergantung semata-mata pada sumbangan ekonomi pengarang tidak memberikan perlindungan pengguna yang mencukupi dan boleh tertakluk kepada serangan Sybil, di mana seorang individu mencipta berbilang representasi diri mereka untuk meninggalkan sejumlah besar ulasan positif pada kerja mereka, memperdaya pengguna untuk mempercayai kerja mereka disemak dan diluluskan oleh ramai orang.

Beberapa metodologi tersedia untuk mencegah serangan Sybil, beberapa daripadanya diterangkan oleh Nitish Balachandran dan Sugata Sanyal dalam "[Tinjauan Teknik untuk Mengurangkan Serangan Sybil](https://arxiv.org/abs/1207.2617/)". Oleh kerana teh ialah protokol terpencar, menggunakan sistem pensijilan amanah yang bergantung pada pihak berkuasa pengeluaran sijil berpusat akan bertentangan dengan terasnya. Kami mencadangkan untuk menumpukan pada pendekatan terdesentralisasi untuk mitigasi serangan Sybil dan, lebih khusus, pada metodologi yang bergantung pada kumpulan besar peserta rangkaian yang diberi insentif untuk menilai dan mewakili secara terbuka reputasi setiap pakej dan penyelenggaranya.

Sama seperti pengeluaran blok pada blockchain bukti kepentingan, di mana nod yang tidak menghasilkan boleh mengesahkan kerja orang lain dan, apabila perlu, menyerlahkan pelanggaran peraturan rangkaian, yang membawa kepada penalti kepada pelaku jahat melalui pemotongan (pemusnahan sebahagian daripada kepentingan mereka), kami mencadangkan satu sistem di mana pihak ketiga, seperti pengecap teh, akan dapat menyemak pakej yang dihasilkan oleh penyelenggara pakej dan diberi insentif untuk berkelakuan demi kepentingan terbaik perisian sumber terbuka komuniti dan penggunanya, serta mengiktiraf tingkah laku yang baik dan menghukum tingkah laku yang buruk. Sistem ini mestilah tahan Sybil dan menghalang pemegang token besar daripada mempengaruhi secara material protokol atau reputasi pakej tertentu. Kami percaya pendekatan ini lebih sejajar dengan sumber terbuka, menyediakan substrat yang lebih subur untuk memupuk penerimaan dan kepercayaan, dan akhirnya memudahkan pertumbuhan teh.

Selain itu, apabila reputasi mana-mana ahli komuniti teh mencapai pencapaian penting, mereka mungkin diberikan akses kepada bahagian protokol yang tinggi.

### Semakan Pakej oleh Pihak Ketiga

Kajian semula pakej oleh pihak ketiga adalah komponen penting dalam pembinaan reputasi dan keselamatan rantaian bekalan perisian. Walau bagaimanapun, ulasan pihak ketiga datang dengan set ancaman unik mereka sendiri termasuk serangan Sybil yang disebutkan di atas.

Teknologi Blockchain, dan lebih jelas mempertaruhkan, menawarkan peluang unik untuk teh untuk menangani cabaran ini. Walaupun alamat dompet mungkin tersedia dalam kuantiti yang tidak terhingga, ini tidak berlaku dengan token TEA, yang jumlah bekalannya dijangka 10 bilion. Selain itu, setiap tindakan yang dilakukan oleh pembangun, seperti menyerahkan, mengesahkan atau mempertaruhkan pakej, akan menyumbang kepada reputasi mereka, sekali gus mewujudkan profil unik yang boleh digunakan oleh setiap pembangun untuk menyumbang kepada komuniti teh dan mengambil bahagian dalam tadbir urus teh.

Dengan menghendaki penyemak pihak ketiga untuk mempertaruhkan token TEA dan menanggung risiko kehilangan sebahagian daripada kepentingan mereka sekiranya mereka ternyata berkelakuan bertentangan dengan kepentingan rangkaian atau menjadi pelakon yang tidak baik, pihak ketiga boleh memberikan kepercayaan tambahan kepada pakej dan menerima ganjaran, dalam bentuk token TEA.

Kami juga mencadangkan untuk memanjangkan sistem reputasi kepada pihak ketiga yang melaksanakan pengesahan pakej bebas—peminum teh. Penyempurnaan semakan positif memerlukan dua operasi untuk berlaku secara atom:

* Penyerahan semakan kod, ditandatangani oleh pencicip teh dan boleh diakses secara terbuka kepada semua ahli komuniti, bersama-sama dengan
* Tindakan mempertaruhkan pakej, untuk mengesahkan ulasan mereka.

Penyelesaian semakan negatif yang merangkumi satu atau lebih kerentanan kritikal akan memerlukan pengecap teh untuk menghubungi penyelenggara pakej terlebih dahulu menggunakan protokol pemesejan untuk memberitahu mereka tentang kerentanan dan membenarkan mereka menangani isu itu tepat pada masanya. Selepas tamat tempoh yang ditentukan tadbir urus yang diperuntukkan kepada penyelenggara pakej untuk menangani kelemahan mereka atau apabila pakej yang diperbetulkan tersedia, protokol pemesejan yang sama akan digunakan untuk memberitahu pengguna dan penguji pakej ini (termasuk tanggungan) bahawa kelemahan telah dikenal pasti. , dan mudah-mudahan ditangani, supaya mereka tahu untuk mengemas kini aplikasi atau kebergantungan mereka. Untuk tidak memberi insentif kepada pembaziran masa pembangun, komunikasi antara pengecap teh dan penyelenggara pakej memerlukan pengecap teh untuk mempertaruhkan token TEA.

Setelah menyelesaikan kedua-dua operasi, pengecap teh akan menerima NFT sebagai bukti kerja mereka pada pakej dan versi pakej tertentu. Pengumpulan NFT digabungkan dengan nisbah staking bagi setiap pakej yang disemak dan maklumat yang diekstrak daripada sistem luaran akan memaklumkan reputasi pengecap teh. Apabila reputasi mereka mencapai pencapaian penting, pengecap teh mungkin mendapat akses kepada bahagian protokol yang lebih tinggi atau ganjaran yang dipercepatkan daripada protokol, seperti yang diputuskan oleh tadbir urus teh.

### Pakej Lapuk atau Korup

misi teh adalah untuk meningkatkan kemampanan dan integriti rantaian bekalan perisian dengan membenarkan pembangun sumber terbuka menangkap nilai yang mereka cipta; walau bagaimanapun, ganjaran mestilah setimpal dengan usaha yang dilakukan oleh penyelenggara pakej dan pengecap teh. Pakej yang kurang diselenggara, lapuk atau rosak adalah petunjuk jelas penyelenggara pakej tidak memenuhi jangkaan masyarakat atau tidak menyampaikan kepercayaan dan sokongan yang diberikan kepada mereka melalui pertaruhan pakej. Satu lagi manifestasi pakej lapuk mungkin penggunaan berterusan bahasa lama atau versi lama bahasa berbilang versi. Pakej yang masih lapuk atau rosak terlalu lama menunjukkan bahawa pengecap teh perlu menyemak kerja penyelenggara pakej dengan kerap dan konsisten.

pengecap teh memainkan peranan penting dalam komuniti sumber terbuka, kerana ulasan mereka dan tuntutan berkaitan boleh mempengaruhi pengguna pakej, sama ada membimbing mereka ke arah atau menjauhi pakej tertentu. Untuk memastikan ulasan boleh dipercayai secara berterusan, kami mencadangkan satu mekanisme di mana ulasan yang disiarkan oleh pengecap teh mesti dikaitkan dengan token TEA yang dipertaruhkan. Bungkusan yang lapuk atau rosak mungkin menyaksikan sebahagian daripada perbendaharaan mereka dipotong, manakala sebahagian lagi dihantar kepada pencicip teh yang mula-mula menyedari kekurangan penyelenggaraan mana-mana bungkusan.

Memandangkan pakej semakin popular dan digunakan, dengan lebih banyak aplikasi dan sistem yang berpotensi kritikal misi bergantung padanya, kami mesti memberi insentif kepada pembangun untuk melaporkan kelemahan secara diam-diam kepada penyelenggara pakej dan menggalakkan penyelenggara pakej menangani kelemahan tersebut sebelum ia boleh dieksploitasi. Akibatnya, kami mencadangkan bahawa sebarang semakan negatif yang menggariskan kecacatan seperti kerentanan sifar hari atau penggunaan pergantungan yang sudah lapuk dan kekal terbuka melebihi tempoh tangguh yang ditentukan oleh tadbir urus harus dianggap sebagai kegagalan di pihak penyelenggara pakej dan tertakluk kepada penalti yang sama dengan pengecap teh pertama yang melaporkan kecacatan menerima sebahagian daripada token yang dipotong.

Perkara yang sama boleh dikatakan untuk penyokong pakej yang mempertaruhkan reputasi mereka dan token TEA pada kerja penyelenggara pakej yang tertunggak dan menerima ganjaran untuknya. Memandangkan mereka gagal mengenal pasti kekurangan penyelenggaraan atau dipilih untuk terus menyokong pakej tersebut tanpa mengira, kami mencadangkan agar semua aktiviti pemotongan dilanjutkan kepada penyokong pakej tersebut.

Pengedaran kepada semua pengecap teh boleh berdasarkan umur ulasan mereka dan bilangan token TEA yang mereka pertaruhkan untuk semakan mereka.

## Token TEH

TEA ialah token kriptografi yang berfungsi sebagai kunci akses kepada bahagian tertentu dan ciri khas Protokol teh.

Pemegang token TEA mempunyai keupayaan untuk:

* Daftar pakej mereka;
* Menyokong pakej dengan mempertaruhkan token TEA kepada pakej tertentu;
* Menyumbang kepada keselamatan rantaian bekalan perisian dengan mencabar pakej dan menjalankan semakan untuk melaporkan pepijat dan/atau kelemahan.

Seperti yang dibincangkan, Protokol teh membuka kunci ekonomi sumber terbuka dan mencipta nilai untuk pembina, penyelenggara dan pengguna akhir perisian perusahaan. Akhirnya, nilai yang ditangkap oleh Protokol teh terakru kembali kepada pemegang token apabila masyarakat berskala, mewujudkan gelung maklum balas yang memberi insentif lagi kepada penyertaan.

### Memberi ganjaran kepada Pembangun Sumber Terbuka

Kami mengharapkan Bukti Sumbangan dan mekanisme pertaruhan teh untuk memupuk pertumbuhan sumber terbuka dengan memperkasakan pesertanya dengan sumber yang mereka perlukan untuk meneruskan minat mereka tanpa halangan.

Seperti yang digariskan dalam "[Pendaftaran Projek dan Bukti Ganjaran Sumbangan](white-paper.md#project-registration-and-proof-of-caruman-ganjaran)", projek yang didaftarkan dengan Protokol teh dan dengan teaRank yang mengatasi tadbir urus -ambang yang ditentukan akan menerima ganjaran Bukti Sumbangan dalam bentuk token TEA daripada Protokol teh. Pengedaran ini akan berterusan selagi pakej mematuhi peraturan protokol. Khususnya, pakej perlu mengekalkan TeaRank melebihi ambang tadbir urus yang ditetapkan dan penyelenggara pakej perlu menyumbang kepada reputasi dan kebolehpercayaan projek mereka dengan terus mempertaruhkan sebahagian daripada ganjaran Bukti Sumbangan yang diterima oleh perbendaharaan projek. Kegagalan untuk mematuhi peraturan ini akan mengakibatkan penggantungan pengedaran ganjaran Bukti Sumbangan dan pengagihan semula ganjaran masa depan di kalangan projek yang mematuhi.

Ketergantungan boleh menjejaskan kebolehpercayaan dan keselamatan pakej dengan ketara, dan ketiadaan pendaftaran untuk kebergantungan pakej harus dilihat sebagai potensi risiko. Penyelenggara pakej, sebagai pengesah dan pengguna tanggungan ini, berada dalam kedudukan utama untuk berhubung dengan penyelenggara tanggungan tersebut. Mereka boleh menggalakkan mereka untuk mendaftarkan projek mereka dengan teh, sekali gus menjadikan mereka tertakluk kepada pengawasan oleh pengecap teh dan layak mendapat ganjaran yang berkaitan. Untuk menggalakkan penglibatan seluruh komuniti ini yang bertujuan untuk meningkatkan sistem reputasi, kami mengesyorkan bahawa mana-mana pakej dengan kebergantungan yang tidak didaftarkan dengan Protokol teh melihat sebahagian kecil daripada ganjaran Bukti Sumbangannya dibakar. Pembakaran ini akan berkadar dengan bilangan dan sumbangan, yang dikira dalam teaRank, bagi setiap tanggungan tidak berdaftar, dan berterusan selagi tanggungan ini kekal tidak berdaftar.

Banyak kes telah menunjukkan bahawa insentif yang kuat boleh menarik pelakon yang berniat jahat untuk menjejaskan perisian sumber terbuka. Kebanyakan infrastruktur kritikal Internet berjalan pada sumber terbuka, dan perlumbaan untuk mencari eksploitasi dan kelemahan lain sedang dijalankan. Semasa minum petang, kami percaya bahawa penyelenggara pakej bukanlah orang yang harus dipersalahkan (walaupun mereka sering melakukannya).

Insentif Protokol teh menangani isu ini dengan memastikan pengagihan insentif yang adil dan saksama. Pakej seperti lodash dengan lebih 176k tanggungan adalah tonggak pembangunan sumber terbuka, dan penyelenggaranya berhak untuk diberi ganjaran secara berkadar. Walau bagaimanapun, sistem ganjaran yang dibina semata-mata berdasarkan bilangan tanggungan akan menghalang inovator daripada mengganggu monopoli ini melainkan mereka dibiayai secukupnya oleh pihak ketiga atau telah mengumpul sumber yang mencukupi untuk membiayai sendiri. Pendekatan ini berkemungkinan akan menyebabkan bilangan penyumbang yang semakin berkurangan, mengakibatkan kutub bertentangan dengan maksud teh.

Untuk menangani had ini dan memperkasakan setiap pemegang token TEA dengan keupayaan untuk menyokong penyelenggara pakej, kami juga mengesyorkan bahawa pecahan yang ditentukan tadbir urus bagi semua ganjaran pertaruhan yang diterima oleh semua peserta rangkaian ditujukan kepada perbendaharaan pakej yang dipertaruhkan, bersama-sama dengan kebergantungannya.

### Staking untuk Melindungi Rantaian Bekalan Perisian

Staking boleh menjadi metodologi yang berkesan untuk menyokong sistem reputasi terpencar. Walau bagaimanapun, untuk memudahkan keselamatan rantaian bekalan perisian, sistem pengedaran insentif teh mesti mempertimbangkan dengan teliti nisbah staking setiap pakej dan melaraskan setiap insentif pakej dengan sewajarnya.

Untuk mengurangkan risiko sebilangan kecil pakej yang digunakan sebagai kebergantungan merentas banyak aplikasi yang mengumpul kebanyakan ganjaran taruhan, kami mengesyorkan pelaksanaan nisbah taruhan optimum, serupa dengan pendekatan yang diterangkan dalam [penyelidikan yang dihasilkan oleh web3 Foundation](https://research.web3.foundation/Polkadot/overview/token-economics).

Apabila pakej melebihi nisbah pertaruhan optimum yang ditentukan oleh tadbir urus, jumlah amaun ganjaran pertaruhan yang diperuntukkan kepada pakej akan kekal tetap, tanpa mengira bilangan token TEA yang dipertaruhkan pada pakej. Langkah ini, direka bentuk untuk menyahinsentif penyokong pakej dan pengecap teh daripada mempertaruhkan pakej yang sangat dipertaruhkan, akan mengakibatkan penurunan linear ganjaran pertaruhan yang diterima oleh setiap penyokong pakej.

Pendekatan berasaskan lengkung, seperti yang diterangkan dalam penyelidikan Yayasan web3 akan memperlahankan pengurangan kumpulan ganjaran pertaruhan yang diperuntukkan kepada pakej, dengan itu terus mengambil alih daripada pakej yang kurang dipertaruhkan dan memperkenalkan luaran negatif dengan memberikan lebih banyak pengaruh pada besar pemegang token atas pengagihan kumpulan ganjaran pertaruhan.

Reka bentuk linear yang disyorkan harus membenarkan pakej yang kurang dipertaruhkan menjadi lebih menarik kepada penyokong pakej dan pengecap teh. Ia juga mungkin memberi insentif kepada pembangun berpengalaman untuk membina alternatif kepada pakej yang sangat dipertaruhkan, mewujudkan peluang bagi komuniti teh untuk mengimbangi sokongan perisian sedia ada dan mempromosikan inovasi. Dalam reka bentuk awalnya, nisbah staking akan dikira menggunakan bekalan beredar. Komuniti teh boleh mengubah reka bentuk ini untuk meningkatkan lagi skalabiliti sistem.

Sama seperti pelakon yang baik perlu diberi ganjaran; pelakon jahat perlu dikenal pasti dan dihukum. Perisian sumber terbuka menyediakan banyak peluang kepada pelakon jahat untuk mencipta titik kesakitan dan risiko reputasi untuk seluruh komuniti pembangun. Daripada penyelewengan kerja kepada pengubahan dan pengedaran semula pakej perisian, atau suntikan kod jahat, peperangan antara pelakon baik dan jahat berterusan, selalunya dengan pelakon jahat yang dibiayai dengan baik yang melihat pencemaran pakej sumber terbuka sebagai peluang untuk mendapat manfaat dari segi kewangan. Kelemahannya agak minimum, dengan pakej yang berpotensi diharamkan daripada rak digital atau tertakluk kepada reputasi yang buruk.

Untuk menangani secara langsung pelakon yang berniat jahat dan memperhebatkan kesan untuk tindakan yang bertentangan dengan sumber terbuka, kami mengesyorkan agar anda melaksanakan mekanisme pemotongan yang diperincikan dalam “[Semakan Pakej oleh Pihak Ketiga](white-paper.md#package-review-by-third-parties)” dan “[Pakej Lapuk atau Rosak](white-paper.md#outdated-or-corrupt-packages)” bahagian.

Semasa pengecap teh menilai dan menganalisis kod dalam pakej yang baru diserahkan, kami mencadangkan pengecap teh menerima alatan dan insentif untuk menentukan dan menyerlahkan kod jahat supaya

* pengguna pakej boleh dimaklumkan tentang risiko, dan
* penyelenggara pakej dan penyokong pakej dihukum kerana menyerahkan atau menyokong kod jahat.

Setakat itu, untuk semua ulasan negatif yang terbukti yang dilakukan mengikut peraturan rangkaian dan yang telah ditangani oleh penyelenggara pakej dalam tempoh yang ditetapkan tadbir urus, penyelenggara pakej tidak harus dikenakan apa-apa penalti yang bertentangan dengan penyokong pakej atau pencicip teh yang memberikan kesan positif. semakan pakej berkenaan.

Untuk ulasan negatif yang dilakukan mengikut peraturan rangkaian dan bahawa penyelenggara pakej tidak ditangani dalam tempoh yang ditetapkan tadbir urus, sebahagian kecil daripada token TEA yang dipertaruhkan oleh perbendaharaan projek, penyokong pakej dan pengecap teh sebelumnya akan dipotong dan dihantar ke pengecap teh yang mengenal pasti pepijat atau kelemahan. Satu lagi pecahan akan dikunci ke dalam kolam insurans yang dikawal oleh tadbir urus teh. Tadbir urus teh akan mewujudkan dasar dan peraturan dengan kerjasama rapat dengan komuniti untuk mengedarkan kandungan kolam kepada mereka yang terjejas oleh kelemahan. Protokol ini akan mengedarkan pecahan ketiga daripada token TEA yang dipotong kepada semua pengecap teh yang menyumbang kepada semakan negatif.

Memancing dan menebas adalah komponen penting dalam sistem insentif dan penalti Protokol teh. Penyelenggara pakej dikehendaki mempertaruhkan sebahagian daripada perbendaharaan projek mereka, memastikan mereka mempunyai kepentingan yang besar berisiko sekiranya mereka mengabaikan pepijat atau kelemahan. Pengguna pakej, penyokong dan pengecap teh juga boleh mempertaruhkan token TEA untuk menyumbang kepada reputasi penyelenggara pakej atau pakej dan mengambil bahagian secara aktif dalam protokol untuk menegakkan kemampanan dan integriti rantaian bekalan perisian.

Tadbir urus berkait rapat dengan penglibatan aktif ini. Bagi setiap token TEA yang dipertaruhkan, peserta menerima "TEA dipertaruhkan" (stTEA) yang tidak boleh dipindah milik pada nisbah 1:1, membolehkan mereka mengambil bahagian dalam tadbir urus Protokol teh. Ganjaran yang dipertaruhkan dan token stTEA yang sepadan mungkin menghadapi pengurangan (pemotongan) atau pengagihan semula jika peraturan protokol tidak dipatuhi, mengukuhkan akauntabiliti dalam ekosistem.

### Pengagihan Bekalan Token TEH

Majoriti token TEA yang dicipta oleh protokol digunakan sebagai insentif untuk menggalakkan penyelenggara pakej, pengguna dan penyokong melakukan aktiviti yang memberikan nilai kepada rangkaian terdesentralisasi. Pengagihan token TEA kepada pelbagai pihak berkepentingan dalam protokol ditentukan oleh "jadual pengedaran."

Insentif rangkaian akan diedarkan terus oleh Protokol teh, dalam bentuk token TEA, kepada empat kumpulan pemegang kepentingan:

* Penyelenggara Pakej;
* Pengguna Pakej (yang termasuk semua ahli komuniti teh);
* Penyokong Projek; dan,
* Pencicip teh.

Token TEA juga akan digunakan untuk menyokong pakej dan menjamin rantaian bekalan perisian melalui pertaruhan, termasuk hak untuk mencabar pakej dengan menjalankan semakan dan melaporkan pepijat atau kelemahan, memberi ganjaran kepada pembangun sumber terbuka bagi projek berdaftar, dan mengambil bahagian dalam tadbir urus. daripada Protokol teh.

Adalah disyorkan bahawa bekalan token maksimum 10 bilion diedarkan kepada semua ahli komuniti teh seperti yang diterangkan di bawah:

<figure><img src=".gitbook/assets/Token Allocation-Updated.svg" alt=""><figcaption><p>Rajah 3 - Pengagihan token bekalan maksimum</p></figcaption></figure>

Kira-kira 51.4% daripada bekalan token maksimum harus diperuntukkan kepada "Ekosistem & Tadbir Urus", yang termasuk insentif untuk projek sumber terbuka untuk meneruskan dan mengekalkan asas kod mereka serta ganjaran untuk menyumbang kepada undian terdesentralisasi dan konsensus melalui DAO teh. Token yang diperuntukkan kepada "Ekosistem & Tadbir Urus" hendaklah diedarkan sebagai ganjaran Bukti Sumbangan, ganjaran pertaruhan dan jenis insentif tertumpu pembangun yang lain.

Kira-kira 18.6% daripada bekalan token maksimum harus diperuntukkan kepada "Pembangunan Protokol" untuk memastikan kemampanan dan evolusi berterusan Protokol teh. Kira-kira 12.7% harus diperuntukkan untuk "Penyokong & Penasihat Awal". Kira-kira 11.0% perlu diperuntukkan untuk jualan Persendirian, 3.0% untuk jualan awam, manakala baki 3.2% perlu diperuntukkan untuk menyokong kecairan pasaran sebaik sahaja peristiwa penjanaan token berlaku.

Tokenomik terperinci, termasuk jadual Pengagihan dan Pelepasan Token yang komprehensif akan menjadi subjek kertas khusus.

## Tadbir urus

Tadbir urus adalah penting untuk pembangunan, kemampanan dan penggunaan mana-mana sistem teragih.

Kami mencadangkan Protokol teh menggabungkan mekanisme tadbir urus yang membolehkan penyumbang aktif yang telah mempertaruhkan token TEA untuk mencadangkan dan mengundi pada perubahan parameter kritikal bukan kewangan. Proses pengundian akan ditimbang oleh pemilikan token stTEA dan reputasi individu.

Parameter protokol boleh termasuk keutamaan untuk menyokong pengurus pakej tertentu atau memperkenalkan ciri atau fungsi protokol baharu, serta kesan faktor luaran ke atas reputasi pengguna dan pakej. Fungsi ini akan memastikan bahawa parameter kritikal boleh berkembang dan dioptimumkan dari semasa ke semasa oleh ahli aktif komuniti teh. Kami menjangkakan tadbir urus akan dilancarkan dengan struktur yang mudah dan berkembang secara progresif apabila sistem teh semakin matang, memudahkan penerimaan dan memastikan desentralisasi yang progresif.

Sesetengah parameter sistem mungkin tidak tertakluk kepada tadbir urus atau menyokong perubahan frekuensi tinggi untuk mengurangkan permukaan serangan yang diwakili oleh tadbir urus. Peralihan progresif parameter kepada tadbir urus terbuka dan terpencar akan memastikan kestabilan dan kebolehramalan sistem.

## Kebolehlanjutan Pihak Ketiga

Sambil kami membina alatan awal untuk menyemarakkan sokongan komuniti sumber terbuka yang telah lama tertunggak, kami percaya sebahagian daripada misi kami adalah untuk memastikan pihak ketiga boleh melanjutkan set alatan keseluruhan. Selain menyediakan infrastruktur untuk pembangun membina sambungan kepada protokol, termasuk cara baharu untuk berinovasi dan meneruskan sokongan pembangun sumber terbuka, rancangan kami termasuk potensi untuk pengurus pakej lain menyumbang kepada protokol.

Impian dan usaha pembangun sumber terbuka telah membina inovasi yang menyokong kehidupan seharian kita. Kami tidak sabar-sabar untuk menemui kegunaan dan sambungan baharu untuk Protokol teh yang dicadangkan oleh komuniti teh.

## Kerja Masa Depan dan Potensi Usaha Komuniti

Apabila sistem teh semakin matang, kami menjangka masyarakat akan membuat keputusan dan menyumbang kepada pengubahsuaian dan lanjutan sistem teh melalui tadbir urus. Di bawah ialah beberapa idea yang kami percaya boleh memberi inspirasi kepada sesetengahnya, namun kami tidak menjamin sebarang prestasi masa hadapan.

### Pemborong teh

Komuniti perisian sumber terbuka bertenaga dan sentiasa mencari untuk berinovasi dan menyampaikan nilai. Dedikasi dan altruisme ini membawa kepada pembinaan berterusan perisian dan pakej baharu, masing-masing menarik kebergantungan. Akibatnya, kami menjangkakan peta kebergantungan akan berkembang secara berterusan, membawa kepada perubahan yang kerap pada nisbah pertaruhan dan ganjaran. Pada masa hadapan, komuniti teh mungkin mencadangkan pembangunan sistem yang direka bentuk untuk memantau nisbah staking secara dinamik bagi setiap projek dan mengimbangi semula cara penyokong projek mempertaruhkan token TEA mereka berdasarkan kriteria mereka sendiri.

### Royalti pada Pemindahan Pakej

Kami menyedari bahawa penyelenggara pakej mungkin memutuskan untuk memindahkan aliran ganjaran mereka kepada satu atau lebih pembangun. Tadbir urus pemindahan sedemikian mesti kekal sebagai keputusan penyelenggara pakej dan rakan kongsi mereka, tanpa gangguan daripada teh. Alat perlu disediakan untuk pemindahan sedemikian menjadi keseluruhan atau sebahagian (mungkin melalui hanya sebahagian daripada ganjaran yang dialihkan kepada satu atau lebih pembangun, manakala ganjaran yang selebihnya terus mengalir ke penyelenggara pakej asal) dan untuk ganjaran staking kepada mengalir melalui satu akaun yang dikawal oleh peserta rangkaian tunggal, berbilang peserta rangkaian, atau diedarkan secara automatik merentas berbilang akaun menggunakan nisbah statik atau dinamik.

### Pengagihan Ganjaran Merentas Berbilang Penyelenggara

Penyelenggaraan pakej boleh bergantung pada kerja satu lagi pasukan pembangun. Sebelum ganjaran mula mengalir, pasukan harus mempertimbangkan untuk mengautomasikan pengagihan nilai sesama mereka. Bagaimana pengagihan berlaku mesti ditentukan oleh penyelenggara sendiri, kerana mereka berada dalam kedudukan terbaik untuk menilai siapa yang menyumbang dan bagaimana mereka harus diberi ganjaran.

Untuk mencapainya, setiap pasukan (atau pasukan) boleh menubuhkan organisasi autonomi terpencar mereka sendiri ([DAO](https://ethereum.org/en/dao/)) dan sama ada mengautomasikan pengedaran atau menggunakan sistem yang lebih kompleks untuk menentukan pengagihan nilai yang mencukupi berdasarkan faktor luaran seperti undian daripada semua ahli DAO, atau pengagihan berasaskan masa berdasarkan sumbangan berterusan, kejayaan menyiapkan habuan, dsb.

### Mengendalikan Pakej "Forks"

Kami percaya bahawa garpu adalah penting dan sebahagian besarnya kurang digunakan. Forks boleh menjadi alat yang berkesan untuk membangunkan pakej yang bersaing dalam fungsi, prestasi, keselamatan, dan juga perhatian. Walaupun berguna, garpu mesti mengenali usaha asal. Melalui kerja masa depan atau sumbangan berpotensi, komuniti teh mungkin mempertingkatkan sistem untuk menghendaki garpu diisytiharkan, mungkin juga dikesan apabila projek didaftarkan. Garpu yang tidak diisytiharkan yang didedahkan oleh pencicip teh boleh mengakibatkan sebahagian daripada pancang perbendaharaan garpu dipotong, dipindahkan kepada penyelenggara pakej asal atau dihantar kepada pencicip teh yang mendedahkan garpu.

### Masa Jalan lwn. Ketergantungan Binaan

teh mungkin tidak membezakan kebergantungan binaan daripada kebergantungan masa jalan apabila mengedarkan ganjaran Bukti Sumbangan semasa pelancaran. Walau bagaimanapun, dengan syarat komuniti teh berasa kuat untuk membuat perbezaan sedemikian, komuniti teh boleh mencadangkan penambahbaikan pada algoritma pengedaran ganjaran untuk mengambil kira kritikal setiap pergantungan dan sumbangan mereka kepada nilai individu pakej yang bergantung kepada mereka. Cadangan ini akan diundi dan dilaksanakan berdasarkan keputusan komuniti.

### Ganjaran berasaskan penggunaan

Memandangkan lebih banyak aplikasi dibina menggunakan projek yang didaftarkan dengan teh, komuniti boleh menambah algoritma ganjaran supaya peruntukan mungkin dipengaruhi oleh set data luaran yang disahkan seperti penggunaan. Kemas kini kepada mekanisme ganjaran ini boleh membenarkan peruntukan yang lebih tinggi bagi ganjaran token TEA mengalir ke arah pakej dengan penggunaan tertinggi sambil tetap menghormati kekangan nisbah taruhan yang diterangkan dalam bahagian token TEA. Penyelenggara pakej boleh menggunakan pendekatan yang sama untuk mengedarkan ganjaran merentasi kebergantungan mereka berdasarkan logik telus pilihan mereka. Ambil perhatian bahawa semua maklumat yang digunakan untuk mempengaruhi pengagihan ganjaran merentas pakej dan kebergantungan dalam sistem teh perlu dibuktikan boleh dipercayai.

## Penghargaan

Kertas putih ini tidak akan wujud tanpa sokongan dan dedikasi ramai ahli teh. Penulis ingin mengucapkan terima kasih kepada Jacob Heider, Jadid Khan, Josh Kruger, dan Shane Molidor atas sumbangan mereka kepada tokenomics, Sanchit Ram atas sumbangannya kepada algoritma teaRank, dan banyak individu diskret yang menyumbangkan masa mereka untuk memberikan maklum balas tentang kandungan dokumen ini.

## Glosari Istilah

| Istilah     | Takrifan                                                                                                                                                                                        |
| -------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Daun     | Denominasi terkecil token TEA. Sehelai daun sepadan dengan satu per quintillion (10^−18) teh.                                                                                            |
| Menebas | Tindakan menghukum staker sebagai tindak balas terhadap tingkah laku yang bertentangan dengan peraturan protokol.                                                                                                          |
| Mempertaruhkan  | Tindakan mengunci token TEA untuk menyokong tuntutan anda dan menerima ganjaran (atau penalti) berdasarkan konsensus kesahihan tuntutan anda.                                                   |
| stTEA    | Token "TEA dipertaruhkan" tidak boleh dipindah milik atau "stTEA" yang diterima oleh peserta rangkaian untuk setiap token dipertaruhkan pada nisbah 1:1. stTEA boleh digunakan untuk mengambil bahagian dalam tadbir urus Protokol teh |
| teaRank  | Skor impak dinamik yang diberikan kepada setiap projek oleh algoritma "Bukti Sumbangan" protokol.                                                                                                |

## Rujukan

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
