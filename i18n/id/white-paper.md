---
deskripsi: Versi 2.1.0
---

# Kertas Putih

## Protokol Terdesentralisasi bagi Pengembang Sumber Terbuka untuk Menangkap Nilai yang Mereka Ciptakan

* Max Howell
* Thomas Borrel
* Timotius Lewis
* Troy Wong

## Abstrak

Sebuah sistem di mana pengembang sumber terbuka dapat menerima imbalan yang sepadan dengan kontribusi mereka akan meningkatkan keberlanjutan dan integritas rantai pasokan perangkat lunak. Protokol terdesentralisasi yang dijamin oleh reputasi dan insentif dapat mencapai hal ini dengan memfasilitasi perolehan nilai kembali kepada pengembang yang memelihara basis kode sumber terbuka sebagai utilitas publik, sehingga mendorong inovasi dan pertumbuhan masa depan dalam ekosistem sumber terbuka. Pengelola paket akan mendaftarkan proyek mereka dengan registri yang didukung oleh blockchain yang toleran terhadap kesalahan Bizantium. Algoritme unik “Bukti Kontribusi” dari Protokol tea akan menentukan kontribusi dan dampak setiap proyek terhadap utilitas dan kesehatan sistem. Proyek yang terdaftar akan menerima imbalan dari Protokol tea yang sepadan dengan kontribusinya, dijamin melalui staking, mendapatkan manfaat dari sistem reputasi yang mencakup proyek dan kontributor, dan memiliki opsi untuk mengizinkan komunitas mengatur wilayah mereka di ekosistem sumber terbuka, secara independen dari agenda eksternal. Protokol tea akan memberi insentif pada pemeliharaan sumber terbuka dengan mengizinkan peserta jaringan yang mendaftarkan proyek mereka dan mematuhi aturan jaringan untuk menerima hadiah dan berkontribusi pada reputasi dan proyek mereka. Jika ditemukan masalah keamanan atau pengembangan, pengembang dapat membuat klaim yang didukung oleh bukti terhadap paket tersebut, dan pemotongan dapat terjadi. Anggota komunitas sumber terbuka dapat meninjau paket untuk masalah kualitas, dan protokol dapat menanggapi tinjauan ini dengan memberlakukan tindakan pemotongan yang proporsional.

## Penafian

Informasi yang disajikan dalam buku putih ini bersifat awal. Oleh karena itu, baik penulis maupun afiliasinya masing-masing tidak bertanggung jawab bahwa informasi yang ditetapkan di sini adalah final atau benar dan setiap penyangkalan di atas, sejauh diizinkan oleh hukum yang berlaku, setiap dan semua tanggung jawab baik yang timbul dalam perbuatan melawan hukum, kontrak atau sebaliknya sehubungan dengan buku putih ini. Baik kertas putih ini maupun apa pun yang terkandung di dalamnya tidak boleh menjadi dasar atau diandalkan sehubungan dengan atau bertindak sebagai bujukan untuk mengadakan kontrak atau komitmen apa pun.

Tidak ada apa pun dalam buku putih ini yang merupakan tawaran untuk menjual atau ajakan untuk membeli token apa pun yang dibahas di sini. Dalam keadaan apa pun, jika kertas putih ini dianggap sebagai tawaran atau ajakan semacam itu, tawaran atau ajakan tersebut tidak dimaksudkan atau disampaikan oleh kertas putih ini di yurisdiksi mana pun yang melanggar hukum, jika tawaran atau ajakan tersebut akan melanggar hukum. memerlukan lisensi atau pendaftaran, atau apabila penawaran atau permintaan tersebut tunduk pada pembatasan. Secara khusus, token apa pun yang dibahas di sini belum, dan, pada tanggal penerbitan buku putih ini, tidak dimaksudkan untuk didaftarkan berdasarkan sekuritas atau undang-undang serupa di yurisdiksi mana pun, terlepas dari apakah yurisdiksi tersebut menganggap token tersebut sebagai token atau tidak. merupakan surat berharga atau instrumen serupa dan tidak boleh ditawarkan atau dijual di yurisdiksi mana pun jika hal tersebut merupakan pelanggaran terhadap undang-undang yang relevan di yurisdiksi tersebut. Jangan membeli token apa pun kecuali Anda siap kehilangan seluruh harga pembelian. Ini adalah pembelian berisiko tinggi dan kemungkinan besar Anda tidak akan terlindungi jika terjadi kesalahan.

## Lisensi

Makalah ini tersedia di bawah [lisensi Creative Commons Attribution-ShareAlike 4.0 International](https://creativecommons.org/licenses/by-sa/4.0/).

## Perkenalan

Internet modern sebagian besar terdiri dari proyek sumber terbuka dan telah ada sejak awal. Proyek sumber terbuka dikembangkan dan dikelola melalui kolaborasi antara komunitas pengembang global, dan basis kodenya tersedia bagi siapa saja untuk dimanfaatkan sebagai barang publik. Dalam 80 tahun terakhir ([secara umum diyakini](https://archive.org/details/historyofmodernc00ceru) bahwa contoh pertama perangkat lunak bebas dan sumber terbuka dirilis pada tahun 1953), perangkat lunak sumber terbuka telah berevolusi dari produk dari penghobi teknologi khusus ke infrastruktur tempat semua inovasi dibangun. Meskipun pentingnya perangkat lunak sumber terbuka, para pengembang yang membuat dan memelihara basis kode sebagai utilitas publik tidak menerima imbalan yang sepadan atas kontribusi besar mereka sebagai inovator dan pemelihara.

Perangkat lunak perusahaan, yang telah berkembang menjadi industri bernilai miliaran dolar, dibangun di atas fondasi sumber terbuka. Namun hampir tidak ada nilai yang diperoleh kembali kepada individu-individu yang tanpa pamrih mempertahankan fondasinya. Meskipun banyak keuntungan yang didapat dari hal ini, perangkat lunak sumber terbuka sebagian besar dibuat dan dipelihara sebagai utilitas publik tanpa adanya sarana yang layak bagi pengembang untuk menangkap nilai yang mereka ciptakan.

Kami percaya bahwa potensi internet modern telah terhambat karena mengandalkan sebagian kecil insinyur di dunia untuk memelihara perangkat lunak sumber terbuka semata-mata karena alasan altruisme. Sumber terbuka adalah hasil kerja keras yang sering kali terhambat oleh kurangnya insentif yang berarti bagi pengelola inti. Pengembang open source harus memilih antara pekerjaan harian yang memberikan upah layak atau mempertahankan fondasi perangkat lunak perusahaan. Kurangnya insentif mengakibatkan proyek-proyek yang benar-benar bermanfaat tidak pernah mencapai potensinya sementara proyek-proyek lain mengalami masalah keamanan karena kurangnya pemeliharaan sepanjang siklus hidup perangkat lunak. Untuk membuka potensi penuh dari sumber terbuka, kami memerlukan metode universal untuk menilai “nilai wajar” proyek sumber terbuka, yang memungkinkan pengembang sumber terbuka untuk menangkap nilai yang mereka ciptakan dengan memfasilitasi arus masuk modal ke komunitas sumber terbuka. semuanya tanpa mengubah prinsip inti bagaimana sumber terbuka dikembangkan dan digunakan.

Perusahaan sering kali menggabungkan model bisnis dengan sumber terbuka, menghasilkan pendapatan langsung dari karya pengembang yang baik hati, sekaligus mengandalkan mereka untuk memperbaiki bug saat masalah terjadi. Basis kode sumber terbuka menawarkan fungsionalitas inti plug-and-play untuk perusahaan; namun, kerentanan perangkat lunak dapat menimbulkan risiko besar bagi aplikasi yang dibangun di atas sumber terbuka. Contoh yang bagus adalah insiden baru-baru ini yang melibatkan kerentanan keamanan kritis di Log4j, sebuah paket dari [Apache Software Foundation](https://www.apache.org/) yang ditemukan di banyak perangkat lunak dan layanan komersial yang digunakan oleh perusahaan dan pemerintah. Pada bulan November 2021, seorang peneliti keamanan yang bekerja untuk [Alibaba Group Holding Ltd.](https://www.alibabagroup.com/) melaporkan kerentanan [CVE-2021-44228](https://nvd.nist.gov/vuln/detail/CVE-2021-44228), yang menerima skor dasar tertinggi dari Apache Software Foundation. Amit Yoran, Kepala Eksekutif [Tenable](https://www.tenable.com/) dan direktur pendiri Tim Kesiapan Darurat Komputer Amerika Serikat (US-CERT), menggambarkan kerentanan ini sebagai “[yang terbesar, paling kritis kerentanan dekade terakhir](https://www.reuters.com/article/usa-cyber-vulnerability-idCNL1N2SY2PA)”. Kepanikan pun terjadi dan beberapa relawan yang mempertahankan paket ini mendapat kecaman di depan umum atas kegagalan tersebut. Setelah mengatasi kemarahan tersebut dengan permohonan keadilan yang rendah hati, sistem diperbaiki. Perusahaan dan pemerintah akhirnya menyadari bahwa Log4j, sebuah paket yang digunakan oleh berbagai sistem penting selama dua dekade, dikelola oleh beberapa sukarelawan yang tidak dibayar, pahlawan tanpa tanda jasa yang sama yang langsung mengambil tindakan meskipun ada [penyalahgunaan dari industri](https://x.com/yazicivo/status/1469349956880408583) dan bekerja tanpa kenal lelah untuk mengatasi kerentanan tersebut.

Sayangnya, Log4j bukanlah satu-satunya contoh. core-js diunduh 30 juta kali per minggu sebagai basis setiap aplikasi Node.js, namun pendanaannya juga terbatas, sehingga berpotensi memaksa pengelola utamanya untuk [meninggalkan proyek atau bahkan mengubah lisensinya menjadi sumber tertutup](https://www.thestack.technology/core-js-maintainer-denis-pusharev-license-broke-angry/). Baru-baru ini beberapa pengembang inti bitcoin mengundurkan diri, dengan alasan, antara lain, kurangnya kompensasi finansial atas keputusan mereka.

<figure><img src="https://drive.google.com/file/d/1wDYxF5Pc7xS0SIr0u1FdmrPbjy9qEIhJ/view?usp=sharing" alt=""><figcaption><p>Gambar 1 - Ketergantungan - Sumber: <a href="https://xkcd.com/2347/">https://xkcd.com/2347/</a></p></figcaption></figure>

Ada berbagai upaya untuk menyediakan struktur insentif, biasanya melibatkan sistem sponsorship dan bounty. Sponsor memungkinkan konsumen sumber terbuka untuk menyumbang ke proyek yang mereka sukai. Namun, bayangkan open-source sebagai sebuah menara batu bata di mana lapisan bawahnya sudah lama terlupakan, namun masih dikelola oleh para insinyur yang berdedikasi dan diandalkan oleh lebih banyak pengembang. Hanya proyek-proyek di puncak menara yang biasanya diketahui dan menerima sponsor. Pemilihan yang bias ini menyebabkan batu bata penting yang menopang menara tidak menarik sumbangan, sementara favorit menerima lebih dari yang mereka butuhkan. Bounty memungkinkan konsumen proyek untuk mengusulkan pembayaran bagi pengembang untuk membangun fitur tertentu, sehingga hanya memberi penghargaan pada proyek yang melakukan hal-hal yang mungkin bukan kepentingan terbaik mereka. Dan sekali lagi, hanya memberi penghargaan pada favorit.

Saat ini, kami telah melihat terlalu banyak proyek sumber terbuka yang menderita karena upaya yang gagal dalam mendukung komunitas sumber terbuka dan telah menjadikan misi kami untuk meningkatkan keberlanjutan dan integritas rantai pasokan perangkat lunak dengan memungkinkan pengembang sumber terbuka untuk mengambil keuntungan dari hal tersebut. nilai yang mereka ciptakan.

Dalam makalah ini, kami mengusulkan tea – sebuah sistem desentralisasi

1. menghitung dan menetapkan “[Bukti Kontribusi](white-paper-ID.md#bukti-kontribusi)” untuk setiap proyek sumber terbuka yang berhubungan dengan keseluruhan ekosistem,
2. memastikan proyek perangkat lunak sumber terbuka terpelihara dengan baik,
3. memberdayakan pengembang sumber terbuka dengan imbalan yang adil dan sebanding dengan kontribusi mereka di seluruh ekosistem, yang dicapai melalui penerapan algoritma insentif tea di setiap entri dalam daftar tea, dan
4. memberikan insentif kepada peserta jaringan untuk mengikuti praktik pengungkapan yang bertanggung jawab atas kerentanan dan bug.

## Komponen

Pengembang perangkat lunak yang membangun aplikasi memerlukan empat hal: browser, terminal, editor, dan manajer paket. Dari keempatnya, manajer paket adalah orang yang mengontrol peralatan dan kerangka kerja yang dibutuhkan pengembang untuk membangun produknya. Lapisan ini adalah tempat kami melihat potensi untuk mengubah cara keamanan dan penghargaan sumber terbuka.

### Manajer Paket

Manajer paket mengetahui perangkat lunak sumber terbuka apa yang bergantung pada suatu paket atau aplikasi agar dapat berfungsi, dari puncak menara hingga basisnya. Setiap proyek, bersama dengan setiap versi paketnya, dengan cermat mendokumentasikan semua komponen penting dan versi terkaitnya.

Ia mengetahui bahwa puncak menara dengan hati-hati memilih dependensinya, dan seleksi yang cermat berlanjut ke bawah. Manajer paket ditempatkan secara unik di tumpukan alat pengembang untuk memungkinkan distribusi nilai yang otomatis dan tepat berdasarkan kontribusi nyata di dunia nyata.

Kami mengusulkan registri terdesentralisasi yang tidak dapat diubah yang dirancang untuk mendistribusikan nilai berdasarkan “Bukti Kontribusi” yang unik dari Protokol tea, sebuah algoritma yang menentukan kontribusi dan dampak setiap proyek terhadap utilitas dan kesehatan sistem. Nilai dapat masuk ke grafik pada titik puncak—seperti perpustakaan penting—dan didistribusikan ke dependensi paket tersebut dan dependensinya secara rekursif karena registri mengetahui keseluruhan grafik sumber terbuka.

Selain itu, kami percaya bahwa informasi yang diberikan oleh Bukti Kontribusi protokol harus tersedia bagi pengembang untuk menilai apakah mereka dapat mempercayai suatu proyek dan pembuatnya. Informasi ini mungkin didasarkan pada reputasi, pujian komunitas, data yang diambil dari sistem identitas terdesentralisasi ("[DID](https://www.w3.org/TR/did-core/)"), pengelola paket lainnya, atau mekanisme insentif yang berpotensi bergantung pada peserta jaringan yang mempertaruhkan nilai.

Kami memperkirakan bahwa kombinasi alat, informasi, dan penghargaan dari tea akan memberikan insentif yang tepat kepada pengembang, membantu mengamankan rantai pasokan perangkat lunak, merangsang pertumbuhan perangkat lunak sumber terbuka, dan mendorong inovasi.

### Registri Terdesentralisasi

Setiap manajer paket memiliki registri paketnya sendiri yang menduplikasi metadata yang sama berulang kali. Dalam beberapa kasus, registri ini mungkin berisi [informasi yang berbeda dari manifes proyek](https://www.bleepingcomputer.com/news/security/npm-ecosystem-at-risk-from-manifest-confusion-actions/), sehingga memungkinkan pelaku kejahatan berpotensi memasukkan kode jahat tanpa sepengetahuan pengguna. Sudah saatnya ada sistem pencatatan yang tunggal, komprehensif, dan definitif yang dirancang dan diatur oleh masyarakat yang bergantung padanya. Registri yang terdesentralisasi dan tidak dapat diubah ini dapat memberikan keamanan, stabilitas, dan mencegah niat jahat.

Internet berjalan pada puluhan ribu komponen sumber terbuka yang penting. Sungguh luar biasa bahwa sejauh ini, insiden yang disebabkan oleh penghapusan infrastruktur sumber terbuka yang penting sangat minim. Yang paling terkenal adalah [penghapusan ketergantungan papan kiri NPM](https://www.theregister.com/2016/03/23/npm\_left\_pad\_chaos/) pada tahun 2016, yang kemudian mengarah ke integrasi berkelanjutan dan sistem penerapan berkelanjutan, membuat pengembang kebingungan selama berhari-hari. Peristiwa ini menunjukkan bahwa Internet sendiri didasarkan pada sistem pembangunan yang rapuh. Contoh lain melibatkan partisipasi aktif atau disengaja dari pengelola paket yang menyabotase paket populer mereka (Lihat [colors.js dan faker.js](https://fossa.com/blog/npm-packages-colors-faker-corrupted/), sebagai serta [node-ipc](https://www.lunasec.io/docs/blog/node-ipc-protestware/)), atau pelaku jahat yang mencari keuntungan dengan berpura-pura membantu memelihara paket dan merusaknya untuk dicuri, misalnya misalnya, kunci pribadi Bitcoin (Lihat [event-stream](https://github.com/dominictarr/event-stream/issues/116)), atau paket berbahaya dengan kesalahan ejaan yang disengaja, juga dikenal sebagai “[typosquatting](https://en.wikipedia.org/wiki/Typosquatting)”, dengan harapan dapat mengelabui pengguna agar menginstalnya, misalnya [paket NPM crossenv vs. cross-env](https://blog.npmjs.org/post/163723642530/crossenv-malware-on-the-npm-registry.html).

Integritas perangkat lunak perlu dijamin seiring kemajuan industri menuju masa depan di mana aset digital adalah bagian dari perangkat lunak. Kita tidak bisa membiarkan diri kita rentan terhadap pelaku jahat yang memodifikasi perangkat lunak.

Sebagian besar alat yang kami sebut sebagai pengelola paket tidak dapat menjamin bahwa paket-paket yang dibangun ke dalam aplikasi dan dApps adalah kode sumber terbuka yang tidak diubah dan diterbitkan oleh pembuat aslinya. [GitHub Microsoft menemukan bahwa 17% kerentanan dalam perangkat lunak ditanam untuk tujuan jahat](https://www.zdnet.com/article/open-source-software-how-many-bug-are-hidden-there-on-tujuan/), dengan beberapa tetap tidak terdeteksi untuk waktu yang lama (Lihat [Webmin 1.890](https://threatpost.com/backdoor-found-in-utility-for-linux/147581/)).

Registri global yang terdesentralisasi ditambah dengan sistem reputasi dan didukung oleh insentif yang dirancang untuk mengungkap pelaku kejahatan dan memberikan penghargaan kepada pelaku kejahatan dapat memberikan jaminan yang dicari oleh komunitas pengembang untuk mengamankan rantai pasokan perangkat lunak.

### Sistem Penyimpanan

Proyek sumber terbuka memberikan beragam fungsi, beberapa di antaranya mungkin dibatasi atau tidak diinginkan. Enkripsi adalah contoh yang bagus untuk itu. Kasus penggunaan enkripsi yang penting adalah dukungan terhadap privasi individu di seluruh dunia. Namun,. enkripsi juga dapat digunakan untuk tujuan jahat (lihat [Phantom Secure](https://www.fbi.gov/news/stories/phantom-secure-takedown-031618), yang dibongkar oleh lembaga penegak hukum pada bulan Maret 2018) atau mungkin dikompromikan untuk mendukung aktivitas penegakan hukum (Lihat [Operation Ironside (AFP), Operation Greenlight (Europol), dan Operation Trojan Shield (FBI)](https://www.europol.europa.eu/media-press/newsroom/news/800-criminals-arrested-in-biggest-ever-law-enforcement-operation-against-encrypted-communication) di mana FBI mengoperasikan platform komunikasi “terenkripsi”, AN0M, dan meyakinkan penjahat untuk menggunakan telepon “terenkripsi” mereka untuk komunikasi yang aman).

Aplikasi enkripsi yang luas menjadikannya kasus penggunaan yang sempurna untuk perangkat lunak sumber terbuka dan contoh yang bagus bahwa solusi apa pun yang menyimpan paket harus tahan terhadap kerusakan dan tahan sensor. tea adalah protokol terdesentralisasi yang tidak bermaksud memfilter atau memberikan sanksi pada paket berdasarkan fungsinya. Meskipun tata kelola tea mungkin memilih untuk menghapus paket yang terbukti berbahaya (lihat [bagian tata kelola](white-paper-ID.md#tata-kelola) untuk informasi lebih lanjut), sistem tea harus terhubung dengan berbagai sistem penyimpanan, termasuk sistem terdesentralisasi yang menunjukkan bahwa suatu paket tidak diubah dan direplikasi dengan benar. Pengelola paket dapat memilih sistem penyimpanan yang paling sesuai dengan kebutuhan mereka untuk menyimpan dan mendistribusikan paket mereka dengan aman.

## Ikhtisar Protokol

Merancang protokol untuk menghargai kontribusi sumber terbuka menghadirkan tantangan yang berat. Perangkat lunak sumber terbuka, karena dapat diakses secara universal, rentan terhadap kesalahan atribusi, perampasan, dan gangguan berbahaya. Namun, komunitas open source secara konsisten menunjukkan kesediaannya untuk menyoroti aktor baik dan mengekspos aktor jahat. Secara historis, energi yang dihabiskan untuk meninjau dan mengomentari kontribusi pengembang lain sepenuhnya bersifat sukarela, meskipun pelaporan dan pembelaan temuan mungkin memakan waktu dan krusial.

Kami bermaksud untuk menciptakan protokol terdesentralisasi yang dijamin dengan reputasi dan insentif yang meningkatkan keberlanjutan dan integritas rantai pasokan perangkat lunak dengan memungkinkan pengembang sumber terbuka untuk menangkap nilai yang mereka ciptakan dengan cara yang tidak dapat dipercaya. Kami percaya bahwa imbalan yang memadai atas kontribusi sumber terbuka tidak akan berhasil tanpa sistem reputasi dan kemampuan anggota komunitas untuk mengomunikasikan temuan dan dukungan (atau perbedaan pendapat) mereka terhadap proyek atau pekerjaan pengembang. Selain itu, kita harus menyediakan alat bagi pengembang untuk mengakses dan berkontribusi pada sistem reputasi ini. Alat yang mencakup akses visual sederhana dan dapat diprogram ke versi dan reputasi semua dependensi dalam proyek mereka.

Transparansi pada token TEA yang dipertaruhkan oleh anggota komunitas untuk mendukung setiap proyek akan meningkatkan reputasi setiap proyek, sama seperti jumlah token yang dipertaruhkan oleh pengelola paket pada pekerjaan mereka menandakan komitmen mereka terhadapnya. Gabungan titik data ini akan membantu menginformasikan sistem reputasi bagi semua anggota komunitas dan memfasilitasi pilihan. Karena [peretasan paket event-stream](https://medium.com/intrinsic-blog/compromised-npm-package-event-stream-d47d08605502) tidak dilakukan melalui paket itu sendiri, tetapi melalui salah satu dependensinya, visibilitas seluruh lapisan ketergantungan akan sangat penting untuk membangun sistem yang tidak dapat dipercaya ini. Namun, pertimbangan seperti biaya komputasi dan transaksi (“gas”) perlu menjadi prioritas saat sistem dirancang dan dibangun.

Tujuan kami adalah memberi penghargaan kepada pengembang Web 2.0 dan web3. Seluk-beluk dan spesifik setiap tumpukan membuat pelacakan instalasi paket dapat dengan mudah menjadi korban satu atau lebih pelaku jahat. Hal ini termasuk “membeli” instalasi untuk meningkatkan angka secara artifisial. Skenario yang lebih buruk lagi adalah memperkenalkan perubahan mendasar pada sifat perangkat lunak sumber terbuka dengan menciptakan gesekan yang tidak perlu dengan kunci lisensi atau mekanisme pelacakan penerapan lainnya. Untuk memberikan cakupan yang lebih luas, kami percaya bahwa imbalan tidak boleh bergantung pada gagasan sederhana mengenai instalasi pelacakan, namun lebih pada mekanisme insentif yang mendorong penyerahan paket berkualitas dan pelaporan paket jahat atau berisiko tinggi. Terakhir, banyak paket bergantung pada dependensi umum. Misalnya, [lodash](https://www.npmjs.com/package/lodash) memiliki 176.308 tanggungan sumber terbuka sementara [chalk](https://www.npmjs.com/package/chalk) memiliki 100.247 tanggungan atau [log4js](https://www.npmjs.com/package/log4js/) memiliki 3.809 tanggungan. Karena semakin banyak paket yang dibuat menggunakan ketergantungan yang sama, bagaimana kita memastikan bahwa imbalan didistribusikan secara adil dan merata? Bagaimana kita memastikan bahwa dependensi yang paling banyak digunakan akan dihargai tanpa membuat paket dan pengembang baru atau yang sedang berkembang kelaparan? Bagaimana kita memastikan bahwa sistem insentif tidak membuat pengembang menjauh dari bahasa khusus dan memusatkannya pada tempat yang insentifnya lebih baik? Namun, sebagai pengembang, bagaimana kita mengidentifikasi paket-paket yang memiliki ketergantungan paling besar untuk membangun alternatif - versi paket-paket ini yang lebih ramping, lebih efisien, dan berkode lebih baik?

Di tea, kami percaya bahwa kurangnya visibilitas dan insentif telah menghambat evolusi perangkat lunak sumber terbuka. Didukung oleh insentif dan penghargaan yang tepat, akan lebih banyak pengembang yang mampu membangun, meningkatkan, dan memperluas perangkat lunak sumber terbuka demi kemajuan dunia.

### Bukti Kontribusi

Dalam buku putih ini, kami mengusulkan “Bukti Kontribusi”, sebuah mekanisme konsensus baru yang dirancang untuk mengukur dampak semua proyek di seluruh sistem sumber terbuka.

Bukti Kontribusi memberikan skor dinamis, yang disebut sebagai teaRank proyek, berdasarkan orientasi masing-masing proyek sumber terbuka, dan pemanfaatan dari ekosistem sumber terbuka yang lebih luas dari waktu ke waktu.

Kami percaya bahwa pendekatan ini menguntungkan perangkat lunak dasar yang jauh dari lapisan aplikasi (yang cenderung menjadi lapisan yang paling terlihat oleh publik dan paling menarik minat) dan memperluas mekanisme penghargaan untuk memastikan bahwa semua komponen proyek—dari atas pohon, sampai ke pangkalnya—diberi imbalan atas kontribusinya.

Untuk menghitung skor setiap proyek, teaRank dibangun berdasarkan fondasi yang diletakkan oleh algoritma [PageRank Google](https://en.wikipedia.org/wiki/PageRank). PageRank Google adalah komponen penentu produk pencarian dan dibangun di atas struktur halaman web yang mirip grafik. PageRank, pada intinya, adalah algoritme distribusi probabilitas yang memberikan skor pada node dalam grafik, yang mewakili kemungkinan bahwa apa pun yang menavigasi grafik secara acak akan sampai pada node tertentu. Algoritme ini sangat efektif dalam struktur data seperti grafik, seperti internet, karena algoritma ini mengukur dampak setiap node (atau halaman web) berdasarkan kuantitas dan kualitas tepi (tautan) ke node tersebut. Algoritme ini dimodifikasi dari waktu ke waktu untuk lebih memahami topologi web dan mengidentifikasi tautan palsu antar halaman web, sehingga memungkinkan mitigasi berbagai serangan.

Karena struktur grafik internet dan registri terdesentralisasi dari Protokol tea memiliki kesamaan yang luar biasa, PageRank pada awalnya tampaknya merupakan pendekatan analisis yang menjanjikan. Namun, setelah percobaan lebih lanjut, menjadi jelas bahwa strategi anti-spam PageRank kurang efektif bila diterapkan pada sumber terbuka.

Perbedaan utamanya terletak pada metadata perangkat lunak sumber terbuka. Tidak seperti halaman web, sebagian besar metadata paket sumber terbuka, seperti baris kode dan pesan penerapan, dibuat oleh pengguna dan rentan terhadap spoofing. Manajer paket rentan terhadap kampanye spam, dimana pelaku jahat membanjiri registri dengan paket yang berisi tautan phishing atau konten berbahaya lainnya. Registri manajer paket mungkin juga tidak mencerminkan ketergantungan proyek tertentu secara akurat. Masalah ini, yang dikenal sebagai “[manifest confusion](https://www.bleepingcomputer.com/news/security/npm-ecosystem-at-risk-from-manifest-confusion-actions/)” dapat memungkinkan pelaku kejahatan untuk melakukan tindakan jahat kode atau secara artifisial meningkatkan dampak ketergantungan pihak ketiga, seringkali untuk tujuan jahat.

Tugas berat untuk mengidentifikasi dan menangani paket spam ini biasanya berada di tangan perusahaan keamanan atau individu altruistik, yang keduanya tidak menawarkan solusi terukur untuk memerangi serangan spam di sumber terbuka.

Bukti Kontribusi adalah algoritme yang dirancang khusus untuk mengatasi identifikasi dan isolasi paket spam dan memastikan hanya proyek berdampak yang menerima imbalan yang adil. Rincian algoritma Bukti Kontribusi akan menjadi subjek makalah teknis khusus.

### Peserta Jaringan

Dalam kertas putih ini, kami membedakan peserta berdasarkan kontribusinya. Beberapa mungkin menyumbangkan kode atau memverifikasi kode kontribusi. Orang lain mungkin mendukung pengembang dan reputasi mereka.

#### Pemelihara Paket

tea berasumsi bahwa pembuat paket mempertahankan pekerjaan mereka. Dalam kertas putih ini, kami akan menyebut mereka sebagai “pemelihara paket”.

Pengelola paket harus memastikan perangkat lunak mereka terus memberikan peningkatan nilai seiring berkembangnya industri. Mereka adalah pilar komunitas open source yang perlu diberdayakan dan diberi penghargaan atas kontribusi berkelanjutan mereka. Namun, pengelola paket mungkin memutuskan untuk menghentikan upaya pemeliharaannya atau menyadari bahwa mereka tidak dapat beroperasi dengan kecepatan yang sesuai dengan harapan pengguna proyek. Untuk memastikan kesinambungan, mereka harus memiliki kemampuan untuk mengalihkan kendali proyek mereka kepada pengembang atau kelompok pengembang lain, sehingga menunjuk mereka sebagai pengelola dan memberi mereka kepemilikan dan kendali atas imbalan yang ada dan di masa depan terkait dengan proyek tersebut.

Demikian pula, pengembang dapat memutuskan untuk mengambil peran sebagai pengelola paket dengan melakukan fork pada proyek yang ada dan mendaftarkan proyek baru yang akan mereka pertahankan di masa mendatang, sehingga menjadi pengelola paket. Setelah didaftarkan, proyek yang teaRanknya melebihi ambang batas yang ditetapkan tata kelola akan mulai menerima imbalan dari Protokol tea melalui algoritma Bukti Kontribusi protokol, secara paralel dengan proyek warisan yang dicabangkan. Ketika komunitas sumber terbuka beralih dari proyek lama ke proyek yang lebih baru, algoritme Bukti Kontribusi akan secara bertahap mengurangi imbalan yang dialokasikan ke proyek lama sekaligus meningkatkan imbalan yang ditugaskan ke proyek cabang baru.

Penting untuk menyediakan alat yang tepat bagi komunitas pengembang untuk menentukan proyek mana yang sedang dikelola dan reputasi serta kualitas pekerjaan pengelola proyek tersebut di masa lalu dan saat ini. Kita terlalu sering melihat karya sumber terbuka dirusak dan upaya banyak orang dirusak oleh pelaku kejahatan. Meskipun pekerjaan para pelaku kejahatan ini sebagian besar telah ditemukan dan diperbaiki, sering kali hal ini baru menimbulkan kerugian yang signifikan baik berupa kerugian finansial atau data. Ambil contoh [paket npm event-stream](https://medium.com/intrinsic-blog/compromised-npm-package-event-stream-d47d08605502) yang diunduh lebih dari 1,5 juta kali per minggu dan diandalkan oleh lebih dari 1.500 paket ketika seorang peretas berhasil menembus proyek sumber terbuka, mendapatkan kepercayaan dari pembuat aslinya, dan memodifikasi aliran peristiwa agar bergantung pada paket jahat yang akan mengambil kredensial dompet bitcoin ke server pihak ketiga. Meskipun alat-alat tersebut dapat membantu mendeteksi beberapa serangan, namun alat-alat tersebut tidak selalu dapat diandalkan, sehingga membuat seluruh komunitas bergantung pada ketekunan dan kesediaan satu sama lain untuk berbagi temuan mereka.

Kami mengusulkan untuk memperkenalkan insentif melalui token TEA yang dijelaskan di bagian "[Token TEA](white-paper-ID.md#token-tea)", untuk mendorong komunitas sumber terbuka melaporkan temuan mereka secara konstruktif, sehingga pengelola paket dapat mengatasinya sebelum mereka dieksploitasi.

#### Pengguna Paket dan anggota komunitas tea

“Pengguna paket” adalah pengembang perangkat lunak yang berfokus pada pemecahan masalah tertentu. Mereka sering kali mencari alat yang mereka perlukan di komunitas sumber terbuka untuk bereksperimen dengan cepat dan melakukan iterasi dengan sedikit atau tanpa biaya, dan secara langsung mendapatkan manfaat dari pekerjaan pengelola paket.

Dengan lebih dari 10 juta paket yang dapat diakses oleh 30 pengelola paket teratas, tidak adanya atribusi nilai universal pada proyek sumber terbuka dapat mengubah pemilihan paket yang aman dan efisien untuk pengembangan menjadi upaya yang berisiko tinggi dan menakutkan. Tanpa adanya cara yang jelas untuk mengatribusikan dan mengukur nilai, bagaimana pengguna paket secara efisien memilih paket aman untuk pengembangannya?

Kami percaya bahwa algoritma Bukti Kontribusi Protokol tea yang dikombinasikan dengan insentif lain dapat memberikan informasi yang dibutuhkan pengguna paket untuk memilih fondasi proyek mereka sendiri dengan cepat dan bijaksana.

#### Pendukung Proyek

Di Web 2.0 dan web3, sekelompok pengguna paket, yang sering disebut “sponsor”, telah memilih untuk mendukung pengelola paket melalui donasi atau bentuk imbalan lainnya; namun, hal ini jarang terjadi.

“Pendukung proyek” ini adalah organisasi atau pengguna proyek sumber terbuka yang menggunakan perangkat lunak sumber terbuka untuk membangun produk komersial mereka, pegiat filantropis yang ingin mendukung ekosistem, atau pengusaha yang ingin mendanai tim untuk mengembangkan komponen sistem yang lebih besar.

tea mengusulkan untuk memperluas komunitas pendukung proyek sumber terbuka ke seluruh komunitas tea, baik organisasi, pengembang, pengguna, atau penggemar teknologi. Tujuan tea adalah menerapkan mekanisme insentif terdesentralisasi melalui kasus penggunaan unik token TEA bagi setiap anggota komunitas tea untuk berkontribusi terhadap keberlanjutan abadi dan pertumbuhan sumber terbuka yang berkelanjutan. Pendukung proyek bebas memutuskan proyek atau pengelola paket mana yang ingin mereka dukung berdasarkan pekerjaan, keyakinan, atau kriteria dan metrik apa pun yang akan memengaruhi keputusan mereka. Selain itu, pendukung proyek bebas memutuskan bagaimana mereka ingin mendukung proyek tersebut.

Sponsor dapat menjadi sistem yang efektif untuk mendukung pengembangan sumber terbuka; namun, sponsorship ini biasanya tidak mencakup semua dependensi. Keterbatasan ini menguntungkan kelompok favorit dan menghalangi inovasi dan pembangunan perangkat lunak. Untuk menjadi landasan pengembangan perangkat lunak, sumber terbuka harus memberdayakan semua pengembang, baik pemula maupun ahli, di semua lapisan dalam menara.

Untuk meningkatkan keberlanjutan dan integritas rantai pasokan perangkat lunak dan memungkinkan pengembang sumber terbuka menangkap nilai yang mereka ciptakan, tea bertujuan untuk membangun mekanisme di mana dukungan bermanfaat bagi seluruh aspek proyek. Dukungan dari pendukung akan mengalir melalui ketergantungan proyek, dari atas hingga ke dasar pohon. Hal ini secara implisit menempatkan kepercayaan pada kemampuan pengelola paket untuk membuat pilihan berdasarkan informasi tentang tumpukan mereka, sehingga meningkatkan reputasi mereka.

<figure><img src=".gitbook/assets/figure-2.png" alt=""><figcaption><p>Gambar 2 - Distribusi reward di seluruh dependensi</p></figcaption></figure>

#### pencicip tea

Ketika proyek baru atau versi baru dari proyek yang sudah ada diluncurkan, validitas pekerjaan tersebut perlu dibuktikan secara nyata. Informasi ini sangat penting bagi pengguna paket untuk memutuskan apakah mereka dapat mempercayai paket dan pengelolanya. Dalam Protokol tea, fungsi ini disediakan oleh “pencicip tea”.

pencicip tea, biasanya, adalah pengembang perangkat lunak berpengalaman yang bersedia mendedikasikan sebagian waktunya untuk memeriksa klaim yang terkait dengan suatu paket (fungsi, keamanan, [pembuatan versi semantik](https://semver.org/), keakuratan lisensi, dll.) dan mempertaruhkan reputasi dan token TEA mereka untuk menunjukkan hasil penelitian mereka dan mendukung ulasan mereka. Dalam Protokol tea, “staking tea Anda” adalah proses mengunci token TEA untuk mendukung ulasan Anda, yang berpotensi mendapatkan imbalan atau menghadapi penalti berdasarkan konsensus tentang kualitas ulasan Anda. pencicip tea juga memiliki opsi untuk melaporkan bug atau kerentanan kepada manajer paket secara rahasia. Laporan yang valid menghasilkan imbalan dari perbendaharaan proyek, sementara laporan yang tidak valid menyebabkan penyitaan saham pencicip tea. Terakhir, jika pengelola paket mengabaikan masalah yang dilaporkan ini, hal ini akan memicu penalti, atau “pemotongan”, untuk perbendaharaan proyek.

Seperti pendukung proyek, pencicip tea dapat mempengaruhi reputasi proyek dan pengelola paket; namun, dampaknya lebih signifikan mengingat perannya dalam memvalidasi keamanan, fungsionalitas, dan kualitas proyek. pencicip tea juga perlu membangun reputasi untuk mendukung klaim mereka. Kualitas pekerjaan mereka dan token TEA yang mereka pertaruhkan saat mereka mempertaruhkan ulasan mereka dan dikombinasikan dengan sumber data eksternal lainnya akan membangun reputasi masing-masing pencicip tea, sehingga memberikan nilai lebih pada pekerjaan mereka. Lihat bagian "[Reputasi Paket & Pemelihara Paket](white-paper-ID.md#reputasi-paket-&-pemeliharan-paket)" untuk detail selengkapnya tentang mekanisme yang digunakan untuk memengaruhi reputasi proyek dan pengelola paket.

### Pendaftaran Proyek dan Bukti Hadiah Kontribusi

Pendaftaran rilis proyek memerlukan beberapa transaksi untuk terjadi secara atom. Secara khusus:

* Pengelola paket harus mendaftarkan proyek ke registri terdesentralisasi,
* Protokol tea harus membuat instance perbendaharaan proyek yang dimiliki, dikendalikan, dan dikonfigurasi oleh pengelola paket sesuai dengan aturan yang ditentukan oleh pengelola paket, dan
* Protokol tea harus mendaftarkan nama unik perbendaharaan ke Layanan Penamaan Ethereum, atau ENS, sehingga menyederhanakan semua interaksi pengguna dengan perbendaharaan.

Kegagalan salah satu operasi akan mengakibatkan protokol kembali ke keadaan sebelumnya.

Setelah berhasil mendaftarkan proyek dengan teaRank yang melampaui ambang batas yang ditentukan oleh tata kelola, Protokol tea memulai distribusi hadiah Bukti Kontribusi ke kas proyek. Kami menyarankan untuk mendistribusikan hadiah ini mengikuti kurva yang telah ditentukan dari kumpulan token yang telah ditentukan sebelumnya yang dikendalikan oleh Protokol tea dan dialokasikan dari total pasokan token TEA.

Pengelola paket diharuskan untuk meningkatkan reputasi dan kepercayaan proyek mereka dengan secara konsisten mempertaruhkan sebagian dari hadiah Bukti Kontribusi yang diterima oleh bendahara proyek. Untuk setiap token yang dipertaruhkan, peserta jaringan akan menerima “TEA yang dipertaruhkan” atau stTEA yang tidak dapat dialihkan, dengan rasio 1:1, untuk berpartisipasi dalam tata kelola Protokol tea. Sejalan dengan aturan protokol, hadiah yang dipertaruhkan ini, dan stTEA terkaitnya, dapat dikurangi (“slashing”) atau didistribusikan kembali jika pengelola paket gagal mengatasi bug atau kerentanan.

Terakhir, kegagalan untuk mempertahankan rasio perbendaharaan minimum yang ditentukan dalam peraturan tata kelola akan mengakibatkan penangguhan distribusi hadiah Bukti Kontribusi ke proyek. Sebaliknya, imbalan ini akan didistribusikan kembali ke proyek-proyek yang patuh.

### Reputasi Paket & Pemelihara Paket

Sistem reputasi yang hanya mengandalkan kontribusi ekonomi penulis tidak memberikan perlindungan pengguna yang memadai dan dapat terkena serangan Sybil, di mana satu individu membuat banyak representasi dirinya untuk meninggalkan ulasan positif dalam jumlah besar pada karya mereka, sehingga menipu pengguna agar mempercayainya. pekerjaan mereka ditinjau dan disetujui oleh banyak orang.

Beberapa metodologi tersedia untuk mencegah serangan Sybil, beberapa di antaranya dijelaskan oleh Nitish Balachandran dan Sugata Sanyal dalam “[A Review of Techniques to Mitigate Sybil Attacks](https://arxiv.org/abs/1207.2617/)”. Karena tea adalah protokol yang terdesentralisasi, penggunaan sistem sertifikasi kepercayaan yang bergantung pada otoritas penerbitan sertifikat terpusat akan bertentangan dengan intinya. Kami mengusulkan untuk fokus pada pendekatan desentralisasi terhadap mitigasi serangan Sybil dan, lebih khusus lagi, pada metodologi yang mengandalkan sekelompok besar peserta jaringan yang diberi insentif untuk menilai dan secara publik mewakili reputasi setiap paket dan pengelolanya.

Mirip dengan produksi blok pada blockchain bukti kepemilikan, di mana node yang tidak memproduksi dapat memvalidasi pekerjaan orang lain dan, bila perlu, menyoroti pelanggaran aturan jaringan, yang mengarah pada hukuman bagi pelaku kejahatan melalui pemotongan (penghancuran sebagian saham mereka), kami mengusulkan sebuah sistem di mana pihak ketiga, seperti pencicip tea, akan dapat meninjau paket yang dihasilkan oleh pengelola paket dan diberi insentif untuk berperilaku demi kepentingan terbaik perangkat lunak sumber terbuka masyarakat dan penggunanya, serta mengakui perilaku yang baik dan memberikan sanksi terhadap perilaku yang buruk. Sistem ini harus tahan terhadap Sybil dan mencegah pemegang token besar mempengaruhi protokol atau reputasi paket tertentu secara signifikan. Kami yakin pendekatan ini lebih selaras dengan sumber terbuka, menyediakan substrat yang lebih subur untuk mendorong adopsi dan kepercayaan, dan pada akhirnya memfasilitasi pertumbuhan tea.

Selain itu, ketika reputasi setiap anggota komunitas tea mencapai tonggak penting, mereka mungkin diberikan akses ke bagian-bagian penting dari protokol ini.

### Peninjauan Paket oleh Pihak Ketiga

Peninjauan paket oleh pihak ketiga merupakan komponen penting dalam membangun reputasi dan keamanan rantai pasokan perangkat lunak. Namun, ulasan pihak ketiga hadir dengan serangkaian ancaman uniknya termasuk serangan Sybil yang disebutkan di atas.

Teknologi Blockchain, dan lebih jelasnya staking, menawarkan peluang unik bagi tea untuk mengatasi tantangan ini. Meskipun alamat dompet mungkin tersedia dalam jumlah tak terbatas, tidak demikian halnya dengan token TEA, yang total pasokannya diperkirakan mencapai 10 miliar. Selain itu, setiap tindakan yang dilakukan oleh pengembang, seperti mengirimkan, memverifikasi, atau mempertaruhkan paket, akan berkontribusi terhadap reputasi mereka, sehingga menciptakan profil unik yang dapat digunakan setiap pengembang untuk berkontribusi pada komunitas tea dan berpartisipasi dalam tata kelola tea.

Dengan mewajibkan peninjau pihak ketiga untuk mempertaruhkan token TEA dan menanggung risiko kehilangan sebagian saham mereka jika mereka ternyata berperilaku bertentangan dengan kepentingan jaringan atau menjadi aktor jahat, pihak ketiga dapat memberikan kepercayaan tambahan pada sebuah paket dan menerima hadiah, dalam bentuk token TEA.

Kami juga mengusulkan untuk memperluas sistem reputasi kepada pihak ketiga yang melakukan verifikasi independen terhadap kemasan, yaitu para pencicip tea. Penyelesaian tinjauan positif memerlukan dua operasi yang terjadi secara atomik:

* Pengajuan tinjauan kode, ditandatangani oleh pencicip tea dan dapat diakses publik oleh semua anggota komunitas, beserta
* Tindakan mempertaruhkan paket, untuk mendukung ulasan mereka.

Penyelesaian tinjauan negatif yang mencakup satu atau lebih kerentanan kritis akan mengharuskan pencicip tea untuk terlebih dahulu menghubungi pengelola paket menggunakan protokol pengiriman pesan untuk memberi tahu mereka tentang kerentanan tersebut dan memungkinkan mereka mengatasi masalah tersebut secara tepat waktu. Setelah berakhirnya periode yang ditentukan tata kelola yang dialokasikan kepada pengelola paket untuk mengatasi kerentanan mereka atau ketika paket yang diperbaiki telah tersedia, protokol pesan yang sama akan digunakan untuk memberi tahu pengguna dan penguji paket ini (termasuk tanggungan) bahwa kerentanan telah teridentifikasi. , dan mudah-mudahan diatasi, sehingga mereka tahu untuk memperbarui aplikasi atau dependensinya. Untuk mendisinsentifkan waktu pengembang yang terbuang, komunikasi antara pencicip tea dan pengelola paket akan mengharuskan pencicip tea untuk mempertaruhkan token TEA.

Setelah menyelesaikan kedua operasi tersebut, pencicip tea akan menerima NFT sebagai bukti pekerjaan mereka pada paket tertentu dan versi paket. Akumulasi NFT dikombinasikan dengan rasio taruhan dari setiap paket yang ditinjau dan informasi yang diambil dari sistem eksternal akan mempengaruhi reputasi pencicip tea. Ketika reputasi mereka mencapai tonggak penting, pencicip tea dapat memperoleh akses ke bagian-bagian protokol yang lebih tinggi atau imbalan yang dipercepat dari protokol, sebagaimana ditentukan oleh tata kelola tea.

### Paket Kedaluwarsa atau Rusak

misi tea adalah meningkatkan keberlanjutan dan integritas rantai pasokan perangkat lunak dengan memungkinkan pengembang sumber terbuka menangkap nilai yang mereka ciptakan; namun, imbalannya harus sepadan dengan upaya yang dilakukan oleh pengelola paket dan pencicip tea. Paket yang kurang terpelihara, ketinggalan jaman, atau rusak merupakan indikasi jelas bahwa pengelola paket tidak memenuhi harapan masyarakat atau tidak memberikan kepercayaan dan dukungan yang diberikan kepada mereka melalui staking paket. Manifestasi lain dari paket yang ketinggalan jaman mungkin adalah terus menggunakan bahasa lama atau bahasa multi-versi versi lama. Kemasan yang ketinggalan jaman atau rusak terlalu lama menunjukkan bahwa pencicip tea perlu meninjau pekerjaan pengelola kemasan secara teratur dan konsisten.

pencicip tea memainkan peran penting dalam komunitas sumber terbuka, karena ulasan mereka dan klaim terkait dapat memengaruhi pengguna paket, baik mengarahkan mereka menuju atau menjauhi paket tertentu. Untuk memastikan bahwa ulasan dapat dipercaya secara berkelanjutan, kami mengusulkan mekanisme di mana ulasan yang diposting oleh pencicip tea harus dikaitkan dengan token TEA yang dipertaruhkan. Paket yang ketinggalan jaman atau rusak mungkin akan membuat sebagian dari perbendaharaannya terpotong, sementara sebagian lainnya dikirim ke pencicip tea yang pertama kali menyadari kurangnya pemeliharaan paket apa pun.

Ketika paket semakin populer dan digunakan, dengan semakin banyak aplikasi dan sistem yang berpotensi penting bergantung pada paket tersebut, kita harus memberikan insentif kepada pengembang untuk secara diam-diam melaporkan kelemahan kepada pengelola paket dan mendorong pengelola paket untuk mengatasi kelemahan tersebut sebelum dapat dieksploitasi. Oleh karena itu, kami mengusulkan agar tinjauan negatif apa pun yang menguraikan kelemahan seperti kerentanan zero-day atau penggunaan ketergantungan yang sudah ketinggalan zaman dan tetap terbuka melampaui masa tenggang yang ditentukan oleh tata kelola harus dianggap sebagai kegagalan pihak pengelola paket dan dianggap sebagai kegagalan. dikenakan hukuman yang sama dengan pencicip tea pertama yang melaporkan kekurangannya dalam menerima sebagian dari token yang dipotong.

Hal yang sama juga berlaku untuk pendukung paket yang mempertaruhkan reputasi dan token TEA mereka pada pekerjaan pengelola paket yang nakal dan menerima imbalan untuk itu. Karena mereka gagal mengidentifikasi kurangnya pemeliharaan atau memilih untuk terus mendukung paket tersebut, kami mengusulkan agar semua kegiatan pemotongan diterapkan pada pendukung paket tersebut.

Distribusi ke semua pencicip tea dapat didasarkan pada usia peninjauan mereka dan jumlah token TEA yang mereka pertaruhkan untuk peninjauan mereka.

## Token TEA

TEA adalah token kriptografi yang berfungsi sebagai kunci akses ke bagian-bagian tertentu dan fitur-fitur tertentu dari Protokol tea.

Pemegang token TEA memiliki kemampuan untuk:

* Daftarkan paket mereka;
* Mendukung paket dengan mempertaruhkan token TEA ke paket tertentu;
* Berkontribusi pada keamanan rantai pasokan perangkat lunak dengan menantang paket dan melakukan tinjauan untuk melaporkan bug dan/atau kerentanan.

Seperti yang telah dibahas, Protokol tea membuka kunci perekonomian sumber terbuka dan menciptakan nilai bagi pembuat, pengelola, dan pengguna akhir perangkat lunak perusahaan. Pada akhirnya, nilai yang diperoleh dari Protokol tea akan diperoleh kembali ke pemegang token seiring dengan meningkatnya skala komunitas, menciptakan putaran umpan balik yang selanjutnya mendorong partisipasi.

### Menghargai Pengembang Sumber Terbuka

Kami mengharapkan Bukti Kontribusi dan mekanisme staking tea dapat mendorong pertumbuhan sumber terbuka dengan memberdayakan para pesertanya dengan sumber daya yang mereka perlukan untuk mengejar hasrat mereka tanpa terbebani.

Sebagaimana diuraikan dalam "[Pendaftaran Proyek dan Bukti Imbalan Kontribusi] (white-paper-ID-.md#pendaftaran-proyek-dan-bukti-imbalan-kontribus)", proyek yang terdaftar pada Protokol tea dan dengan teaRank yang melampaui tata kelola -ambang batas yang ditentukan akan menerima hadiah Bukti Kontribusi dalam bentuk token TEA dari Protokol tea. Distribusi ini akan bertahan selama paket tersebut mematuhi aturan protokol. Secara khusus, paket tersebut harus mempertahankan teaRank di atas ambang batas yang ditentukan tata kelola dan pengelola paket harus berkontribusi terhadap reputasi dan kepercayaan proyek mereka dengan terus mempertaruhkan sebagian dari imbalan Bukti Kontribusi yang diterima oleh perbendaharaan proyek. Kegagalan untuk mematuhi peraturan ini akan mengakibatkan penangguhan distribusi imbalan Bukti Kontribusi dan redistribusi imbalan di masa depan di antara proyek-proyek yang patuh.

Ketergantungan dapat secara signifikan mempengaruhi keandalan dan keamanan suatu paket, dan tidak adanya registrasi untuk dependensi suatu paket harus dilihat sebagai potensi risiko. Pemelihara paket, sebagai validator dan pengguna dependensi ini, berada dalam posisi utama untuk terhubung dengan pengelola dependensi tersebut. Mereka dapat mendorong mereka untuk mendaftarkan proyek mereka dengan tea, sehingga membuat proyek tersebut diawasi oleh pencicip tea dan memenuhi syarat untuk mendapatkan hadiah terkait. Untuk mendorong keterlibatan komunitas luas yang bertujuan untuk meningkatkan sistem reputasi, kami merekomendasikan agar paket apa pun dengan dependensi yang tidak terdaftar pada Protokol tea melihat sebagian kecil dari hadiah Bukti Kontribusinya dibakar. Pembakaran ini akan sebanding dengan jumlah dan kontribusi, yang diukur dalam teaRank, dari setiap dependensi yang tidak terdaftar, dan terus berlanjut selama dependensi tersebut tetap tidak terdaftar.

Banyak kasus telah menunjukkan bahwa insentif yang kuat dapat menarik pelaku kejahatan untuk mengkompromikan perangkat lunak sumber terbuka. Sebagian besar infrastruktur penting Internet berjalan pada sumber terbuka, dan perlombaan untuk menemukan eksploitasi dan kerentanan lainnya sedang berlangsung. Di bidang tea, kami percaya bahwa pengelola paket bukanlah pihak yang harus disalahkan (walaupun sering kali merekalah yang disalahkan).

Insentif Protokol tea mengatasi masalah ini dengan memastikan distribusi insentif yang adil dan merata. Paket seperti lodash dengan lebih dari 176 ribu tanggungan merupakan pilar pengembangan sumber terbuka, dan pengelolanya berhak mendapatkan imbalan yang proporsional. Namun, sistem imbalan yang dibangun hanya berdasarkan jumlah tanggungan akan mencegah inovator mengganggu monopoli ini kecuali mereka mendapat pendanaan yang cukup dari pihak ketiga atau telah mengumpulkan cukup sumber daya untuk mendanai sendiri. Pendekatan ini kemungkinan besar akan menyebabkan menyusutnya jumlah kontributor, sehingga menghasilkan kebalikan dari apa yang dimaksud dengan tea.

Untuk mengatasi keterbatasan ini dan memberdayakan setiap pemegang token TEA dengan kemampuan untuk mendukung pengelola paket, kami juga merekomendasikan agar sebagian kecil dari semua imbalan staking yang diterima oleh semua peserta jaringan yang ditentukan oleh tata kelola diarahkan ke perbendaharaan paket yang distaking, beserta ketergantungannya. .

### Staking untuk Mengamankan Rantai Pasokan Perangkat Lunak

Staking dapat menjadi metodologi yang efektif untuk mendukung sistem reputasi yang terdesentralisasi. Namun, untuk memfasilitasi keamanan rantai pasokan perangkat lunak, sistem distribusi insentif tea harus hati-hati mempertimbangkan rasio taruhan setiap paket dan menyesuaikan insentif setiap paket.

Untuk mengurangi risiko sejumlah kecil paket digunakan sebagai ketergantungan di banyak aplikasi yang mengumpulkan hadiah staking paling banyak, kami merekomendasikan penerapan rasio staking yang optimal, serupa dengan pendekatan yang dijelaskan dalam [penelitian yang dilakukan oleh web3 Foundation](https://research.web3.foundation/Polkadot/overview/token-economics).

Ketika suatu paket melampaui rasio staking optimal yang ditentukan oleh tata kelola, jumlah total hadiah staking yang dialokasikan ke paket tersebut akan tetap, berapa pun jumlah token TEA yang di-staking ke paket tersebut. Tindakan ini, yang dirancang untuk menghilangkan insentif bagi para pendukung paket dan pencicip tea agar tidak melakukan staking lebih lanjut terhadap paket-paket yang dipertaruhkan tinggi, akan menghasilkan penurunan linier dalam imbalan staking yang diterima oleh masing-masing pendukung paket.

Pendekatan berbasis kurva, seperti yang dijelaskan dalam penelitian web3 Foundation akan memperlambat pengurangan kumpulan hadiah staking yang dialokasikan untuk paket tersebut, sehingga terus menghilangkan paket-paket dengan tingkat staking yang lebih kecil dan menimbulkan eksternalitas negatif dengan memberikan pengaruh yang lebih besar pada paket yang lebih besar. pemegang token atas distribusi kumpulan hadiah staking.

Desain linier yang direkomendasikan harus memungkinkan paket dengan taruhan lebih kecil menjadi lebih menarik baik bagi pendukung paket maupun pencicip tea. Hal ini juga dapat memberikan insentif kepada pengembang berpengalaman untuk membangun alternatif terhadap paket yang berisiko tinggi, sehingga menciptakan peluang bagi komunitas tea untuk menyeimbangkan dukungan perangkat lunak yang ada dan mendorong inovasi. Dalam desain awalnya, rasio staking akan dihitung menggunakan pasokan yang beredar. Komunitas tea dapat mengubah desain ini untuk lebih meningkatkan skalabilitas sistem.

Sama seperti aktor yang baik yang perlu diberi penghargaan; pelaku kejahatan perlu diidentifikasi dan diberi sanksi. Perangkat lunak sumber terbuka memberikan banyak peluang bagi pelaku kejahatan untuk menciptakan masalah dan risiko reputasi bagi seluruh komunitas pengembang. Mulai dari penyelewengan pekerjaan hingga perubahan dan redistribusi paket perangkat lunak, atau penyuntikan kode jahat, perang antara pelaku baik dan pelaku kejahatan terus berlanjut, sering kali pelaku kejahatan mempunyai dana besar yang melihat kontaminasi paket sumber terbuka sebagai sebuah peluang. untuk mendapatkan keuntungan finansial. Sisi negatifnya relatif kecil, dengan paket-paket yang berpotensi dilarang di rak digital atau memiliki reputasi yang buruk.

Untuk mengatasi pelaku kejahatan secara langsung dan meningkatkan dampak atas tindakan yang bertentangan dengan sumber terbuka, kami merekomendasikan penerapan mekanisme pemotongan yang dirinci dalam “[Peninjauan Paket oleh Pihak Ketiga](white-paper-ID.md#peninjauan-paket-oleh-pihak-ketiga)” dan “[Paket Kedaluwarsa atau Rusak](white-paper-ID.md#paket-kedaluarsa-atau-rusak)”.

Saat pencicip tea mengevaluasi dan menganalisis kode dalam paket yang baru dikirimkan, kami menyarankan pencicip tea menerima alat dan insentif untuk menunjukkan dan menyorot kode jahat sehingga

* pengguna paket dapat disadarkan akan risikonya, dan
* Pemelihara paket dan pendukung paket dikenakan sanksi karena mengirimkan atau mendukung kode jahat.

Sejauh itu, untuk semua tinjauan negatif yang terbukti dilakukan sesuai aturan jaringan dan telah ditangani oleh pengelola paket dalam periode tata kelola yang ditentukan, pengelola paket tidak boleh dikenakan penalti apa pun yang bertentangan dengan pendukung paket atau pencicip tea yang memberikan ulasan positif. review paket yang dimaksud.

Untuk tinjauan negatif yang dilakukan sesuai aturan jaringan dan yang belum ditangani oleh pengelola paket dalam periode yang ditentukan tata kelola, sebagian kecil dari token TEA yang dipertaruhkan oleh perbendaharaan proyek, pendukung paket, dan pencicip tea sebelumnya akan dipotong dan dikirim ke pencicip tea yang mengidentifikasi bug atau kerentanan. Fraksi lainnya akan dimasukkan ke dalam kumpulan asuransi yang dikendalikan oleh tata kelola tea. Tata kelola tea akan menetapkan kebijakan dan peraturan melalui kerja sama yang erat dengan masyarakat untuk mendistribusikan konten kumpulan tea kepada mereka yang terkena dampak kerentanan. Protokol akan mendistribusikan sepertiga dari token TEA yang dipotong ke semua pencicip tea yang berkontribusi terhadap ulasan negatif.

Staking dan pemotongan merupakan komponen penting dari sistem insentif dan penalti Protokol tea. Pengelola paket diharuskan mempertaruhkan sebagian dari perbendaharaan proyek mereka, memastikan mereka memiliki risiko yang besar jika mereka lalai mengatasi bug atau kerentanan. Pengguna paket, pendukung, dan pencicip tea juga dapat mempertaruhkan token TEA untuk berkontribusi pada reputasi paket atau pengelola paket dan berpartisipasi aktif dalam protokol untuk menegakkan keberlanjutan dan integritas rantai pasokan perangkat lunak.

Tata kelola sangat erat hubungannya dengan keterlibatan aktif ini. Untuk setiap token TEA yang dipertaruhkan, peserta menerima "TEA yang dipertaruhkan" (stTEA) yang tidak dapat dialihkan dengan rasio 1:1, sehingga memungkinkan mereka untuk berpartisipasi dalam tata kelola Protokol tea. Hadiah yang dipertaruhkan dan token stTEA yang terkait mungkin akan dikurangi (dipotong) atau didistribusikan kembali jika aturan protokol tidak dipatuhi, sehingga memperkuat akuntabilitas dalam ekosistem.

### Distribusi Pasokan Token TEA

Mayoritas token TEA yang dibuat oleh protokol digunakan sebagai insentif untuk mendorong pengelola paket, pengguna, dan pendukung untuk melakukan aktivitas yang memberikan nilai pada jaringan terdesentralisasi. Distribusi token TEA ke berbagai pemangku kepentingan dalam protokol ditentukan oleh “jadwal distribusi.”

Insentif jaringan akan didistribusikan langsung melalui Protokol tea, dalam bentuk token TEA, kepada empat kelompok pemangku kepentingan:

* Pemelihara Paket;
* Pengguna Paket (yang mencakup seluruh anggota komunitas tea);
* Pendukung Proyek; Dan,
* pencicip tea.

Token TEA juga akan digunakan untuk mendukung paket dan mengamankan rantai pasokan perangkat lunak melalui staking, termasuk hak untuk menantang paket dengan melakukan peninjauan dan melaporkan bug atau kerentanan, memberi penghargaan kepada pengembang sumber terbuka dari proyek terdaftar, dan berpartisipasi dalam tata kelola. Protokol tea.

Direkomendasikan agar pasokan token maksimum 10 miliar didistribusikan ke seluruh anggota komunitas tea seperti yang dijelaskan di bawah ini:

<figure><img src=".gitbook/assets/Token Allocation-Updated.svg" alt=""><figcaption><p>Gambar 3 - Distribusi token dengan pasokan maksimum</p></figcaption></figure >

Sekitar 51,4% dari pasokan token maksimum harus dialokasikan ke “Ekosistem & Tata Kelola”, yang mencakup insentif untuk proyek sumber terbuka untuk memasukkan dan mempertahankan basis kode mereka serta penghargaan karena berkontribusi terhadap pemungutan suara dan konsensus yang terdesentralisasi melalui DAO tea. Token yang dialokasikan ke “Ekosistem & Tata Kelola” harus didistribusikan sebagai hadiah Bukti Kontribusi, hadiah staking, dan jenis insentif lain yang berpusat pada pengembang.

Sekitar 18,6% dari pasokan token maksimum harus dialokasikan untuk “Pengembangan Protokol” untuk memastikan keberlanjutan dan evolusi berkelanjutan dari Protokol tea. Sekitar 12,7% harus dialokasikan untuk “Pendukung & Penasihat Awal”. Sekitar 11,0% harus dialokasikan untuk penjualan Pribadi, 3,0% untuk penjualan publik, sedangkan 3,2% sisanya harus dialokasikan untuk mendukung likuiditas pasar setelah peristiwa pembuatan token terjadi.

Tokenomics yang terperinci, termasuk jadwal Distribusi dan Emisi Token yang komprehensif akan menjadi subjek makalah khusus.

## Tata Kelola

Tata kelola sangat penting untuk pengembangan, keberlanjutan, dan penerapan sistem terdistribusi apa pun.

Kami mengusulkan agar Protokol tea menggabungkan mekanisme tata kelola yang memungkinkan kontributor aktif yang telah mempertaruhkan token TEA untuk mengusulkan dan memberikan suara pada perubahan parameter penting non-finansial. Proses pemungutan suara akan ditentukan oleh kepemilikan token stTEA dan reputasi individu.

Parameter protokol dapat mencakup prioritas untuk mendukung pengelola paket tertentu atau memperkenalkan fitur atau fungsi protokol baru, serta dampak faktor eksternal terhadap reputasi pengguna dan paket. Fungsi ini akan memastikan bahwa parameter penting dapat berkembang dan dioptimalkan seiring waktu oleh anggota aktif komunitas tea. Kami mengantisipasi tata kelola akan dimulai dengan struktur yang sederhana dan semakin berkembang seiring dengan semakin matangnya sistem tea, sehingga memfasilitasi penerapan dan memastikan desentralisasi yang progresif.

Beberapa parameter sistem mungkin tidak tunduk pada tata kelola atau mendukung perubahan frekuensi tinggi untuk mengurangi permukaan serangan yang diwakili oleh tata kelola. Transisi parameter yang progresif menuju tata kelola yang terbuka dan terdesentralisasi akan menjamin stabilitas dan prediktabilitas sistem.

## Ekstensibilitas Pihak Ketiga

Saat kami membangun alat awal untuk memicu dukungan yang telah lama tertunda dari komunitas sumber terbuka, kami yakin bahwa bagian dari misi kami adalah memastikan bahwa pihak ketiga dapat memperluas keseluruhan alat tersebut. Selain menyediakan infrastruktur bagi pengembang untuk membangun perluasan protokol, termasuk cara-cara baru untuk berinovasi dan lebih lanjut mendukung pengembang sumber terbuka, rencana kami mencakup potensi bagi pengelola paket lain untuk berkontribusi pada protokol.

Impian dan upaya para pengembang sumber terbuka telah membangun inovasi yang mendukung kehidupan kita sehari-hari. Kami berharap dapat menemukan kegunaan dan perluasan baru dari Protokol tea yang diusulkan oleh komunitas tea.

## Pekerjaan Masa Depan dan Potensi Upaya Masyarakat

Seiring dengan semakin matangnya sistem tea, kami memperkirakan masyarakat akan mengambil keputusan dan berkontribusi terhadap perubahan dan perluasan sistem tea melalui tata kelola. Berikut adalah beberapa ide yang kami yakini dapat menginspirasi beberapa orang, namun kami tidak menjamin kinerja apa pun di masa depan.

### Pedagang Wholesale tea 

Komunitas perangkat lunak sumber terbuka sangat aktif dan terus berupaya berinovasi dan memberikan nilai. Dedikasi dan altruisme ini mengarah pada pembangunan perangkat lunak dan paket baru secara terus-menerus, yang masing-masing menarik ketergantungan. Oleh karena itu, kami mengantisipasi peta ketergantungan akan terus berkembang, yang menyebabkan seringnya terjadi perubahan pada rasio mempertaruhkan dan hadiah. Di masa depan, komunitas tea dapat mengusulkan pengembangan sistem yang dirancang untuk memantau secara dinamis rasio staking untuk setiap proyek dan menyeimbangkan kembali cara pendukung proyek mempertaruhkan token TEA mereka berdasarkan kriteria mereka sendiri.

### Royalti atas Transfer Paket

Kami menyadari bahwa pengelola paket dapat memutuskan untuk mentransfer aliran hadiah mereka ke satu atau lebih pengembang. Tata kelola transfer tersebut harus tetap menjadi keputusan pengelola paket dan mitranya, tanpa campur tangan pihak tea. Alat perlu disediakan agar transfer tersebut menjadi total atau sebagian (mungkin melalui hanya sebagian dari hadiah yang dialihkan ke satu atau lebih pengembang, sementara hadiah yang tersisa terus mengalir ke pengelola paket asli) dan untuk hadiah staking ke mengalir melalui satu akun yang dikontrol oleh satu peserta jaringan, beberapa peserta jaringan, atau secara otomatis didistribusikan ke beberapa akun menggunakan rasio statis atau dinamis.

### Distribusi Hadiah ke Beberapa Pengelola

Pemeliharaan suatu paket dapat mengandalkan pekerjaan satu tim pengembang lagi. Sebelum imbalan mulai mengalir, tim harus mempertimbangkan untuk mengotomatiskan distribusi nilai di antara mereka sendiri. Bagaimana pendistribusian terjadi harus diputuskan oleh pengelola sendiri, karena merekalah yang mempunyai posisi terbaik untuk mengevaluasi siapa yang berkontribusi dan bagaimana mereka harus diberi imbalan.

Untuk mencapai hal tersebut, setiap tim (atau tim) dapat membentuk organisasi otonom terdesentralisasi mereka sendiri ([DAO](https://ethereum.org/en/dao/)) dan mengotomatiskan distribusi atau menerapkan sistem yang lebih kompleks untuk menentukan distribusi nilai yang memadai berdasarkan faktor eksternal seperti pemungutan suara dari seluruh anggota DAO, atau distribusi berbasis waktu berdasarkan kontribusi berkelanjutan, keberhasilan penyelesaian bounty, dll.

### Menangani Paket “Garpu”

Kami percaya bahwa fork sangat penting dan kurang dimanfaatkan. Fork dapat menjadi alat yang efektif untuk mengembangkan paket yang bersaing dalam hal fungsionalitas, kinerja, keamanan, dan bahkan perhatian. Meskipun bermanfaat, fork harus mengakui upaya awal. Melalui upaya di masa depan atau kontribusi potensial, komunitas tea dapat meningkatkan sistem yang mengharuskan fork diumumkan, bahkan mungkin terdeteksi ketika sebuah proyek didaftarkan. Garpu yang tidak diumumkan yang diungkapkan oleh pencicip tea dapat mengakibatkan sebagian dari perbendaharaan garpu tersebut dipotong, dipindahkan ke pengelola paket asli, atau dikirim ke pencicip tea yang mengungkapkan garpu tersebut.

### Runtime vs. Ketergantungan Build

tea mungkin tidak membedakan dependensi build dari dependensi runtime saat mendistribusikan hadiah Bukti Kontribusi saat peluncuran. Namun, jika komunitas tea sangat ingin membuat perbedaan tersebut, komunitas tea dapat mengusulkan peningkatan pada algoritma distribusi imbalan untuk memperhitungkan pentingnya setiap ketergantungan dan kontribusinya terhadap nilai individual dari paket yang bergantung padanya. Proposal ini akan dipilih dan dilaksanakan berdasarkan keputusan masyarakat.

### Hadiah berdasarkan penggunaan

Karena semakin banyak aplikasi yang dibangun menggunakan proyek yang didaftarkan pada tea, komunitas dapat meningkatkan algoritme penghargaan sehingga alokasi dapat dipengaruhi oleh kumpulan data eksternal yang telah dibuktikan seperti penggunaan. Pembaruan pada mekanisme hadiah ini memungkinkan alokasi hadiah token TEA yang lebih tinggi untuk mengalir ke paket dengan penggunaan tertinggi sambil tetap menghormati batasan rasio staking yang dijelaskan di bagian token TEA. Pengelola paket dapat menggunakan pendekatan serupa untuk mendistribusikan hadiah di seluruh dependensinya berdasarkan logika transparan pilihan mereka. Perlu diperhatikan bahwa semua informasi yang digunakan untuk mempengaruhi distribusi imbalan di seluruh paket dan ketergantungan dalam sistem tea harus dapat diandalkan.

## Ucapan Terima Kasih

Buku putih ini tidak akan ada tanpa dukungan dan dedikasi dari banyak pecinta tea. Para penulis ingin mengucapkan terima kasih kepada Jacob Heider, Jadid Khan, Josh Kruger, dan Shane Molidor atas kontribusi mereka terhadap tokennomics, Sanchit Ram atas kontribusinya pada algoritma teaRank, dan banyak individu yang menyumbangkan waktunya untuk memberikan umpan balik mengenai konten. dokumen ini.

## Daftar Istilah


| Ketentuan        | Definisi                                                                                                                                                   |
| -------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Daun           | Denominasi terkecil dari token TEA. Satu daun setara dengan seperlima triliun (10^−18) tea.                                                                |
| Menebas        | Tindakan memberikan sanksi kepada pemangku kepentingan sebagai respons terhadap perilaku yang bertentangan dengan aturan protokol.                         |
| Mempertaruhkan | Tindakan mengunci token TEA untuk mendukung klaim Anda dan menerima hadiah (atau penalti) berdasarkan konsensus mengenai validitas klaim Anda.             |
| tea            | Token “stake TEA” atau “stTEA” yang tidak dapat ditransfer diterima oleh peserta jaringan untuk setiap token yang dipertaruhkan dengan rasio 1:1. stTEA... |
| peringkat tea  | Skor dampak dinamis ditetapkan untuk setiap proyek berdasarkan algoritma “Bukti Kontribusi” protokol.                                                      |
## Referensi
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
