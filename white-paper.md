---
description: Version 2.1.0
---

# white-paper

## A Decentralized Protocol for Open-Source Developers to Capture the Value They Create

* Max Howell
* Thomas Borrel
* Timothy Lewis
* Troy Wong

## Abstract

Sebuah sistem di mana pengembang open-source dapat menerima imbalan yang sepadan dengan kontribusi mereka akan meningkatkan keberlanjutan dan integritas rantai pasokan perangkat lunak. Protokol terdesentralisasi yang dijamin oleh reputasi dan insentif dapat mencapai hal ini dengan memfasilitasi nilai akrual kembali ke pengembang yang memelihara basis kode sumber terbuka sebagai utilitas publik, sehingga mendorong inovasi dan pertumbuhan di masa depan dalam ekosistem sumber terbuka. Pengelola paket akan mendaftarkan proyek mereka dengan registri yang didukung oleh blockchain yang toleran terhadap kesalahan Bizantium. Algoritma "Proof of Contribution" yang unik dari Protokol teh akan menentukan kontribusi dan dampak setiap proyek terhadap utilitas dan kesehatan sistem. Proyek-proyek yang terdaftar akan menerima imbalan dari Protokol teh yang sepadan dengan kontribusinya, dijamin melalui staking, mendapat manfaat dari sistem reputasi yang mencakup proyek dan kontributor, dan memiliki opsi untuk mengizinkan komunitas untuk mengatur wilayah ekosistem sumber terbuka mereka, terlepas dari agenda eksternal. Protokol teh akan memberikan insentif untuk pemeliharaan open-source dengan mengizinkan peserta jaringan yang mendaftarkan proyek mereka dan mematuhi aturan jaringan untuk menerima hadiah dan berkontribusi pada reputasi mereka dan proyek mereka. Jika ditemukan masalah keamanan atau pengembangan, pengembang dapat membuat klaim yang didukung oleh bukti terhadap paket, dan pemotongan dapat terjadi. Anggota komunitas sumber terbuka dapat meninjau paket untuk masalah kualitas, dan protokol dapat menanggapi tinjauan ini dengan memberlakukan peristiwa pemotongan secara proporsional.

## Pernyataan

Informasi yang tercantum dalam buku putih ini bersifat pendahuluan. Oleh karena itu, baik penulis maupun afiliasinya tidak bertanggung jawab atas informasi yang tercantum dalam buku putih ini bersifat final atau benar dan masing-masing pihak di atas menyangkal, sejauh yang diizinkan oleh hukum yang berlaku, setiap dan semua tanggung jawab yang timbul dalam gugatan, kontrak, atau lainnya sehubungan dengan buku putih ini. Baik buku putih ini maupun segala sesuatu yang terkandung di dalamnya tidak dapat dijadikan dasar atau diandalkan sehubungan dengan atau bertindak sebagai bujukan untuk menandatangani kontrak atau komitmen apa pun.

Tidak ada dalam buku putih ini yang merupakan penawaran untuk menjual atau permintaan untuk membeli token apa pun yang dibahas di sini. Dalam hal apa pun, seandainya buku putih ini dianggap sebagai penawaran atau ajakan, tidak ada penawaran atau ajakan yang dimaksudkan atau disampaikan oleh buku putih ini di yurisdiksi mana pun di mana hal itu melanggar hukum, di mana penawaran atau ajakan semacam itu memerlukan lisensi atau pendaftaran, atau di mana penawaran atau ajakan semacam itu tunduk pada pembatasan. Secara khusus, token apa pun yang dibahas di sini belum, dan, pada tanggal penerbitan buku putih ini, tidak dimaksudkan untuk didaftarkan di bawah sekuritas atau undang-undang serupa di yurisdiksi mana pun, apakah yurisdiksi tersebut menganggap token tersebut sebagai sekuritas atau instrumen serupa atau tidak, dan tidak boleh ditawarkan atau dijual di yurisdiksi mana pun di mana hal itu merupakan pelanggaran terhadap hukum yang relevan dari yurisdiksi tersebut. Jangan membeli token apa pun kecuali Anda siap kehilangan seluruh harga pembelian. Ini adalah pembelian berisiko tinggi dan Anda tidak mungkin terlindungi jika terjadi kesalahan.

## Lisensi

Makalah ini tersedia di laman [Creative Commons Attribution-ShareAlike 4.0 International license](https://creativecommons.org/licenses/by-sa/4.0/).

## Pengenalan

Internet modern sebagian besar terdiri dari proyek-proyek sumber terbuka dan telah demikian sejak awal. Proyek-proyek sumber terbuka dikembangkan dan dipelihara melalui kolaborasi di antara komunitas pengembang global, dan basis kodenya tersedia bagi siapa saja untuk digunakan sebagai barang publik. Dalam 80 tahun terakhir (it is [generally believed](https://archive.org/details/historyofmodernc00ceru) bahwa contoh pertama perangkat lunak sumber terbuka dan gratis dirilis pada tahun 1953), perangkat lunak sumber terbuka telah berevolusi dari produk penggemar teknologi khusus menjadi infrastruktur yang menjadi dasar dari semua inovasi. Terlepas dari pentingnya perangkat lunak sumber terbuka, para pengembang yang membuat dan memelihara basis kode sebagai utilitas publik tidak menerima imbalan yang sepadan atas kontribusi mereka yang luar biasa sebagai inovator dan pemelihara.

Perangkat lunak perusahaan, yang telah berkembang menjadi industri bernilai miliaran dolar, dibangun di atas fondasi yang diletakkan oleh sumber terbuka. Namun, hampir tidak ada nilai yang kembali ke individu yang tanpa pamrih mempertahankan fondasinya. Dan meskipun banyak sekali keuntungan yang dihasilkan darinya, perangkat lunak sumber terbuka sebagian besar dibuat dan dipelihara sebagai utilitas publik tanpa sarana yang layak bagi pengembang untuk menangkap nilai yang mereka ciptakan.

Kami percaya bahwa potensi internet modern telah terhambat dengan mengandalkan sebagian kecil insinyur di dunia untuk memelihara perangkat lunak sumber terbuka yang murni karena altruisme. Open-source adalah sebuah karya cinta yang sering kali terhalang oleh kurangnya insentif yang berarti bagi para pengelola inti. Pengembang sumber terbuka harus memilih antara pekerjaan harian yang memberikan upah yang layak atau mempertahankan fondasi perangkat lunak perusahaan. Kurangnya insentif mengakibatkan proyek-proyek yang benar-benar berharga tidak pernah mencapai potensi mereka sementara yang lain menderita masalah keamanan karena kurangnya pemeliharaan sepanjang siklus hidup perangkat lunak. Untuk membuka potensi penuh dari open-source, kita memerlukan metode universal untuk menilai "nilai wajar" proyek open-source, yang memungkinkan pengembang open-source untuk menangkap nilai yang mereka ciptakan dengan memfasilitasi aliran modal ke komunitas open-source, semua tanpa mengubah prinsip-prinsip inti tentang bagaimana open-source dikembangkan dan digunakan.

Perusahaan sering kali membungkus model bisnis di sekitar sumber terbuka, menghasilkan pendapatan secara langsung dari hasil kerja para pengembang yang baik hati, dan juga mengandalkan mereka untuk memperbaiki bug saat terjadi masalah. Basis kode sumber terbuka menawarkan fungsionalitas inti plug-and-play untuk perusahaan; namun, kerentanan perangkat lunak dapat menimbulkan risiko besar untuk aplikasi yang dibangun di atas sumber terbuka. Contoh yang bagus adalah insiden baru-baru ini yang melibatkan kerentanan keamanan kritis di Log4j, sebuah paket dari [Apache Software Foundation](https://www.apache.org/) yang ditemukan di banyak perangkat lunak dan layanan komersial yang digunakan oleh perusahaan dan pemerintah. Pada bulan November 2021, seorang peneliti keamanan yang bekerja untuk [Alibaba Group Holding Ltd.](https://www.alibabagroup.com/) kerentanan yang dilaporkan [CVE-2021-44228](https://nvd.nist.gov/vuln/detail/CVE-2021-44228), yang menerima skor dasar tertinggi dari Apache Software Foundation. Amit Yoran, Kepala Eksekutif [Tenable](https://www.tenable.com/) dan direktur pendiri Tim Kesiapan Darurat Komputer Amerika Serikat (US-CERT), menggambarkan kerentanan ini sebagai “[the single biggest, most critical vulnerability of the last decade](https://www.reuters.com/article/usa-cyber-vulnerability-idCNL1N2SY2PA)”. Kepanikan pun terjadi dan beberapa sukarelawan yang mengelola paket ini mendapat kecaman dari publik atas kegagalan tersebut. Setelah menangani kemarahan dengan permohonan yang rendah hati untuk keadilan, sistem ditambal. Perusahaan dan pemerintah akhirnya menyadari bahwa Log4j, sebuah paket yang digunakan oleh berbagai sistem penting selama dua dekade, dikelola oleh beberapa sukarelawan yang tidak dibayar, pahlawan tanpa tanda jasa yang sama yang muncul ke dalam tindakan meskipun [abuse from the industry](https://twitter.com/yazicivo/status/1469349956880408583) and bekerja tanpa kenal lelah untuk mengatasi kerentanan tersebut.

Sayangnya, Log4j bukanlah satu-satunya contoh. core-js diunduh 30 juta kali per minggu sebagai basis setiap aplikasi Node.js, namun core-js juga hampir tidak didanai, sehingga berpotensi memaksa pengelola utamanya untuk [walk away from the project or even change the license to closed source](https://www.thestack.technology/core-js-maintainer-denis-pusharev-license-broke-angry/). Baru-baru ini beberapa pengembang inti bitcoin mengundurkan diri, dengan alasan, di antara alasan lainnya, kurangnya kompensasi finansial atas keputusan mereka.

<figure><img src=".gitbook/assets/xkcd-dependency (1).png" alt=""><figcaption><p>Figure 1 - Dependency - Source: <a href="https://xkcd.com/2347/">https://xkcd.com/2347/</a></p></figcaption></figure>

Ada beberapa upaya untuk menyediakan struktur insentif, biasanya melibatkan sistem sponsorship dan bounty. Sponsor memungkinkan konsumen open-source untuk menyumbang ke proyek yang mereka sukai. Namun, bayangkan open-source sebagai menara batu bata di mana lapisan bawahnya sudah lama terlupakan, tetapi masih dipelihara oleh para insinyur yang berdedikasi dan diandalkan oleh lebih banyak lagi pengembang. Hanya proyek yang berada di puncak menara yang biasanya dikenal dan menerima sponsor. Pemilihan yang bias ini menyebabkan batu bata penting yang menopang menara tidak mendapatkan donasi, sementara proyek favorit menerima lebih banyak dari yang mereka butuhkan. Bounty memungkinkan konsumen proyek untuk mengajukan pembayaran kepada pengembang untuk membangun fitur tertentu, sehingga hanya memberi penghargaan kepada proyek yang melakukan hal-hal yang mungkin tidak sesuai dengan kepentingan mereka. Dan sekali lagi, hanya memberi hadiah kepada favorit.

Di tea, kami telah melihat terlalu banyak proyek sumber terbuka yang mengalami kegagalan dalam mendukung komunitas sumber terbuka dan telah membuat misi kami untuk meningkatkan keberlanjutan dan integritas rantai pasokan perangkat lunak dengan mengizinkan pengembang sumber terbuka untuk menangkap nilai yang mereka ciptakan.

Dalam makalah ini, kami mengusulkan te - sebuah sistem terdesentralisasi untuk

1. menghitung dan menugaskan “[Proof of Contribution](white-paper.md#proof-of-contribution)” untuk setiap proyek sumber terbuka relatif terhadap seluruh ekosistem,
2. memastikan proyek perangkat lunak sumber terbuka dipelihara dengan baik,
3. memberdayakan pengembang sumber terbuka dengan imbalan yang adil yang sebanding dengan kontribusi mereka di seluruh ekosistem, yang dicapai melalui penerapan algoritme insentif teh di setiap entri dalam registri tea, dan
4. memberi insentif kepada peserta jaringan untuk mengikuti praktik pengungkapan yang bertanggung jawab atas kerentanan dan bug.

## Komponen

Seorang pengembang perangkat lunak yang membangun sebuah aplikasi membutuhkan empat hal: peramban, terminal, editor, dan manajer paket. Dari keempat hal tersebut, manajer paket adalah yang mengontrol peralatan dan kerangka kerja yang dibutuhkan pengembang untuk membangun produk mereka. Lapisan ini adalah tempat kami melihat potensi untuk mengubah bagaimana open-source diamankan dan dihargai.

### Pengelola Paket

Pengelola Paket mengetahui perangkat lunak sumber terbuka apa yang menjadi sandaran sebuah paket atau aplikasi agar dapat berfungsi, mulai dari puncak menara hingga ke dasarnya. Setiap proyek, bersama dengan setiap versi paket, mendokumentasikan semua komponen penting dan versi yang sesuai dengan cermat.

Ia tahu bahwa bagian atas menara dengan hati-hati memilih dependensinya, dan pemilihan yang cermat itu terus berlanjut ke bawah. Manajer paket ditempatkan secara unik di dalam tumpukan alat pengembang untuk memungkinkan distribusi nilai secara otomatis dan tepat berdasarkan kontribusi dunia nyata yang sebenarnya.

Kami mengusulkan sebuah registri terdesentralisasi yang tidak dapat diubah yang dirancang untuk mendistribusikan nilai berdasarkan "Proof of Contribution" yang unik dari Protokol Tea, sebuah algoritma yang menentukan kontribusi dan dampak dari setiap proyek terhadap utilitas dan kesehatan sistem. Nilai dapat masuk ke dalam grafik pada titik-titik puncak - seperti pustaka-pustaka penting - dan didistribusikan ke ketergantungan paket-paket dan ketergantungannya secara rekursif karena registri mengetahui seluruh grafik sumber terbuka.

Selain itu, kami percaya bahwa informasi yang disediakan oleh Bukti Kontribusi protokol harus tersedia bagi pengembang untuk menilai apakah mereka dapat mempercayai sebuah proyek dan pembuatnya. Informasi ini dapat didasarkan pada reputasi, pujian dari komunitas, data yang diambil dari identitas terdesentralisasi ("[DID](https://www.w3.org/TR/did-core/)") sistem, manajer paket lain, atau mekanisme insentif yang berpotensi bergantung pada peserta jaringan yang mempertaruhkan nilainya.

Kami memperkirakan bahwa kombinasi alat, informasi, dan penghargaan yang diberikan oleh Tea akan memberikan insentif yang adil bagi para pengembang, membantu mengamankan rantai pasokan perangkat lunak, menstimulasi pertumbuhan perangkat lunak sumber terbuka, dan mendorong inovasi.

### Pendaftaran Terdesentralisasi

Setiap manajer paket memiliki registri paketnya sendiri yang menduplikasi metadata yang sama secara berulang-ulang. Dalam beberapa kasus, registri ini dapat mencakup [information that differs from the project’s manifest](https://www.bleepingcomputer.com/news/security/npm-ecosystem-at-risk-from-manifest-confusion-attacks/), sehingga memungkinkan pelaku kejahatan untuk menyuntikkan kode jahat tanpa sepengetahuan pengguna. Sudah saatnya ada satu registri tunggal, komprehensif, dan definitif yang dirancang dan diatur oleh komunitas yang bergantung padanya. Registri yang terdesentralisasi dan tidak dapat diubah ini dapat memberikan keamanan, stabilitas, dan mencegah niat jahat.

Internet berjalan dengan puluhan ribu komponen sumber terbuka yang vital. Sungguh luar biasa bahwa sejauh ini, insiden yang disebabkan oleh penghapusan infrastruktur sumber terbuka yang penting sangat minim. Yang paling terkenal adalah insiden [removal of an NPM left-pad dependency](https://www.theregister.com/2016/03/23/npm\_left\_pad\_chaos/) pada tahun 2016, yang mengalir ke dalam sistem integrasi berkelanjutan dan penyebaran berkelanjutan, membuat para pengembang kebingungan selama berhari-hari. Peristiwa ini menunjukkan bahwa Internet itu sendiri didasarkan pada sistem pengembangan yang rapuh. Contoh lain melibatkan partisipasi aktif atau disengaja dari pengelola paket yang menyabotase paket populer mereka (Lihat [colors.js and faker.js](https://fossa.com/blog/npm-packages-colors-faker-corrupted/), dan juga [node-ipc](https://www.lunasec.io/docs/blog/node-ipc-protestware/)), atau pelaku kejahatan yang mencari keuntungan dengan berpura-pura membantu memelihara paket dan merusaknya untuk mencuri, misalnya, kunci pribadi Bitcoin (Lihat [event-stream](https://github.com/dominictarr/event-stream/issues/116)), atau paket berbahaya dengan kesalahan ejaan yang disengaja, juga dikenal sebagai “[typosquatting](https://en.wikipedia.org/wiki/Typosquatting)”, dengan harapan mengelabui pengguna untuk menginstalnya, misalnya [crossenv vs. cross-env NPM packages](https://blog.npmjs.org/post/163723642530/crossenv-malware-on-the-npm-registry.html).

Integritas perangkat lunak perlu dijamin seiring dengan perkembangan industri menuju masa depan di mana aset digital merupakan bagian dari perangkat lunak. Kita tidak bisa terus membiarkan diri kita rentan terhadap aktor jahat yang memodifikasi perangkat lunak.

Sebagian besar alat yang kami sebut manajer paket tidak dapat menjamin bahwa paket-paket yang dibangun di dalam aplikasi dan dApps adalah kode sumber terbuka yang tidak diubah yang diterbitkan oleh penulis aslinya. [Microsoft’s GitHub has found that 17% of vulnerabilities in software were planted for malicious purposes](https://www.zdnet.com/article/open-source-software-how-many-bugs-are-hidden-there-on-purpose/), dengan beberapa yang tetap tidak terdeteksi untuk waktu yang lama (Lihat [Webmin 1.890](https://threatpost.com/backdoor-found-in-utility-for-linux/147581/)).

Registri terdesentralisasi global yang dilengkapi dengan sistem reputasi dan didukung oleh insentif yang dirancang untuk mengekspos pelaku kejahatan dan memberi penghargaan kepada pelaku kejahatan dapat memberikan jaminan yang selama ini dicari oleh komunitas pengembang untuk mengamankan rantai pasokan perangkat lunak.

### Sistem Penyimpanan

Proyek sumber terbuka menyediakan berbagai macam fungsionalitas, beberapa di antaranya mungkin dibatasi atau tidak diinginkan. Enkripsi adalah contoh yang sangat baik untuk itu. Kasus penggunaan yang sangat penting untuk enkripsi adalah mendukung privasi individu di seluruh dunia. Akan tetapi, enkripsi juga dapat digunakan untuk tujuan jahat (lihat [Phantom Secure](https://www.fbi.gov/news/stories/phantom-secure-takedown-031618), dibongkar oleh lembaga penegak hukum pada bulan Maret 2018) atau dapat dikompromikan untuk mendukung kegiatan penegakan hukum (Lihat [Operation Ironside (AFP), Operation Greenlight (Europol), and Operation Trojan Shield (FBI)](https://www.europol.europa.eu/media-press/newsroom/news/800-criminals-arrested-in-biggest-ever-law-enforcement-operation-against-encrypted-communication) di mana FBI mengoperasikan platform komunikasi "terenkripsi", AN0M, dan meyakinkan para penjahat untuk menggunakan telepon "terenkripsi" mereka untuk komunikasi yang aman).

Aplikasi enkripsi yang luas telah membuatnya menjadi kasus penggunaan yang sempurna untuk perangkat lunak sumber terbuka dan menjadi contoh yang baik bahwa solusi apa pun yang menyimpan paket haruslah anti-rusak dan tahan sensor. tea merupakan protokol terdesentralisasi yang tidak bermaksud untuk menyaring atau memberi sanksi pada paket berdasarkan fungsionalitasnya. Meskipun tata kelola teh dapat memilih untuk menghapus paket yang terbukti berbahaya (lihat the [governance section](white-paper.md#governance) untuk informasi lebih lanjut), sangat penting bagi sistem teh untuk terhubung dengan beberapa sistem penyimpanan, termasuk yang terdesentralisasi yang menunjukkan bahwa sebuah paket tidak diubah dan direplikasi dengan benar. Pengelola paket dapat memilih sistem penyimpanan yang paling sesuai dengan kebutuhan mereka untuk menyimpan dan mendistribusikan paket mereka dengan aman.

## Tinjauan Protokol

Merancang protokol untuk menghargai kontribusi sumber terbuka menghadirkan tantangan yang berat. Perangkat lunak sumber terbuka, karena dapat diakses secara universal, rentan terhadap kesalahan atribusi, perampasan, dan gangguan jahat. Namun, komunitas sumber terbuka telah secara konsisten menunjukkan kesediaannya untuk menyoroti pelaku yang baik dan mengekspos pelaku yang buruk. Secara historis, energi yang dihabiskan untuk meninjau dan mengomentari kontribusi pengembang lain telah dilakukan secara sukarela, terlepas dari betapa pelaporan dan pembelaan terhadap temuan-temuan yang memakan waktu dan krusial.

Kami bermaksud untuk menciptakan protokol terdesentralisasi yang dijamin oleh reputasi dan insentif yang meningkatkan keberlanjutan dan integritas rantai pasokan perangkat lunak dengan memungkinkan pengembang sumber terbuka untuk menangkap nilai yang mereka ciptakan dengan cara yang tidak dapat dipercaya. Kami percaya bahwa imbalan yang memadai untuk kontribusi sumber terbuka tidak akan berhasil tanpa adanya sistem reputasi dan kemampuan bagi anggota komunitas untuk mengomunikasikan temuan dan dukungan (atau ketidaksetujuan) mereka terhadap suatu proyek atau hasil karya pengembang. Selain itu, kita harus menyediakan alat bantu bagi para pengembang untuk mengakses dan berkontribusi pada sistem reputasi ini. Alat bantu yang mencakup akses visual dan program yang sederhana ke versi dan reputasi semua dependensi dalam proyek mereka.

Transparansi terhadap token TEA yang dipertaruhkan oleh anggota komunitas untuk mendukung setiap proyek akan meningkatkan reputasi setiap proyek, seperti halnya jumlah token yang dipertaruhkan oleh pengelola paket untuk pekerjaan mereka sendiri yang menandakan komitmen mereka terhadap proyek tersebut. Poin data gabungan ini akan membantu menginformasikan sistem reputasi untuk semua anggota komunitas dan memfasilitasi pilihan. Sebagai [event-stream package hack](https://medium.com/intrinsic-blog/compromised-npm-package-event-stream-d47d08605502) tidak dilakukan melalui paket itu sendiri, tetapi melalui salah satu dependensinya, visibilitas di seluruh lapisan dependensi akan sangat penting untuk membangun sistem tanpa kepercayaan ini. Namun, pertimbangan seperti biaya komputasi dan transaksi ("gas") perlu diprioritaskan saat sistem dirancang dan dibangun.

Tujuan kami adalah untuk memberikan penghargaan kepada para pengembang Web 2.0 dan web3. Kerumitan dan spesifikasi dari setiap tumpukan membuatnya sehingga pelacakan instalasi paket dapat dengan mudah menjadi korban dari satu atau lebih pelaku kejahatan. Itu termasuk "membeli" instalasi untuk menggelembungkan angka secara artifisial. Skenario yang lebih buruk lagi adalah memperkenalkan perubahan mendasar pada sifat perangkat lunak sumber terbuka dengan menciptakan gesekan yang tidak perlu dengan kunci lisensi atau mekanisme pelacakan penyebaran lainnya. Untuk memberikan cakupan yang lebih luas, kami percaya bahwa penghargaan tidak boleh bergantung pada gagasan sederhana tentang pelacakan instalasi, tetapi lebih pada mekanisme insentif yang mendorong penyerahan paket yang berkualitas dan pelaporan paket yang jahat atau berisiko tinggi. Terakhir, banyak paket yang bergantung pada ketergantungan yang sama. Sebagai contoh, [lodash](https://www.npmjs.com/package/lodash) memiliki 176.308 tanggungan sumber terbuka sementara [chalk](https://www.npmjs.com/package/chalk) memiliki 100.247 tanggungan atau [log4js](https://www.npmjs.com/package/log4js/) memiliki 3.809 tanggungan. Karena semakin banyak paket yang dibuat menggunakan dependensi yang sama, bagaimana kita memastikan bahwa penghargaan didistribusikan secara adil dan merata? Bagaimana kita memastikan bahwa dependensi yang paling banyak digunakan diberi penghargaan tanpa membuat paket dan pengembang baru atau yang sedang berkembang kelaparan? Bagaimana kita memastikan bahwa sistem insentif tidak mengarahkan pengembang menjauh dari bahasa khusus dan memusatkan mereka di tempat yang insentifnya lebih baik? Tetapi juga, sebagai pengembang, bagaimana kita mengidentifikasi paket-paket dengan dependensi terbanyak untuk membangun alternatif - versi yang lebih ramping, lebih efisien, dan dikodekan dengan lebih baik dari paket-paket ini?

Di Tea, kami percaya bahwa kurangnya visibilitas dan insentif telah menghambat evolusi perangkat lunak sumber terbuka. Didukung oleh insentif dan penghargaan yang tepat, lebih banyak pengembang akan berada dalam posisi untuk membangun, meningkatkan, dan menambah perangkat lunak sumber terbuka demi kemajuan dunia.

### Bukti Kontribusi

Dalam buku putih ini, kami mengusulkan "Proof of Contribution", sebuah mekanisme konsensus baru yang dirancang untuk mengukur dampak dari semua proyek di semua sistem sumber terbuka.

Proof of Contribution memberikan skor dinamis, yang disebut sebagai teaRank proyek, berdasarkan orientasi setiap proyek open-source di dalamnya, dan pemanfaatan dari ekosistem open-source yang lebih luas dari waktu ke waktu.

Kami percaya bahwa pendekatan ini bermanfaat bagi perangkat lunak dasar yang jauh dari lapisan aplikasi (yang cenderung menjadi lapisan yang paling terlihat oleh publik dan menarik sebagian besar minat) dan memperluas mekanisme penghargaan untuk memastikan bahwa semua komponen proyek - dari puncak pohon, sampai ke dasarnya - diberi penghargaan atas kontribusinya.

Untuk menghitung skor setiap proyek, teaRank dibangun di atas fondasi yang diletakkan oleh [Google's PageRank](https://en.wikipedia.org/wiki/PageRank) algoritma. PageRank Google adalah komponen penentu produk penelusuran dan dibangun di atas struktur halaman web yang menyerupai grafik. PageRank, pada intinya, adalah algoritme distribusi probabilitas yang memberikan nilai pada simpul-simpul dalam sebuah grafik, yang merepresentasikan kemungkinan sesuatu yang menavigasi grafik secara acak akan sampai pada simpul tertentu. Algoritme ini sangat efektif dalam struktur data yang menyerupai graf, seperti internet, karena algoritme ini mengukur dampak dari setiap simpul (atau halaman web) berdasarkan kuantitas dan kualitas dari sisi (tautan) ke simpul tersebut. Algoritma ini dimodifikasi dari waktu ke waktu untuk melihat topologi web dengan lebih baik dan mengidentifikasi tautan yang curang di antara halaman web, sehingga berbagai serangan dapat dimitigasi.

Karena struktur grafik internet dan registri terdesentralisasi Protokol Tea memiliki kesamaan yang luar biasa, PageRank pada awalnya tampak sebagai pendekatan yang menjanjikan untuk analisis. Namun, setelah percobaan lebih lanjut, menjadi jelas bahwa strategi anti-spam PageRank kurang efektif ketika diterapkan pada sumber terbuka.

Terbedaan utama terletak pada metadata perangkat lunak sumber terbuka. Tidak seperti halaman web, sebagian besar metadata paket sumber terbuka, seperti baris kode dan pesan komit, dibuat oleh pengguna dan rentan terhadap pemalsuan. Pengelola paket rentan terhadap kampanye spam, di mana pelaku jahat membanjiri registri dengan paket-paket yang berisi tautan phishing atau konten berbahaya lainnya. Registri manajer paket juga dapat secara tidak akurat mencerminkan ketergantungan proyek tertentu. Masalah ini, yang dikenal sebagai “[manifest confusion](https://www.bleepingcomputer.com/news/security/npm-ecosystem-at-risk-from-manifest-confusion-attacks/)” dapat memungkinkan pelaku kejahatan menyuntikkan kode jahat atau secara artifisial meningkatkan dampak ketergantungan pihak ketiga, sering kali untuk tujuan jahat.

Tugas berat untuk mengidentifikasi dan menangani paket spam ini biasanya jatuh pada perusahaan keamanan atau individu altruistik, yang tidak ada yang menawarkan solusi terukur untuk memerangi serangan spam dalam sumber terbuka.

Proof of Contribution adalah sebuah algoritma yang secara khusus dirancang untuk menangani identifikasi dan isolasi paket spam dan memastikan hanya proyek-proyek yang memiliki dampak yang akan mendapatkan imbalan yang adil. Detail dari algoritma Proof of Contribution akan menjadi subjek dari makalah teknis khusus.

### Peserta Jaringan

Dalam kertas putih ini, kami membedakan peserta melalui kontribusinya. Beberapa dapat memberikan kontribusi kode atau memverifikasi kode yang dikontribusikan. Yang lainnya mungkin mendukung pengembang dan reputasi mereka.

#### Pemelihara Paket

teh mengasumsikan bahwa pembuat paket memelihara pekerjaan mereka. Dalam buku putih ini, kami akan menyebut mereka sebagai "pengelola paket".

Pengelola paket harus memastikan perangkat lunak mereka terus memberikan nilai yang semakin meningkat seiring dengan perkembangan industri. Mereka adalah pilar komunitas sumber terbuka yang perlu diberdayakan dan dihargai atas kontribusi mereka yang berkelanjutan. Namun, pengelola paket dapat memutuskan untuk menghentikan upaya pemeliharaan mereka atau menyadari bahwa mereka tidak dapat beroperasi dengan kecepatan yang sesuai dengan harapan pengguna proyek. Untuk memastikan kesinambungan, mereka harus memiliki kemampuan untuk mengalihkan kendali proyek mereka kepada pengembang atau kelompok pengembang lain, dengan demikian menunjuk mereka sebagai pengelola dan memberi mereka kepemilikan dan kendali atas imbalan yang ada dan yang akan datang yang terkait dengan proyek tersebut.

Demikian pula, seorang pengembang dapat memutuskan untuk mengambil peran sebagai pengelola paket dengan melakukan forking pada proyek yang sudah ada dan mendaftarkan proyek baru yang akan mereka kelola di masa mendatang, sehingga menjadi pengelola paket. Setelah terdaftar, proyek yang teaRank-nya melebihi ambang batas yang ditentukan oleh tata kelola akan mulai menerima hadiah dari Protokol teh melalui algoritma Proof of Contribution protokol, secara paralel dengan proyek lama yang bercabang. Ketika komunitas open-source bergeser dari proyek lama dan beralih ke proyek yang lebih baru, algoritma Proof of Contribution secara bertahap akan mengurangi imbalan yang dialokasikan ke proyek lama sambil meningkatkan imbalan yang diberikan ke proyek fork baru.

Sangatlah penting untuk menyediakan alat yang tepat bagi komunitas pengembang untuk menentukan proyek mana yang sedang dipelihara dan reputasi serta kualitas kerja para pemelihara di masa lalu dan sekarang. Kita sudah terlalu sering melihat karya sumber terbuka dirusak dan upaya banyak orang dirusak oleh oknum-oknum yang tidak bertanggung jawab. Meskipun pekerjaan para pelaku jahat ini sebagian besar ditemukan dan diperbaiki, seringkali tidak sampai terjadi kerusakan yang signifikan melalui kerugian finansial atau kehilangan data. Sebagai contoh [event-stream npm package](https://medium.com/intrinsic-blog/compromised-npm-package-event-stream-d47d08605502) yang diunduh lebih dari 1,5 juta kali per minggu dan diandalkan oleh lebih dari 1.500 paket ketika seorang peretas berhasil menembus proyek sumber terbuka, mendapatkan kepercayaan dari pembuat aslinya, dan memodifikasi event-stream untuk bergantung pada sebuah paket berbahaya yang akan mengeksfiltrasi kredensial dompet bitcoin ke server pihak ketiga. Walaupun alat bantu dapat membantu mendeteksi beberapa serangan ini, alat bantu tersebut tidak selalu dapat diandalkan, sehingga seluruh komunitas bergantung pada ketekunan dan kemauan satu sama lain untuk berbagi temuan mereka.

Kami mengusulkan untuk memperkenalkan insentif melalui token TEA yang dijelaskan dalam "[TEA token](white-paper.md#tea-token)" untuk mendorong komunitas sumber terbuka melaporkan temuan mereka secara konstruktif, sehingga pengelola paket dapat mengatasinya sebelum dieksploitasi.

#### Pengguna Paket dan anggota komunitas tea

"Pengguna paket" adalah pengembang perangkat lunak yang berfokus pada pemecahan masalah tertentu. Mereka sering kali mencari alat bantu di komunitas sumber terbuka untuk bereksperimen dengan cepat dan mengulang dengan sedikit atau tanpa biaya, yang secara langsung mendapatkan manfaat dari pekerjaan pengelola paket.

Dengan lebih dari 10 juta paket yang dapat diakses di 30 pengelola paket teratas, tidak adanya atribusi nilai universal pada proyek sumber terbuka dapat mengubah pemilihan paket yang aman dan efisien untuk pengembangan menjadi upaya yang berisiko tinggi dan menakutkan. Tanpa adanya cara yang jelas untuk mengatribusikan dan mengukur nilai, bagaimana pengguna paket secara efisien memilih paket yang aman untuk pengembangan mereka?

Kami percaya bahwa algoritma Proof of Contribution dari Protokol Tea Protocol yang dikombinasikan dengan insentif lainnya dapat memberikan pengguna paket informasi yang mereka butuhkan untuk memilih fondasi proyek mereka dengan cepat dan bijaksana.

#### Pendukung Proyek

Pada Web 2.0 dan web3, sebagian pengguna paket, yang sering disebut "sponsor", telah memilih untuk mendukung pengelola paket melalui donasi atau bentuk remunerasi lainnya; namun, hal ini jarang terjadi.

"Pendukung proyek" ini adalah organisasi atau pengguna proyek sumber terbuka yang menggunakan perangkat lunak sumber terbuka untuk membangun produk komersial mereka, dermawan yang ingin mendukung ekosistem, atau pengusaha yang ingin mendanai tim untuk mengembangkan komponen sistem yang lebih besar.

tea mengusulkan untuk memperluas komunitas pendukung proyek open-source ke seluruh komunitas teh, baik organisasi, pengembang, pengguna, atau penggemar teknologi. tujuan tea adalah untuk menerapkan mekanisme insentif terdesentralisasi melalui kasus penggunaan token TEA yang unik bagi setiap anggota komunitas teh untuk berkontribusi pada keberlanjutan dan pertumbuhan berkelanjutan dari open-source. Pendukung proyek bebas untuk memutuskan proyek atau pengelola paket mana yang ingin mereka dukung berdasarkan pekerjaan, keyakinan, atau kriteria dan metrik apa pun yang akan mempengaruhi keputusan mereka. Selain itu, pendukung proyek juga bebas untuk memutuskan bagaimana mereka ingin mendukung proyek-proyek ini.

Sponsor dapat menjadi sistem yang efektif untuk mendukung pengembangan open-source; namun, sponsor ini biasanya tidak mencakup semua dependensi. Keterbatasan ini menguntungkan pihak-pihak tertentu dan menghalangi inovasi dan pengembangan perangkat lunak. Untuk berusaha sebagai fondasi pengembangan perangkat lunak, open-source harus memberdayakan semua pengembang, baik pemula maupun ahli, di semua lapisan di menara.

Untuk mendukung keberlanjutan dan integritas rantai pasokan perangkat lunak dan memungkinkan pengembang open-source untuk mendapatkan nilai yang mereka ciptakan, teh bertujuan untuk membangun mekanisme di mana dukungan bermanfaat bagi semua aspek proyek. Dukungan dari para pendukung akan mengalir melalui ketergantungan proyek, dari atas hingga ke pangkal pohon. Hal ini secara implisit menempatkan kepercayaan pada kemampuan pengelola paket untuk membuat pilihan yang tepat tentang stack mereka, sehingga meningkatkan reputasi mereka.

<figure><img src=".gitbook/assets/figure-2.png" alt=""><figcaption><p>Figure 2 - Pendistribusian hadiah di seluruh dependencies</p></figcaption></figure>

#### Pencicip tea

Ketika proyek baru atau versi baru dari proyek yang sudah ada dirilis, validitas dari pekerjaan tersebut harus dapat dibuktikan. Informasi ini sangat penting bagi pengguna paket untuk memutuskan apakah mereka dapat mempercayai paket dan pemeliharanya. Dalam Protokol Teh, fungsi ini disediakan oleh "pencicip teh".

pencicip teh, biasanya, adalah pengembang perangkat lunak berpengalaman yang bersedia mendedikasikan sebagian waktu mereka untuk memeriksa klaim yang terkait dengan suatu paket (fungsionalitas, keamanan, [semantic versioning](https://semver.org/), keakuratan lisensi, dll.) dan mempertaruhkan reputasi mereka dan token TEA untuk menunjukkan hasil penelitian mereka dan mendukung ulasan mereka. Dalam Protokol teh, "mempertaruhkan teh Anda" adalah proses penguncian token TEA untuk mendukung ulasan Anda, yang berpotensi mendapatkan imbalan atau menghadapi hukuman berdasarkan konsensus tentang kualitas ulasan Anda. pencicip teh juga memiliki opsi untuk melaporkan bug atau kerentanan kepada manajer paket secara rahasia. Laporan yang valid akan mendapatkan hadiah dari kas proyek, sementara laporan yang tidak valid akan menyebabkan hilangnya saham pencicip teh. Terakhir, jika pengelola paket mengabaikan masalah yang dilaporkan ini, hal ini akan memicu penalti, atau "pemotongan", untuk kas proyek.

Seperti pendukung proyek, pencicip teh dapat memengaruhi reputasi proyek dan pengelola paket; namun, dampaknya lebih signifikan karena peran mereka dalam memvalidasi keamanan, fungsionalitas, dan kualitas proyek. pencicip teh juga perlu membangun reputasi mereka untuk mendukung klaim mereka. Kualitas pekerjaan mereka dan token TEA yang mereka pertaruhkan saat mereka mempertaruhkan ulasan mereka yang dikombinasikan dengan sumber data eksternal lainnya akan membangun reputasi setiap pencicip teh, sehingga memberikan nilai lebih pada pekerjaan mereka. Lihat halaman "[Package & Package Maintainer Reputation](white-paper.md#package-and-package-maintainer-reputation)" untuk rincian lebih lanjut tentang mekanisme yang digunakan untuk memengaruhi reputasi pengelola proyek dan paket.

### Pendaftaran Proyek dan Bukti Imbalan Kontribusi

Pendaftaran rilis proyek membutuhkan beberapa transaksi yang terjadi secara atomis. Secara khusus:

* Pemelihara paket harus mendaftarkan proyek dengan registri terdesentralisasi,
* Protokol teh harus menginstansiasi perbendaharaan proyek yang dimiliki, dikontrol, dan dikonfigurasi oleh pemelihara paket sesuai dengan aturan yang ditentukan oleh pemelihara paket, dan
* Protokol teh harus mendaftarkan nama unik perbendaharaan dengan Layanan Penamaan Ethereum, atau ENS, sehingga menyederhanakan semua interaksi pengguna dengan perbendaharaan.

Kegagalan salah satu operasi akan mengakibatkan protokol kembali ke kondisi sebelumnya.

Setelah pendaftaran proyek berhasil dengan teaRank yang melampaui ambang batas yang ditentukan oleh tata kelola, Protokol teh memulai distribusi hadiah Bukti Kontribusi ke kas proyek. Kami menyarankan untuk mendistribusikan imbalan ini mengikuti kurva yang telah ditentukan sebelumnya dari kumpulan token yang telah ditentukan sebelumnya yang dikendalikan oleh Protokol teh dan dialokasikan dari total pasokan token TEA.

Pengelola paket diharuskan untuk meningkatkan reputasi dan kepercayaan proyek mereka dengan secara konsisten mempertaruhkan sebagian dari imbalan Bukti Kontribusi yang diterima oleh kas proyek. Untuk setiap token yang dipertaruhkan, peserta jaringan akan menerima "staked TEA" yang tidak dapat dipindahtangankan, atau stTEA, dengan rasio 1: 1, untuk berpartisipasi dalam tata kelola Protokol teh. Sejalan dengan aturan protokol, imbalan yang dipertaruhkan ini, dan stTEA yang sesuai, dapat dikurangi ("pemotongan") atau didistribusikan kembali jika pengelola paket gagal mengatasi bug atau kerentanan.

Terakhir, kegagalan untuk mempertahankan rasio staked treasury minimum yang ditetapkan dalam aturan tata kelola akan mengakibatkan penangguhan distribusi reward Bukti Kontribusi ke proyek. Sebagai gantinya, hadiah ini akan didistribusikan kembali di antara proyek-proyek yang sesuai.

### Reputasi Pengelola Paket & Paket

Sistem reputasi yang hanya bergantung pada kontribusi ekonomi penulis tidak memberikan perlindungan yang memadai bagi pengguna dan dapat menjadi sasaran serangan Sybil, di mana satu orang membuat beberapa representasi diri mereka sendiri untuk memberikan sejumlah besar ulasan positif atas karya mereka, mengelabui pengguna agar percaya bahwa karya mereka telah ditinjau dan disetujui oleh banyak orang.

Beberapa metodologi tersedia untuk mencegah serangan Sybil, beberapa di antaranya dijelaskan oleh Nitish Balachandran dan Sugata Sanyal dalam “[A Review of Techniques to Mitigate Sybil Attacks](https://arxiv.org/abs/1207.2617/)”. Karena tea adalah protokol yang terdesentralisasi, menggunakan sistem sertifikasi kepercayaan yang bergantung pada otoritas penerbitan sertifikat yang tersentralisasi akan bertentangan dengan intinya. Kami mengusulkan untuk fokus pada pendekatan terdesentralisasi untuk mitigasi serangan Sybil dan, lebih khusus lagi, pada metodologi yang bergantung pada sekelompok besar peserta jaringan yang diberi insentif untuk menilai dan secara terbuka mewakili reputasi setiap paket dan pemeliharanya.

Mirip dengan produksi blok pada blockchain proof-of-stake, di mana node yang tidak memproduksi dapat memvalidasi pekerjaan orang lain dan, jika perlu, menyoroti pelanggaran aturan jaringan, yang mengarah pada hukuman bagi aktor jahat melalui pemotongan (penghancuran sebagian dari saham mereka), kami mengusulkan sebuah sistem di mana pihak ketiga, seperti pencicip teh, dapat meninjau paket yang dihasilkan oleh pengelola paket dan diberi insentif untuk berperilaku demi kepentingan komunitas perangkat lunak sumber terbuka dan para penggunanya, serta mengenali perilaku yang baik dan menghukum perilaku yang buruk. Sistem ini harus tahan terhadap Sybil dan mencegah pemegang token besar untuk mempengaruhi protokol atau reputasi paket tertentu. Kami percaya bahwa pendekatan ini lebih selaras dengan open-source, menyediakan substrat yang lebih subur untuk mendorong adopsi dan kepercayaan, dan pada akhirnya memfasilitasi pertumbuhan teh.

Selain itu, ketika reputasi setiap anggota komunitas teh mencapai tonggak penting, mereka dapat diberikan akses ke bagian yang lebih tinggi dari protokol.

### Peninjauan Paket oleh Pihak Ketiga

Peninjauan paket oleh pihak ketiga merupakan komponen penting dalam membangun reputasi dan keamanan rantai pasokan perangkat lunak. Namun, peninjauan pihak ketiga memiliki ancaman uniknya sendiri, termasuk serangan Sybil yang telah disebutkan sebelumnya.

Teknologi Blockchain, dan secara lebih eksplisit staking, menawarkan kesempatan unik bagi teh untuk mengatasi tantangan ini. Meskipun alamat dompet mungkin tersedia dalam jumlah yang tidak terbatas, tidak demikian halnya dengan token TEA, yang total pasokannya diperkirakan mencapai 10 miliar. Selain itu, setiap tindakan yang dilakukan oleh pengembang, seperti mengirimkan, memverifikasi, atau mempertaruhkan paket, akan berkontribusi pada reputasi mereka, sehingga menciptakan profil unik yang dapat digunakan oleh setiap pengembang untuk berkontribusi pada komunitas teh dan berpartisipasi dalam tata kelola teh.

Dengan mewajibkan pengulas pihak ketiga untuk mempertaruhkan token TEA dan menanggung risiko kehilangan sebagian dari taruhan mereka jika mereka ternyata berperilaku tidak sesuai dengan kepentingan jaringan atau menjadi aktor yang buruk, pihak ketiga dapat memberikan kepercayaan tambahan pada sebuah paket dan menerima hadiah, dalam bentuk token TEA.

Kami juga mengusulkan untuk memperluas sistem reputasi kepada pihak ketiga yang melakukan verifikasi independen terhadap paket-paket, yaitu para pencicip teh. Penyelesaian tinjauan positif akan membutuhkan dua operasi yang terjadi secara bersamaan:

* Pengajuan kode tinjauan, ditandatangani oleh pencicip teh dan dapat diakses secara publik oleh semua anggota komunitas, bersama dengan
* Tindakan mempertaruhkan paket, untuk memperkuat ulasan mereka.

Penyelesaian tinjauan negatif yang mencakup satu atau lebih kerentanan kritis akan mengharuskan pencicip teh untuk terlebih dahulu menghubungi pengelola paket menggunakan protokol pengiriman pesan untuk memberi tahu mereka tentang kerentanan tersebut dan memungkinkan mereka untuk mengatasi masalah tersebut secara tepat waktu. Setelah berakhirnya periode yang ditentukan tata kelola yang dialokasikan untuk pengelola paket untuk mengatasi kerentanan mereka atau saat paket yang diperbaiki tersedia, protokol pengiriman pesan yang sama akan digunakan untuk memberi tahu pengguna dan penguji paket ini (termasuk tanggungan) bahwa kerentanan telah diidentifikasi, dan mudah-mudahan diatasi, sehingga mereka tahu untuk memperbarui aplikasi atau ketergantungan mereka. Untuk mencegah pemborosan waktu pengembang, komunikasi antara pencicip teh dan pengelola paket akan mengharuskan pencicip teh untuk mempertaruhkan token TEA.

Setelah menyelesaikan kedua operasi tersebut, pencicip teh akan menerima NFT sebagai bukti pekerjaan mereka pada paket dan versi paket tertentu. Akumulasi NFT yang dikombinasikan dengan rasio taruhan dari setiap paket yang ditinjau dan informasi yang diekstrak dari sistem eksternal akan menginformasikan reputasi pencicip teh. Ketika reputasi mereka mencapai tonggak penting, pencicip teh dapat memperoleh akses ke bagian yang lebih tinggi dari protokol atau imbalan yang dipercepat dari protokol, seperti yang diputuskan oleh tata kelola tea.

### Paket yang sudah usang atau rusak

Misi tea adalah untuk meningkatkan keberlanjutan dan integritas rantai pasokan perangkat lunak dengan mengizinkan pengembang sumber terbuka untuk mendapatkan nilai yang mereka ciptakan; namun, imbalan harus sepadan dengan upaya yang dikerahkan oleh pemelihara paket dan pencicip teh. Paket yang kurang terawat, ketinggalan zaman, atau rusak merupakan indikasi yang jelas bahwa pengelola paket tidak memenuhi harapan komunitas atau tidak memenuhi kepercayaan dan dukungan yang diberikan kepada mereka melalui staking paket. Manifestasi lain dari paket yang sudah ketinggalan zaman adalah penggunaan bahasa lama atau versi lama dari bahasa multi-versi. Paket yang sudah usang atau rusak terlalu lama mengindikasikan bahwa pencicip teh perlu meninjau pekerjaan pengelola paket secara teratur dan konsisten.

Pencicip teh memainkan peran penting dalam komunitas sumber terbuka, karena ulasan mereka dan klaim terkait dapat memengaruhi pengguna paket, baik memandu mereka menuju atau menjauhi paket tertentu. Untuk memastikan bahwa ulasan dapat dipercaya secara berkelanjutan, kami mengusulkan sebuah mekanisme di mana ulasan yang diposting oleh para pencicip teh harus dikaitkan dengan token TEA yang dipertaruhkan. Paket yang sudah usang atau rusak dapat melihat sebagian dari perbendaharaan mereka dipotong, sementara sebagian lainnya dikirim ke pencicip teh yang pertama kali mengenali kurangnya pemeliharaan paket apa pun.

Seiring dengan meningkatnya popularitas dan penggunaan paket, dengan semakin banyaknya aplikasi dan sistem yang berpotensi sangat penting yang bergantung pada paket, kita harus memberikan insentif kepada pengembang untuk secara diam-diam melaporkan kekurangan pada pengelola paket dan mendorong pengelola paket untuk mengatasi kekurangan tersebut sebelum dieksploitasi. Oleh karena itu, kami mengusulkan agar setiap tinjauan negatif yang menguraikan kelemahan seperti kerentanan zero-day atau penggunaan ketergantungan yang sudah ketinggalan zaman dan tetap terbuka setelah masa tenggang yang ditentukan oleh tata kelola harus dianggap sebagai kegagalan di pihak pengelola paket dan dikenakan hukuman yang sama dengan pencicip pertama yang melaporkan kelemahan tersebut yang akan menerima sebagian token yang dipotong.

Hal yang sama juga berlaku bagi pendukung paket yang mempertaruhkan reputasi dan token TEA mereka pada pekerjaan pengelola paket yang nakal dan menerima imbalan untuk itu. Karena mereka gagal mengidentifikasi kurangnya pemeliharaan atau memilih untuk terus mendukung paket terlepas dari itu, kami mengusulkan agar semua kegiatan pemotongan diperluas ke pendukung paket.

Distribusi ke semua pencicip teh dapat didasarkan pada usia ulasan mereka dan jumlah token TEA yang mereka pertaruhkan untuk ulasan mereka.

## TEA Token

TEA adalah token kriptografi yang berfungsi sebagai kunci akses ke bagian-bagian tertentu dan fitur-fitur tertentu dari Protokol Teh.

Pemegang token TEA memiliki kemampuan untuk:

* Mendaftarkan paket mereka;
* Mendukung paket dengan mempertaruhkan token TEA ke paket tertentu;
* Berkontribusi pada keamanan rantai pasokan perangkat lunak dengan menantang paket dan melakukan tinjauan untuk melaporkan bug dan/atau kerentanan.

Seperti yang telah dibahas, Protokol teh membuka ekonomi sumber terbuka dan menciptakan nilai bagi pembuat, pengelola, dan pengguna akhir perangkat lunak perusahaan. Pada akhirnya, nilai yang ditangkap oleh Protokol teh bertambah kembali ke pemegang token seiring dengan berkembangnya komunitas, menciptakan lingkaran umpan balik yang semakin mendorong partisipasi.

### Memberi Penghargaan kepada Pengembang Sumber Terbuka

Kami berharap mekanisme Proof of Contribution dan staking tea dapat mendorong pertumbuhan open-source dengan memberdayakan para pesertanya dengan sumber daya yang mereka butuhkan untuk mengejar hasrat mereka tanpa beban.

Sebagaimana diuraikan dalam "[Project Registration and Proof of Contribution Rewards](white-paper.md#project-registration-and-proof-of-contribution-rewards)", Proyek-proyek yang terdaftar di Protokol teh dan memiliki teaRank yang melampaui ambang batas yang ditentukan oleh tata kelola akan menerima imbalan Bukti Kontribusi dalam bentuk token TEA dari Protokol teh. Distribusi ini akan terus berlanjut selama paket tersebut mematuhi aturan protokol. Secara khusus, paket harus mempertahankan teaRank di atas ambang batas yang ditentukan tata kelola dan pengelola paket harus berkontribusi pada reputasi dan kepercayaan proyek mereka dengan terus mempertaruhkan sebagian dari imbalan Bukti Kontribusi yang diterima oleh bendahara proyek. Kegagalan untuk mematuhi aturan ini akan mengakibatkan penangguhan distribusi reward Proof of Contribution dan pendistribusian ulang reward di masa mendatang di antara proyek-proyek yang patuh.

Ketergantungan dapat secara signifikan memengaruhi keandalan dan keamanan sebuah paket, dan tidak adanya pendaftaran untuk ketergantungan sebuah paket harus dilihat sebagai potensi risiko. Pengelola paket, sebagai validator dan pengguna dependensi ini, berada dalam posisi utama untuk terhubung dengan pengelola dependensi tersebut. Mereka dapat mendorong mereka untuk mendaftarkan proyek mereka ke dalam teh, sehingga membuat mereka dapat diawasi oleh para pencicip teh dan memenuhi syarat untuk mendapatkan hadiah terkait. Untuk mendorong keterlibatan seluruh komunitas yang bertujuan untuk meningkatkan sistem reputasi ini, kami merekomendasikan agar setiap paket dengan dependensi yang tidak terdaftar di Protokol teh akan mendapatkan sebagian kecil dari reward Kontribusi yang dibakar. Pembakaran ini akan proporsional dengan jumlah dan kontribusi, yang diukur dalam teaRank, dari setiap dependensi yang tidak terdaftar, dan terus berlanjut selama dependensi tersebut tetap tidak terdaftar.

Banyak kasus telah menunjukkan bahwa insentif yang kuat dapat memikat aktor jahat untuk mengkompromikan perangkat lunak sumber terbuka. Sebagian besar infrastruktur penting Internet berjalan pada sumber terbuka, dan perlombaan untuk menemukan eksploitasi dan kerentanan lainnya sedang berlangsung. Di Tea, kami percaya bahwa pengelola paket bukanlah pihak yang harus disalahkan (meskipun sering kali demikian).

Insentif Protokol Teh mengatasi masalah ini dengan memastikan distribusi insentif yang adil dan merata. Paket seperti lodash dengan lebih dari 176 ribu tanggungan adalah pilar pengembangan sumber terbuka, dan pengelolanya layak diberi imbalan secara proporsional. Namun, sistem penghargaan yang dibangun hanya berdasarkan jumlah tanggungan akan mencegah para inovator untuk mengganggu monopoli ini kecuali jika mereka didanai secara memadai oleh pihak ketiga atau telah mengumpulkan sumber daya yang cukup untuk mendanai sendiri. Pendekatan ini kemungkinan besar akan menyebabkan berkurangnya jumlah kontributor, yang menghasilkan kebalikan dari apa yang dimaksud dengan teh.

Untuk mengatasi keterbatasan ini dan memberdayakan setiap pemegang token TEA dengan kemampuan untuk mendukung pengelola paket, kami juga merekomendasikan agar sebagian kecil dari semua hadiah staking yang diterima oleh semua peserta jaringan diarahkan ke perbendaharaan paket yang di-staking, bersama dengan ketergantungannya.

### Mempertaruhkan untuk Mengamankan Rantai Pasokan Perangkat Lunak

Staking dapat menjadi metodologi yang efektif untuk mendukung sistem reputasi yang terdesentralisasi. Namun, untuk memfasilitasi keamanan rantai pasokan perangkat lunak, sistem distribusi insentif teh harus mempertimbangkan dengan cermat rasio staking setiap paket dan menyesuaikan insentif setiap paket dengan tepat.

Untuk mengurangi risiko sejumlah kecil paket yang digunakan sebagai dependensi di banyak aplikasi yang mengumpulkan sebagian besar reward staking, kami merekomendasikan penerapan rasio staking yang optimal, mirip dengan pendekatan yang dijelaskan dalam [research produced by the web3 Foundation](https://research.web3.foundation/Polkadot/overview/token-economics).

Ketika sebuah paket melebihi rasio staking optimal yang ditentukan oleh tata kelola, jumlah total hadiah staking yang dialokasikan untuk paket tersebut akan tetap, terlepas dari jumlah token TEA yang di-staking pada paket tersebut. Langkah ini, yang dirancang untuk menghilangkan insentif pendukung paket dan pencicip teh agar tidak lagi melakukan staking pada paket yang memiliki staking tinggi, akan menghasilkan penurunan linear dari hadiah staking yang diterima oleh setiap pendukung paket.

Pendekatan berbasis kurva, seperti yang dijelaskan dalam penelitian web3 Foundation akan memperlambat pengurangan kumpulan hadiah staking yang dialokasikan ke paket, sehingga terus mengambil dari paket yang lebih rendah staking-nya dan memperkenalkan eksternalitas negatif dengan memberikan lebih banyak pengaruh pada pemegang token besar atas distribusi kumpulan hadiah staking.

Desain linier yang direkomendasikan harus memungkinkan paket dengan staking yang lebih rendah menjadi lebih menarik bagi para pendukung paket dan pencicip teh. Hal ini juga dapat memberikan insentif kepada pengembang berpengalaman untuk membangun alternatif dari paket yang memiliki staking tinggi, menciptakan peluang bagi komunitas teh untuk menyeimbangkan antara mendukung perangkat lunak yang sudah ada dan mempromosikan inovasi. Dalam desain awalnya, rasio staking akan dihitung menggunakan suplai yang beredar. Komunitas teh dapat mengubah desain ini untuk meningkatkan skalabilitas sistem lebih lanjut.

Seperti halnya pelaku yang baik harus diberi penghargaan; pelaku yang buruk harus diidentifikasi dan dihukum. Perangkat lunak sumber terbuka memberikan banyak kesempatan bagi pelaku kejahatan untuk menciptakan masalah dan risiko reputasi bagi seluruh komunitas pengembang. Dari penyalahgunaan pekerjaan hingga pengubahan dan pendistribusian ulang paket perangkat lunak, atau penyuntikan kode jahat, perang antara pelaku yang baik dan yang jahat terus berlangsung, sering kali dengan pelaku jahat yang memiliki dana besar yang melihat kontaminasi paket sumber terbuka sebagai peluang untuk mendapatkan keuntungan finansial. Sisi negatifnya relatif minimal, dengan paket-paket yang berpotensi dilarang dari rak-rak digital atau memiliki reputasi yang buruk.

Untuk secara langsung menangani aktor jahat dan mengintensifkan dampak dari tindakan yang bertentangan dengan sumber terbuka, kami sarankan untuk menerapkan mekanisme pemotongan yang dirinci dalam “[Package Review by Third Parties](white-paper.md#package-review-by-third-parties)” dan “[Outdated or Corrupt Packages](white-paper.md#outdated-or-corrupt-packages)” bagian.

Ketika pencicip teh mengevaluasi dan menganalisis kode dalam paket yang baru dikirim, kami menyarankan pencicip teh menerima alat dan insentif untuk menunjukkan dan menyoroti kode jahat sehingga

* pengguna paket dapat mengetahui risikonya, dan
* pengelola paket dan pendukung paket dihukum karena mengirimkan atau mendukung kode jahat.

Untuk itu, untuk semua ulasan negatif yang terbukti dilakukan sesuai dengan aturan jaringan dan yang telah ditangani oleh pengelola paket dalam periode tata kelola yang ditentukan, pengelola paket tidak boleh dikenai hukuman apa pun yang bertentangan dengan pendukung paket atau pencicip teh yang memberikan ulasan positif terhadap paket yang bersangkutan.

Untuk ulasan negatif yang dilakukan sesuai dengan aturan jaringan dan belum ditangani oleh pengelola paket dalam periode yang ditentukan tata kelola, sebagian kecil token TEA yang dipertaruhkan oleh bendahara proyek, pendukung paket, dan pencicip teh sebelumnya akan dipotong dan dikirim ke pencicip teh yang mengidentifikasi bug atau kerentanan. Sebagian lagi akan dikunci ke dalam kumpulan asuransi yang dikendalikan oleh tata kelola teh. Tata kelola teh akan menetapkan kebijakan dan aturan dalam kolaborasi erat dengan komunitas untuk mendistribusikan konten pool kepada mereka yang terkena dampak kerentanan. Protokol ini akan mendistribusikan sepertiga dari token TEA yang terpotong ke semua pencicip teh yang berkontribusi pada ulasan negatif.

Staking dan pemotongan adalah komponen penting dari sistem insentif dan penalti Protokol teh. Pengelola paket diharuskan untuk mempertaruhkan sebagian dari perbendaharaan proyek mereka, memastikan bahwa mereka memiliki saham yang cukup besar yang berisiko jika mereka lalai dalam mengatasi bug atau kerentanan. Pengguna paket, pendukung, dan pencicip teh juga dapat mempertaruhkan token TEA untuk berkontribusi pada reputasi paket atau pengelola paket dan secara aktif berpartisipasi dalam protokol untuk menegakkan keberlanjutan dan integritas rantai pasokan perangkat lunak.

Tata kelola terkait erat dengan keterlibatan aktif ini. Untuk setiap token TEA yang dipertaruhkan, peserta menerima "staked TEA" (stTEA) yang tidak dapat dipindahtangankan dengan rasio 1:1, yang memungkinkan mereka untuk berpartisipasi dalam tata kelola Protokol teh. Imbalan yang dipertaruhkan dan token stTEA terkait dapat mengalami pengurangan (pemotongan) atau distribusi ulang jika aturan protokol tidak diikuti, sehingga memperkuat akuntabilitas di dalam ekosistem.

### Distribusi Pasokan Token TEA

Mayoritas token TEA yang dibuat oleh protokol digunakan sebagai insentif untuk mendorong pengelola paket, pengguna, dan pendukung untuk melakukan aktivitas yang memberikan nilai pada jaringan terdesentralisasi. Distribusi token TEA ke berbagai pemangku kepentingan dalam protokol ditentukan oleh "jadwal distribusi".

Insentif jaringan akan didistribusikan secara langsung oleh Protokol Teh, dalam bentuk token TEA, kepada empat kelompok pemangku kepentingan:

* Pemelihara Paket;
* Pengguna Paket (yang mencakup semua anggota komunitas teh);
* Pendukung Proyek; dan,
* Pencicip teh.

Token TEA juga akan digunakan untuk mendukung paket dan mengamankan rantai pasokan perangkat lunak melalui staking, termasuk hak untuk menantang paket dengan melakukan tinjauan dan melaporkan bug atau kerentanan, memberi penghargaan kepada pengembang open-source dari proyek terdaftar, dan berpartisipasi dalam tata kelola Protokol teh.

Direkomendasikan agar pasokan token maksimum 10 miliar didistribusikan ke seluruh anggota komunitas teh seperti yang dijelaskan di bawah ini:


<figure><img src=".gitbook/assets/Token Allocation-Updated.svg" alt=""><figcaption><p>Figure 3 - Token distribution of maximum supply</p></figcaption></figure>

Sekitar 51,4% dari pasokan token maksimum harus dialokasikan untuk "Ekosistem & Tata Kelola", yang mencakup insentif untuk proyek sumber terbuka untuk bergabung dan memelihara basis kode mereka serta imbalan untuk berkontribusi pada pemungutan suara dan konsensus yang terdesentralisasi melalui DAO. Token yang dialokasikan untuk "Ekosistem & Tata Kelola" harus didistribusikan sebagai imbalan Bukti Kontribusi, imbalan taruhan, dan jenis insentif lain yang berpusat pada pengembang.

Sekitar 18,6% dari pasokan token maksimum harus dialokasikan ke "Pengembangan Protokol" untuk memastikan keberlanjutan dan kelanjutan evolusi Protokol teh. Sekitar 12,7% harus dialokasikan untuk "Pendukung & Penasihat Awal". Sekitar 11,0% harus dialokasikan untuk penjualan Pribadi, 3,0% untuk penjualan publik, sedangkan 3,2% sisanya harus dialokasikan untuk mendukung likuiditas pasar setelah peristiwa pembuatan token terjadi.

Tokenomics yang terperinci, termasuk Distribusi Token yang komprehensif dan jadwal Emisi akan menjadi subjek dari makalah khusus.

## Tata Kelola

Tata kelola sangat penting untuk pengembangan, keberlanjutan, dan adopsi sistem terdistribusi apa pun.

Kami mengusulkan agar Protokol teh menggabungkan mekanisme tata kelola yang memungkinkan kontributor aktif yang telah mempertaruhkan token TEA untuk mengusulkan dan memberikan suara pada perubahan parameter kritis non-keuangan. Proses pemungutan suara akan dibobot berdasarkan kepemilikan token stTEA dan reputasi individu.

Parameter protokol dapat mencakup prioritas untuk mendukung manajer paket tertentu atau memperkenalkan fitur atau fungsi protokol baru, serta dampak dari faktor eksternal terhadap reputasi pengguna dan paket. Fungsionalitas ini akan memastikan bahwa parameter penting dapat berkembang dan dioptimalkan dari waktu ke waktu oleh anggota aktif komunitas teh. Kami mengantisipasi tata kelola akan diluncurkan dengan struktur yang sederhana dan secara progresif berkembang seiring dengan semakin matangnya sistem teh, memfasilitasi adopsi dan memastikan desentralisasi yang progresif.

Beberapa parameter sistem mungkin tidak tunduk pada tata kelola atau mendukung perubahan frekuensi tinggi untuk mengurangi permukaan serangan yang diwakili oleh tata kelola. Transisi progresif parameter ke tata kelola yang terbuka dan terdesentralisasi akan memastikan stabilitas dan prediktabilitas sistem.

## Ekstensibilitas Pihak Ketiga

Ketika kami membangun alat awal untuk memicu dukungan yang sudah lama tertunda dari komunitas open-source, kami percaya bahwa bagian dari misi kami adalah untuk memastikan bahwa pihak ketiga dapat memperluas keseluruhan perangkat. Selain menyediakan infrastruktur bagi para pengembang untuk membangun ekstensi pada protokol, termasuk cara-cara baru untuk berinovasi dan memajukan dukungan para pengembang open-source, rencana kami juga mencakup potensi bagi pengelola paket lain untuk berkontribusi pada protokol.

Mimpi dan upaya para pengembang sumber terbuka telah membangun inovasi yang mendukung kehidupan kita sehari-hari. Kami berharap dapat menemukan penggunaan dan ekstensi baru untuk Protokol teh yang diusulkan oleh komunitas teh.

## Pekerjaan Masa Depan dan Potensi Upaya Komunitas

Seiring dengan semakin matangnya sistem teh, kami memperkirakan komunitas akan memutuskan dan berkontribusi pada perubahan dan perluasan sistem teh melalui tata kelola. Di bawah ini adalah beberapa ide yang kami yakini dapat menginspirasi beberapa pihak, namun kami tidak menjamin kinerja di masa depan.

### Pedagang Besar Teh

Komunitas perangkat lunak sumber terbuka sangat dinamis dan terus berupaya untuk berinovasi dan memberikan nilai. Dedikasi dan altruisme ini mengarah pada pembuatan perangkat lunak dan paket baru secara terus-menerus, yang masing-masing menarik ketergantungan. Sebagai hasilnya, kami mengantisipasi peta ketergantungan untuk terus berkembang, yang mengarah pada perubahan yang sering terjadi pada rasio taruhan dan penghargaan. Di masa depan, komunitas teh dapat mengusulkan pengembangan sistem yang dirancang untuk secara dinamis memantau rasio staking untuk setiap proyek dan menyeimbangkan kembali bagaimana pendukung proyek mempertaruhkan token TEA mereka berdasarkan kriteria mereka sendiri.

### Royalti atas Transfer Paket

Kami menyadari bahwa pengelola paket dapat memutuskan untuk mentransfer aliran hadiah mereka ke satu atau lebih pengembang. Tata kelola transfer tersebut harus tetap menjadi keputusan pengelola paket dan mitranya, tanpa campur tangan dari TEA. Alat-alat yang perlu disediakan untuk transfer tersebut bisa total atau sebagian (mungkin hanya sebagian dari hadiah yang dialihkan ke satu atau beberapa pengembang, sementara hadiah yang tersisa terus mengalir ke pengelola paket yang asli) dan agar hadiah staking mengalir melalui satu akun yang dikendalikan oleh satu peserta jaringan, beberapa peserta jaringan, atau secara otomatis didistribusikan ke beberapa akun menggunakan rasio statis atau dinamis.

### Distribusi Hadiah di Beberapa Pemelihara

Pemeliharaan sebuah paket dapat bergantung pada pekerjaan satu tim pengembang lainnya. Sebelum hadiah mulai mengalir, tim harus mempertimbangkan untuk mengotomatiskan distribusi nilai di antara mereka sendiri. Bagaimana distribusi terjadi harus diputuskan oleh para pengelola itu sendiri, karena mereka berada dalam posisi terbaik untuk mengevaluasi siapa yang berkontribusi dan bagaimana mereka harus dihargai.

Untuk mencapai hal tersebut, setiap tim (atau beberapa tim) dapat membuat organisasi otonom yang terdesentralisasi ([DAO](https://ethereum.org/en/dao/)) dan mengotomatiskan distribusi atau menggunakan sistem yang lebih kompleks untuk menentukan distribusi nilai yang memadai berdasarkan faktor eksternal seperti pemungutan suara dari semua anggota DAO, atau distribusi berbasis waktu berdasarkan kontribusi yang berkelanjutan, keberhasilan menyelesaikan hadiah, dll.

### Menangani Paket  “Forks”

Kami percaya bahwa fork sangat penting dan sebagian besar kurang dimanfaatkan. Fork dapat menjadi alat yang efektif untuk mengembangkan paket yang bersaing dalam hal fungsionalitas, kinerja, keamanan, dan bahkan perhatian. Meskipun berguna, fork harus mengakui upaya-upaya awal. Melalui pekerjaan di masa depan atau kontribusi potensial, komunitas teh dapat meningkatkan sistem untuk mengharuskan fork dideklarasikan, bahkan mungkin terdeteksi ketika sebuah proyek didaftarkan. Fork yang tidak dideklarasikan yang diungkap oleh pencicip teh dapat mengakibatkan sebagian dari saham perbendaharaan fork tersebut dipotong, ditransfer ke pengelola paket asli, atau dikirim ke pencicip teh yang mengungkap fork tersebut.

### Runtime vs Ketergantungan Build

tea mungkin tidak membedakan dependensi build dari dependensi runtime saat mendistribusikan reward Proof of Contribution pada saat peluncuran. Namun, asalkan komunitas teh merasa sangat ingin membuat perbedaan seperti itu, komunitas teh dapat mengusulkan peningkatan pada algoritme distribusi hadiah untuk memperhitungkan kekritisan setiap dependensi dan kontribusinya terhadap nilai individu dari paket yang bergantung padanya. Usulan ini akan dipilih dan diimplementasikan berdasarkan keputusan komunitas.

### Imbalan Berdasarkan Penggunaan

Dengan semakin banyaknya aplikasi yang dibangun menggunakan proyek yang terdaftar di tea, komunitas dapat menambah algoritma reward sehingga alokasi dapat dipengaruhi oleh set data eksternal yang telah dibuktikan seperti penggunaan. Pembaruan pada mekanisme hadiah ini dapat memungkinkan alokasi hadiah token TEA yang lebih tinggi mengalir ke paket-paket dengan penggunaan tertinggi dengan tetap menghormati batasan rasio staking yang dijelaskan di bagian token TEA. Pengelola paket dapat menggunakan pendekatan serupa untuk mendistribusikan reward ke seluruh dependensi mereka berdasarkan logika transparan yang mereka pilih. Harap diperhatikan bahwa semua informasi yang digunakan untuk memengaruhi distribusi reward di seluruh paket dan dependensi dalam sistem teh harus dapat dibuktikan keandalannya.

## Ucapan terima kasih

Buku putih ini tidak akan ada tanpa dukungan dan dedikasi dari banyak teaophiles. Para penulis ingin mengucapkan terima kasih kepada Jacob Heider, Jadid Khan, Josh Kruger, dan Shane Molidor atas kontribusinya terhadap tokenomics, Sanchit Ram atas kontribusinya terhadap algoritma teaRank, dan banyak orang yang telah meluangkan waktu mereka untuk memberikan umpan balik terhadap isi dokumen ini.

## Daftar Istilah

| Term     | Definition                                                                                                                                                                                        |
| -------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Leaf     | Denominasi terkecil dari token TEA. Satu daun setara dengan sepersepuluh juta (10^-18) teh.                                                                                            |
| Slashing | Tindakan menghukum para pemegang saham dalam menanggapi perilaku yang bertentangan dengan aturan protokol.                                                                                                          |
| Staking  | Tindakan mengunci token TEA untuk mendukung klaim Anda dan menerima imbalan (atau penalti) berdasarkan konsensus atas keabsahan klaim Anda.                                                   |
| stTEA    | Ntoken "staked TEA" yang dapat dipindahtangankan atau "stTEA" yang diterima oleh peserta jaringan untuk setiap token yang di-stake dengan rasio 1:1. stTEA dapat digunakan untuk berpartisipasi dalam tata kelola Protokol teh |
| teaRank  | Skor dampak dinamis yang diberikan kepada setiap proyek dengan algoritma "Bukti Kontribusi" protokol.                                                                                                |

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
