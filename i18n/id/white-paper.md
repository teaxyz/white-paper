# Penafian

Informasi yang ditetapkan dalam buku putih ini bersifat pendahuluan. Oleh karena itu, baik penulis maupun afiliasinya masing-masing tidak bertanggung jawab bahwa informasi yang ditetapkan di sini adalah final atau benar dan masing-masing dari yang disebutkan di atas menyangkal, sejauh yang diizinkan oleh hukum yang berlaku, setiap dan semua tanggung jawab baik yang timbul dalam gugatan, kontrak atau sebaliknya sehubungan dengan buku putih ini. Baik buku putih ini maupun apa pun yang terkandung di sini tidak akan menjadi dasar atau diandalkan sehubungan dengan atau bertindak sebagai bujukan untuk masuk ke dalam kontrak atau komitmen apa pun.
Tidak ada dalam buku putih ini yang merupakan tawaran untuk menjual atau ajakan untuk membeli token apa pun yang dibahas di sini. Dalam hal apa pun, seandainya buku putih ini dianggap sebagai penawaran atau ajakan, tidak ada penawaran atau ajakan seperti itu yang dimaksudkan atau disampaikan oleh buku putih ini di yurisdiksi mana pun di mana hal itu melanggar hukum untuk dilakukan, di mana penawaran atau ajakan semacam itu akan memerlukan lisensi atau pendaftaran, atau di mana penawaran atau ajakan semacam itu tunduk pada pembatasan. Secara khusus, token apa pun yang dibahas di sini belum, dan, pada tanggal penerbitan buku putih ini, tidak dimaksudkan untuk didaftarkan di bawah sekuritas atau undang-undang serupa di yurisdiksi mana pun, apakah yurisdiksi tersebut menganggap token tersebut sebagai sekuritas atau instrumen serupa atau tidak dan tidak boleh ditawarkan atau dijual di yurisdiksi mana pun di mana untuk melakukannya akan merupakan pelanggaran terhadap hukum yang relevan dari yurisdiksi tersebut.


# Lisensi

Kode sumber[^src] dari makalah ini tersedia di bawah lisensi Creative Commons Attribution-ShareAlike 4.0 International[^cc].

[^src]: Lihat: @sources
[^cc]: Lihat: @cc


# Pendahuluan

Internet sebagian besar terdiri dari proyek-proyek sumber terbuka dan telah ada sejak awal. Seiring berjalannya waktu, banyak dari proyek-proyek ini telah menjadi bagian dasar di mana semua inovasi di masa depan dibangun. Dan meskipun kekayaan telah diperoleh darinya, sumber terbuka terutama dibuat dan dipelihara tanpa kompensasi.

Kami percaya bahwa keseluruhan upaya manusia modern telah terhambat dengan mengandalkan persentase terkecil dari insinyur dunia untuk memilih antara gaji atau menjaga agar Internet tetap berjalan. Sumber terbuka adalah kerja cinta yang sering kali terhalang oleh kurangnya insentif ekonomi yang berarti sehingga mengakibatkan proyek-proyek yang benar-benar berharga tidak pernah mencapai potensinya, sementara proyek-proyek lainnya menderita masalah keamanan karena kurangnya insentif untuk memelihara perangkat lunak sepanjang siklus hidupnya. Untuk sepenuhnya menyadari potensi kami, kami membutuhkan sistem remunerasi yang adil untuk ekosistem sumber terbuka yang tidak mengubah secara mendasar bagaimana ekosistem ini dibangun atau dimanfaatkan.

Perusahaan sering kali membungkus model bisnis di sekitar sumber terbuka, menghasilkan pendapatan secara langsung dari pekerjaan para pengembang yang baik hati, sementara juga mengandalkan mereka untuk memperbaiki kekutu saat terjadi masalah. Contoh yang bagus adalah insiden baru-baru ini yang melibatkan kerentanan keamanan kritis di Log4j, paket dari Apache Software Foundation yang menemukan jalannya di banyak perangkat lunak dan layanan komersial yang digunakan oleh perusahaan dan pemerintah. Pada bulan November 2021, seorang peneliti keamanan yang bekerja untuk Alibaba Group Holding Ltd. melaporkan kerentanan CVE-2021-44228[^1], yang menerima skor dasar tertinggi dari Apache Software Foundation. Amit Yoran, Kepala Eksekutif Tenable dan direktur pendiri United States Computer Emergency Readiness Team (US-CERT), menggambarkan kerentanan ini sebagai "kerentanan tunggal terbesar dan paling kritis dalam dekade terakhir"[^2]. Kepanikan pun terjadi dan beberapa relawan yang mempertahankan paket ini dikecam di depan umum karena kegagalannya. Setelah mengatasi kemarahan dengan permohonan yang rendah hati untuk keadilan, sistem diperbaiki. Perusahaan dan pemerintah akhirnya menyadari bahwa Log4j, sebuah paket yang digunakan oleh berbagai sistem penting selama dua dekade, dikelola oleh beberapa sukarelawan yang tidak dibayar, pahlawan tanpa tanda jasa yang sama yang mulai beraksi meskipun ada pelecehan dari industri[^3] dan bekerja tanpa lelah untuk mengatasi kerentanan tersebut.

Sayangnya, Log4j bukanlah satu-satunya contoh. core-js diunduh 30 juta kali per minggu sebagai dasar dari setiap aplikasi Node.js, namun juga hampir tidak didanai. Baru-baru ini beberapa pengembang inti bitcoin mengundurkan diri, dengan alasan, di antara alasan-alasan lainnya, *kurangnya kompensasi finansial* atas keputusan mereka.

Sudah ada beberapa upaya untuk menyediakan struktur insentif, biasanya melibatkan sistem dukungan dan hadiah. Dukungan memungkinkan konsumen sumber terbuka untuk menyumbang ke proyek-proyek yang mereka sukai. Namun, bayangkan sumber terbuka sebagai menara batu bata di mana lapisan bawahnya sudah lama dilupakan, tetapi masih dipertahankan oleh para insinyur yang berdedikasi dan diandalkan oleh lebih banyak pengembang. Hanya proyek-proyek di puncak menara yang biasanya dikenal dan menerima dukungan.
Pemilihan yang bias ini menyebabkan batu bata penting yang menopang menara tidak menarik sumbangan, sementara batu bata favorit menerima lebih banyak dari yang mereka butuhkan.
Hadiah memungkinkan konsumen proyek untuk mengusulkan pembayaran bagi pengembang untuk membangun fitur tertentu, sehingga hanya memberi imbalan kepada proyek untuk melakukan hal-hal yang belum tentu demi kepentingan terbaik mereka. Dan sekali lagi, hanya memberi penghargaan kepada proyek favorit.

Dalam makalah ini, kami mengusulkan tea - sistem terdesentralisasi untuk memberikan remunerasi yang adil kepada pengembang sumber terbuka berdasarkan kontribusi mereka terhadap seluruh ekosistem dan diberlakukan melalui algoritme insentif tea yang diterapkan di semua entri dalam registri tea.

![Tampilan sederhana dari sistem imbalan steeping tea.](img/figure-1.svg)

$\parskip=0pt plus 1pt$

[^1]: Sumber: @nist
[^2]: Sumber: @reuters
[^3]: Sumber: @twitter



# Komponen

Seorang pengembang perangkat lunak yang membangun aplikasi memerlukan empat hal: peramban, terminal, editor, dan manajer/pengelola paket. Dari keempat hal ini, manajer/pengelola paket adalah yang mengontrol perangkat dan kerangka kerja yang dibutuhkan pengembang untuk membangun produk mereka. Lapisan ini adalah tempat kami melihat potensi untuk mengubah bagaimana sumber terbuka diupah.

## Manajer Paket

Manajer paket mengetahui perangkat lunak sumber terbuka apa yang menjadi sandaran aplikasi untuk berfungsi, dari puncak menara hingga dasarnya. Setiap komponen dan versi yang penting bagi aplikasi diketahui dan dicatat. Ia tahu bahwa puncak menara secara hati-hati memilih ketergantungannya dan pemilihan yang cermat itu berlanjut ke bawah. Manajer paket ditempatkan secara unik dalam tumpukan alat pengembang untuk memungkinkan distribusi nilai otomatis dan tepat berdasarkan penggunaan dunia nyata yang sebenarnya.

Kami mengusulkan registri terdesentralisasi yang tidak dapat diubah yang dirancang untuk mendistribusikan nilai berdasarkan algoritma yang menentukan kontribusi setiap entri terhadap utilitas dan kesehatan sistem. Nilai dapat memasuki graf pada titik puncak --aplikasi dan pustaka penting-- dan didistribusikan ke ketergantungan titik puncak tersebut dan ketergantungannya secara rekursif karena registri mengetahui seluruh graf sumber terbuka.

Selain itu, kami percaya bahwa informasi material harus tersedia melalui manajer paket bagi pengembang untuk menilai apakah mereka dapat mempercayai suatu paket dan pembuatnya. Informasi ini mungkin didasarkan pada reputasi, pujian komunitas, data yang diambil dari sistem identitas terdesentralisasi (DID[^4]), manajer paket lainnya, atau mekanisme insentif yang berpotensi mengandalkan peserta jaringan yang menempatkan nilai ekonomi pada risiko.

Kami memprediksi bahwa kombinasi alat, informasi, dan imbalan tea akan memberikan insentif yang adil bagi para pengembang, membantu merangsang pertumbuhan perangkat lunak sumber terbuka dan mendorong inovasi.

[^4]: Lihat: @w3

## Registri yang Terdesentralisasi

Setiap manajer paket memiliki registri paketnya sendiri yang menduplikasi metadata yang sama berulang kali. Sudah waktunya ada registri tunggal, komprehensif dan definitif yang dirancang dan diatur oleh komunitas yang bergantung padanya. Registri yang terdesentralisasi dan tidak dapat diubah ini dapat memberikan keamanan, stabilitas, dan mencegah niat jahat.

Internet berjalan pada puluhan ribu komponen sumber terbuka yang vital. Sungguh luar biasa bahwa sejauh ini, insiden yang disebabkan oleh penghapusan infrastruktur sumber terbuka yang penting sangat minim. Yang paling terkenal adalah penghapusan ketergantungan NPM left-pad[^5] pada tahun 2016, yang mengalir ke dalam sistem integrasi berkelanjutan dan penyebaran berkelanjutan yang membuat pengembang menjadi tinggi dan kering selama berhari-hari. Peristiwa ini menunjukkan bahwa Internet itu sendiri didasarkan pada sistem pengembangan yang rapuh. Contoh-contoh lain melibatkan partisipasi aktif atau disengaja dari manajer/pengelola paket yang menyabotase paket populer mereka (Lihat colors.js, faker.js[^6], dan node-ipc[^7]), atau pelaku kejahatan yang mencari keuntungan dengan berpura-pura membantu memelihara paket dan merusaknya untuk mencuri, misalnya, kunci pribadi Bitcoin (Lihat event-stream[^8]), atau paket berbahaya dengan kesalahan ejaan yang disengaja, juga dikenal sebagai typosquatting, dengan harapan menipu pengguna untuk menginstalnya, misalnya paket NPM crossenv vs. cross-env[^npmjsCrossenv].

Integritas perangkat lunak perlu dijamin karena industri ini berkembang menuju masa depan di mana aset digital merupakan bagian dari perangkat lunak. Kita tidak bisa terus membiarkan diri kita rentan terhadap pelaku jahat yang memodifikasi perangkat lunak.

Sebagian besar alat yang kita sebut manajer paket tidak dapat menjamin bahwa paket-paket yang dibangun ke dalam aplikasi dan dApps adalah kode sumber terbuka yang tidak diubah yang diterbitkan oleh penulis aslinya. Microsoft GitHub telah menemukan bahwa 17% kerentanan dalam perangkat lunak ditanam untuk tujuan jahat[^9], dengan beberapa tetap tidak terdeteksi untuk waktu yang lama (Lihat Webmin 1.890[^10]).

Registri terdesentralisasi yang ditambah dengan sistem reputasi dan didukung oleh insentif ekonomi yang dirancang untuk mengekspos pelaku kejahatan dan memberi penghargaan kepada pelaku yang baik, dapat memberikan jaminan yang selama ini dicari oleh komunitas pengembang.

[^5]: Sumber: @theregister
[^6]: Sumber: @fossa
[^7]: Sumber: @lunasec
[^8]: Sumber: @github
[^npmjsCrossenv]: Sumber: @npmjsCrossenv
[^9]: Sumber: @zdnet
[^10]: Sumber: @threatpost


## Sistem Penyimpanan

Paket sumber terbuka memberikan fungsionalitas yang luas, beberapa di antaranya mungkin dibatasi atau tidak diinginkan. Enkripsi adalah contoh yang sangat baik untuk itu. Kasus penggunaan penting untuk enkripsi adalah dukungan privasi individu di seluruh dunia. Namun, enkripsi juga dapat digunakan untuk tujuan jahat (lihat Phantom Secure, dibongkar oleh lembaga penegak hukum pada bulan Maret 2018[^11]) atau dapat dikompromikan untuk mendukung kegiatan penegakan hukum (Lihat Operasi Ironside (AFP), Operasi Greenlight (Europol), dan Operation Trojan Shield (FBI)[^12] di mana FBI mengoperasikan platform komunikasi "terenkripsi", AN0M, dan meyakinkan para penjahat untuk menggunakan telepon "terenkripsi" mereka untuk komunikasi yang aman).

Aplikasi enkripsi yang luas telah membuatnya menjadi kasus penggunaan yang sempurna untuk perangkat lunak sumber terbuka dan contoh yang bagus bahwa solusi apa pun yang menyimpan paket harus tahan kerusakan dan tahan sensor. tea adalah protokol terdesentralisasi yang tidak bermaksud untuk memfilter atau memberi sanksi pada paket berdasarkan fungsinya. Sementara tata kelola tea dapat memilih untuk menghapus paket-paket yang terbukti berbahaya (lihat bagian tata kelola untuk informasi lebih lanjut), sangat penting bagi sistem tea untuk terhubung dengan beberapa sistem penyimpanan, termasuk sistem terdesentralisasi yang menunjukkan bahwa paket tidak diubah dan direplikasi dengan benar. Manajer/pengelola paket dapat memilih sistem penyimpanan yang paling sesuai dengan kebutuhan mereka untuk menyimpan dan mendistribusikan paket mereka dengan aman.

[^11]: Sumber: @fbi
[^12]: Sumber: @europol

# Peserta Jaringan

Misi tea adalah memberdayakan komunitas sumber terbuka dan memastikan kontributor mereka didukung saat mereka menciptakan alat yang membangun Internet. Dalam buku putih ini, kami membedakan peserta melalui kontribusi mereka. Beberapa mungkin menyumbangkan kode atau memverifikasi kode yang dikontribusikan. Yang lainnya mungkin memberikan nilai ekonomi untuk mendukung pengembang dan reputasinya.

## Manajer/pengelola paket

Manajer/pengelola paket harus memastikan perangkat lunak mereka terus memberikan nilai yang semakin meningkat seiring dengan perkembangan industri.

tea mengasumsikan bahwa pembuat paket mempertahankan pekerjaan mereka. Manajer/pengelola paket adalah pilar komunitas sumber terbuka yang perlu diberdayakan dan dihargai atas kontribusi mereka yang berkelanjutan. Manajer/pengelola paket dapat memutuskan untuk menghentikan upaya pemeliharaan mereka atau menyadari bahwa mereka tidak dapat beroperasi pada kecepatan yang sesuai dengan harapan pengguna paket. Manajer/pengelola paket menerima token yang tidak dapat dipertukarkan (NFT) ketika mereka menyelesaikan pengiriman paket (lihat bagian NFT pengelola untuk detail tambahan).
NFT ini digunakan untuk membuktikan pekerjaan mereka dan merupakan kunci yang mengarahkan penghargaan tea. Pemegang NFT paket dapat mentransfer kepemilikannya ke pengembang lain (atau sekelompok pengembang), sehingga menjadikan mereka manajer/pengelola paket dan penerima hadiah di masa depan. Demikian pula, seorang pengembang dapat memutuskan untuk mengambil peran sebagai pemelihara paket dengan melakukan forking paket yang ada dan mengirimkan paket baru yang akan mereka pelihara ke depan, sehingga menjadi diri mereka sendiri baik pencipta paket maupun pemelihara.

Sangat penting untuk menyediakan alat yang tepat bagi komunitas pengembang untuk menentukan paket mana yang sedang dipelihara dan reputasi serta kualitas pekerjaan para pemelihara sebelumnya dan saat ini. Kita sudah terlalu sering melihat karya sumber terbuka dirusak dan upaya banyak orang dirusak oleh pelaku kejahatan. Meskipun pekerjaan para pelaku kejahatan ini sebagian besar ditemukan dan diperbaiki, sering kali tidak sampai kerusakan signifikan telah terjadi melalui kerugian finansial atau data. Ambil contoh paket EventStream npm[^13] yang diunduh lebih dari 1,5 juta kali per minggu dan diandalkan oleh lebih dari 1.500 paket ketika seorang peretas berhasil menembus proyek sumber terbuka, mendapatkan kepercayaan dari penulis aslinya dan memodifikasi EventStream untuk bergantung pada paket berbahaya yang akan mengeksfiltrasi kredensial dompet bitcoin ke server pihak ketiga. Meskipun alat bantu dapat membantu mendeteksi beberapa serangan ini, namun tidak selalu dapat diandalkan, yang menciptakan seluruh komunitas yang bergantung pada ketekunan dan kesediaan satu sama lain untuk berbagi temuan mereka.

Kami mengusulkan untuk memperkenalkan insentif melalui token tea yang dijelaskan di bagian token tea, mendorong komunitas sumber terbuka untuk melaporkan temuan mereka secara konstruktif, sehingga manajer/pengelola paket dapat mengatasinya sebelum dieksploitasi.

[^13]: Sumber: @medium

## Pengguna Paket

Pengguna paket adalah pengembang perangkat lunak yang berfokus pada pemecahan masalah tertentu. Mereka sering mencari di komunitas sumber terbuka untuk alat yang mereka butuhkan untuk bereksperimen dengan cepat dan mengulanginya dengan biaya yang sangat sedikit atau tanpa biaya, secara langsung mendapat manfaat dari pekerjaan pembuat dan manajer/pengelola paket. Secara tradisional, sebagian mungkin telah memilih untuk mendukung manajer/pengelola paket melalui sumbangan atau bentuk remunerasi lainnya; namun, hal ini jarang terjadi.

Dukungan atau sponsorship dapat menjadi sistem yang efektif untuk mendukung pengembangan sumber terbuka; namun, remunerasi biasanya tidak mencakup semua ketergantungan. Keterbatasan ini menguntungkan favorit dan menghalangi inovasi dan pembuatan perangkat lunak. Untuk berjuang sebagai fondasi pengembangan perangkat lunak, sumber terbuka harus memberdayakan semua pengembang, baik pemula maupun ahli, di semua lapisan di menara.

Tujuan tea adalah untuk mempertahankan nilai-nilai inti dari perangkat lunak sumber terbuka sambil menyediakan sistem terdesentralisasi untuk memberi imbalan kepada manajer/pengelola paket untuk pekerjaan mereka. Untuk mewujudkan misi ini, tea bermaksud untuk mengembangkan --dan memberi insentif kepada orang lain untuk mengembangkan-- mekanisme bagi pengguna paket untuk mendukung manajer/pengelola paket melalui kasus penggunaan unik dari token tea, seperti yang dijelaskan dalam token tea dan pekerjaan di masa depan dan bagian upaya komunitas potensial.

## Pendukung dan Dukungan Paket

Di Web 2.0 dan web3, pendukung paket sering disebut "pendukung atau sponsor". Mereka adalah organisasi atau pengguna paket yang menggunakan perangkat lunak sumber terbuka untuk membangun produk komersial mereka, filantropis yang ingin mendukung ekosistem, atau pengusaha yang ingin mendanai tim untuk mengembangkan komponen dari sistem yang lebih besar.

tea mengusulkan untuk memperluas komunitas pendukung paket ke seluruh komunitas tea, baik organisasi, pengembang, pengguna, atau penggemar teknologi. Tujuan tea adalah untuk menerapkan mekanisme insentif terdesentralisasi melalui kasus penggunaan unik dari token tea untuk setiap anggota komunitas tea untuk berkontribusi pada keberlanjutan abadi dan pertumbuhan berkelanjutan dari sumber terbuka. Pendukung paket dan dukungan bebas untuk memutuskan paket atau manajer/pengelola paket mana yang ingin mereka dukung berdasarkan pekerjaan, keyakinan, atau kriteria dan metrik apa pun yang akan memengaruhi keputusan mereka. Selain itu, dukungan yang diberikan oleh pendukung paket dan dukungan akan mengalir ke dependensi setiap paket, sehingga secara implisit mempercayai manajer/pengelola paket untuk membuat pilihan yang baik tentang tumpukan mereka dan menggunakan informasi ini untuk berkontribusi pada reputasi mereka.

Asalkan manajer/pengelola paket menawarkan layanan seperti itu, pendukung paket dan dukungan dapat menerima NFT tingkat dukungan premium sebagai imbalannya, sehingga mendapat manfaat dari SLA yang dipercepat atau lisensi yang lebih fleksibel. Selain itu, pendukung paket dan dukungan dapat memutuskan untuk mendukung paket atau manajer/pengelola paket dan secara otomatis mengalihkan semua atau persentase dari hadiah mereka untuk memberi insentif kepada tim untuk membangun perangkat lunak sumber terbuka baru. Dengan kata lain, paket tidak perlu ada agar tea mulai mengalir masuk. Proyek-proyek yang baru lahir dapat didukung seperti halnya proyek-proyek yang lebih matang, yang selanjutnya mendorong lanskap sumber terbuka yang terus berkembang.

## Taster Tea

Ketika paket-paket baru atau versi baru dari paket-paket yang sudah ada dirilis, validitas pekerjaan perlu dibuktikan secara nyata. Informasi ini sangat penting bagi pengguna paket untuk memutuskan apakah akan mempercayai paket dan pengelolanya atau tidak. Dengan protokol tea, fungsi ini disediakan oleh taster tea.

Taster tea, biasanya, adalah pengembang perangkat lunak berpengalaman yang bersedia mendedikasikan sebagian waktu mereka untuk memeriksa klaim yang terkait dengan paket (fungsionalitas, keamanan, versi semantik[^14], akurasi lisensi, dll.) dan mempertaruhkan reputasi dan nilai ekonomi mereka untuk menunjukkan hasil penelitian dan analisis mereka dan mendukung ulasan mereka. taster tea menerima penghargaan atas ketekunan dan upaya mereka. Di tea, kami menyebut "seduh tea Anda" tindakan mengunci token tea untuk mendukung ulasan Anda dan menerima imbalan (atau hukuman) berdasarkan konsensus tentang validitas ulasan Anda.

Seperti pendukung paket, taster tea dapat mempengaruhi reputasi paket dan manajer/pengelola paket; Namun, dampaknya lebih signifikan mengingat peran mereka dalam memvalidasi keamanan, fungsionalitas, dan kualitas paket. taster tea juga perlu membangun reputasi mereka untuk mendukung klaim mereka. Kualitas pekerjaan mereka dan nilai ekonomi yang mereka pertaruhkan saat mereka mendalami ulasan mereka yang dikombinasikan dengan sumber data eksternal lainnya akan membangun reputasi setiap taster tea, sehingga memberikan nilai lebih pada pekerjaan mereka. Lihat bagian reputasi paket untuk rincian lebih lanjut tentang mekanisme yang digunakan untuk mempengaruhi reputasi paket dan manajer/pengelola paket.

[^14]: Lihat: @semver

# Ikhtisar Protokol

Desain protokol untuk menghargai kontribusi sumber terbuka penuh dengan tantangan. Perangkat lunak sumber terbuka secara definisi terbuka untuk semua orang dan dapat, sebagai akibatnya, menjadi sasaran salah kutip, perampasan, atau gangguan jahat. Namun demikian, komunitas sumber terbuka secara konsisten menunjukkan kesediaannya untuk menyoroti pelaku yang baik dan mengekspos pelaku yang buruk. Secara historis, energi yang dihabiskan untuk meninjau dan mengomentari kontribusi pengembang lain sangat sukarela, meskipun pelaporan dan pembelaan temuan mungkin memakan waktu dan sangat penting.

Kami bermaksud menciptakan platform distribusi tanpa kepercayaan untuk aplikasi yang dijamin oleh reputasi dan insentif keuangan, karena kami percaya bahwa imbalan yang memadai untuk kontribusi sumber terbuka tidak dapat berhasil tanpa sistem reputasi dan kemampuan bagi anggota komunitas untuk mengkomunikasikan temuan dan dukungan mereka (atau perbedaan pendapat) untuk paket atau karya pengembang.

Kita harus menyediakan alat bantu bagi para pengembang untuk mengakses dan berkontribusi pada sistem reputasi ini. Alat yang mencakup akses visual sederhana dan dapat diprogram ke versi dan reputasi semua dependensi dalam paket mereka. Pemahaman yang jelas tentang anggota komunitas mana yang mendukung setiap paket dan berapa banyak token tea yang mereka seduh akan berkontribusi pada reputasi setiap paket, seperti halnya seberapa banyak manajer/pengelola paket yang steeping pekerjaan mereka mengkomunikasikan seberapa besar mereka mendukung pekerjaan mereka. Gabungan poin data ini akan membantu menginformasikan sistem reputasi untuk semua anggota komunitas dan memfasilitasi pilihan. Karena peretasan paket EventStream tidak dilakukan melalui paket itu sendiri, tetapi melalui salah satu dependensinya, visibilitas di semua lapisan dependensi akan sangat penting untuk membangun sistem tanpa kepercayaan ini. Namun demikian, pertimbangan seperti biaya komputasi dan transaksi ("gas") perlu diprioritaskan saat sistem dirancang dan dibangun.

Tujuan kami adalah untuk memberikan penghargaan kepada pengembang Web 2.0 dan web3. Seluk-beluk dan spesifikasi dari setiap tumpukan membuatnya sehingga pelacakan instalasi dan penghapusan instalasi paket bisa dengan mudah menjadi korban satu atau lebih pelaku kejahatan. Itu termasuk "membeli" instalasi untuk menggelembungkan angka secara artifisial. Skenario yang lebih buruk lagi adalah memperkenalkan perubahan mendasar pada sifat perangkat lunak sumber terbuka dengan menciptakan gesekan yang tidak perlu dengan kunci lisensi atau mekanisme pelacakan penyebaran lainnya. Untuk memberikan cakupan yang paling luas, kami percaya bahwa imbalan tidak boleh bergantung pada gagasan sederhana tentang pelacakan instalasi atau penghapusan instalasi, tetapi lebih pada mekanisme insentif yang mendorong penyerahan paket berkualitas dan pelaporan paket yang jahat atau berisiko tinggi. Terakhir, banyak paket yang bergantung pada dependensi umum. Sebagai contoh, Lodash memiliki 151.209 tanggungan[^15] sementara kapur memiliki 78.854 tanggungan[^16] atau Log4js memiliki 3.343 tanggungan[^17]. Karena semakin banyak paket yang dibuat menggunakan dependensi yang sama, bagaimana kita memastikan bahwa insentif didistribusikan secara adil dan merata? Bagaimana kita memastikan bahwa ketergantungan yang paling banyak digunakan dihargai tanpa membuat paket dan pengembang baru atau yang baru muncul kelaparan? Bagaimana kita memastikan bahwa sistem insentif tidak berakhir dengan menjauhkan para pengembang dari bahasa-bahasa khusus untuk memusatkan mereka di mana insentifnya lebih baik? Tetapi juga, sebagai pengembang, bagaimana kita mengidentifikasi paket-paket dengan ketergantungan paling banyak untuk membangun alternatif - versi paket-paket ini yang lebih ramping, lebih efisien, dan dikodekan dengan lebih baik? Di tea, kami percaya bahwa kurangnya insentif telah menghambat evolusi perangkat lunak sumber terbuka. Didukung oleh insentif dan penghargaan ekonomi yang tepat, lebih banyak pengembang akan berada dalam posisi untuk membangun, meningkatkan dan menambah perangkat lunak sumber terbuka untuk kemajuan dunia.
Hanya dengan demikian, token tea akan dapat mewakili nilai total perangkat lunak sumber terbuka.

[^15]: Sumber: @npmjsLodash
[^16]: Sumber: @npmjsChalk
[^17]: Sumber: @npmjsLogFourjs

## Pengajuan Paket

Penyerahan rilis paket memerlukan beberapa transaksi untuk terjadi secara atomik. Secara khusus, manajer/pengelola paket harus:

* Daftarkan paket (dan versi semantiknya) dengan registri terdesentralisasi.
* Unggah paket ke dalam sistem penyimpanan terdesentralisasi untuk ketangguhan, ketahanan sensor, dan kemudahan distribusi.
* Berkontribusi pada reputasi dan kepercayaan paket dengan *steeping* token tea.

Kegagalan salah satu dari ketiga operasi tersebut akan mengakibatkan protokol kembali ke keadaan sebelumnya, sehingga menghilangkan bukti penyerahan.

Ketika sebuah paket berhasil dikirimkan, manajer/pengelola paket akan menerima NFT pengelola untuk membuktikan pekerjaan dan kontribusi mereka terhadap sumber terbuka. Manajer/pengelola paket dapat mentransfer imbalan seduhan yang terkait dengan NFT pengelola kepada pihak ketiga. Namun, reputasi yang terkait dengan pembuatan dan pemeliharaan aset akan tetap ada pada manajer/pengelola paket, sehingga reputasi mereka dapat terpengaruh dari waktu ke waktu. Ketika reputasi setiap anggota komunitas tea mencapai tonggak utama, mereka dapat diberikan akses ke bagian protokol yang lebih tinggi atau menerima hadiah yang dipercepat, seperti yang diputuskan oleh tata kelola tea. Untuk detail lebih lanjut mengenai NFT pengelola, lihat bagian NFT pengelola.

### Analisis Ketergantungan

Ketergantungan paket bisa sangat dalam, karena setiap paket sering kali memiliki tanggungan dan ketergantungan. Untuk menyediakan metodologi sederhana yang memberikan penghargaan kepada semua pengembang yang telah berkontribusi pada perangkat lunak sumber-terbuka sambil menjaga agar pembuatan pohon ketergantungan tetap cepat dan efisien secara komputasi, kami mengusulkan untuk memverifikasi hanya ketergantungan tingkat pertama pada saat penyerahan paket.

Desain ini didorong oleh hipotesis bahwa setiap ketergantungan itu sendiri merupakan paket yang secara independen diserahkan ke pohon tea. Dengan demikian, setiap dependensi dapat dipetakan, dan jika dependensinya memiliki dependensi itu sendiri, maka akan dipetakan pada saat paket dependensi diserahkan.

![Diagram analisis ketergantungan.](img/figure-3.svg){#fig:dep-analysis}


Dalam @fig:dep-analysis, penyerahan paket A memicu analisis ketergantungan runtime 1 sampai n dan membangun ketergantungan 1 sampai n, sementara ketergantungan runtime 1.1 sampai 1.n dan membangun ketergantungan 1.1 sampai 1.n dianalisis ketika paket B diserahkan. Kami akan menerapkan metodologi yang sama untuk distribusi insentif karena token curam didistribusikan di semua dependensi, sehingga secara rekursif curam paket yang terdaftar sebagai dependensi (lihat @fig:steeping-rewards).

![Distribusi imbalan yang curam di seluruh ketergantungan.](img/figure-2.svg){#fig:steeping-rewards}


Versi dan ketergantungan yang saling bertentangan merupakan tantangan yang signifikan, dan pemecahan masalahnya bisa menguras waktu yang sangat besar. Untuk mengatasi hal ini, kami mengusulkan setiap paket menjadi subjek pemindaian ketergantungan yang komprehensif pada saat pengiriman sehingga kami dapat memastikan bahwa paket tersebut sesuai dengan aturan berikut untuk rentang versi semantik.

* Paket hanya dapat membatasi ketergantungan mereka ke versi mayor, meskipun awal rentang dapat berupa versi semantik yang valid (misalnya, >=5.2.1 <6).
* Jika ketergantungan ditingkatkan ke versi mayor yang lebih baru, tea mungkin mengharuskan versi mayor paket ditingkatkan.
* Demikian pula, jika ketergantungan diupgrade ke versi minor yang lebih baru, tea mungkin mengharuskan versi minor paket ditingkatkan.
* Jika ketergantungan baru ditambahkan, tea mungkin mengharuskan versi minor paket ditingkatkan.

Mempertimbangkan upaya yang tidak perlu yang dikenakan pada setiap pengguna paket ketika aturan di atas dilanggar, kami mengusulkan agar sebagian dari token tea yang diseduh oleh manajer/pengelola paket dipotong untuk mencerminkan kurangnya ketekunan mereka. Jika pengembang memaksa semua orang untuk menyulap cangkir mereka, seseorang akan menumpahkan tea. Karena pemindaian ketergantungan diharapkan terjadi pada saat penyerahan, kita harus mencatat bahwa tidak ada seduhan dari pendukung paket dan dukungan atau taster tea yang akan terjadi.

## Paket & Reputasi Pemelihara Paket

Manajer/pengelola paket harus berkontribusi pada reputasi dan kepercayaan paket mereka dengan steeping token tea. Namun demikian, sistem reputasi yang hanya mengandalkan kontribusi ekonomi penulis tidak memberikan perlindungan pengguna yang memadai dan dapat menjadi sasaran serangan Sybil, di mana satu individu menciptakan beberapa representasi diri mereka sendiri untuk meninggalkan sejumlah besar ulasan positif pada karya mereka, menipu pengguna agar percaya bahwa karya mereka telah ditinjau dan disetujui oleh banyak orang.

Beberapa metodologi tersedia untuk mencegah serangan Sybil, beberapa di antaranya dijelaskan oleh Nitish Balachandran dan Sugata Sanyal dalam "A Review of Techniques to Mitigate Sybil Attacks"[^18].
Karena tea adalah protokol terdesentralisasi, menggunakan sistem sertifikasi kepercayaan yang bergantung pada otoritas penerbitan sertifikat terpusat akan bertentangan dengan intinya. Kami mengusulkan untuk fokus pada pendekatan terdesentralisasi untuk mitigasi serangan Sybil dan, lebih khusus lagi, pada metodologi yang bergantung pada sekelompok besar peserta jaringan yang diberi insentif untuk menilai dan secara publik mewakili reputasi setiap paket dan pemeliharanya.

Mirip dengan produksi blok pada blockchain proof-of-stake, di mana node yang tidak memproduksi dapat memvalidasi pekerjaan orang lain dan, bila perlu, menyoroti pelanggaran aturan jaringan, yang mengarah pada hukuman bagi aktor jahat melalui pemotongan (penghancuran sebagian dari saham mereka), kami mengusulkan sistem di mana pihak ketiga (alias taster tea) akan dapat meninjau paket yang diproduksi oleh manajer/pengelola paket dan diberi insentif ekonomi untuk berperilaku demi kepentingan terbaik komunitas perangkat lunak sumber terbuka dan penggunanya serta mengenali perilaku yang baik dan menghukum perilaku buruk. Sistem ini harus tahan terhadap Sybil dan mencegah pemegang token besar mempengaruhi protokol atau reputasi paket tertentu secara material. Kami percaya bahwa pendekatan ini lebih selaras dengan sumber terbuka, menyediakan substrat yang lebih subur untuk mendorong adopsi dan kepercayaan, dan pada akhirnya memfasilitasi pertumbuhan tea.

[^18]: Sumber: @arxiv

## Tinjauan Paket oleh Pihak Ketiga

Peninjauan paket oleh pihak ketiga merupakan komponen penting dalam membangun reputasi, namun, peninjauan pihak ketiga memiliki serangkaian ancaman uniknya sendiri termasuk serangan Sybil yang disebutkan di atas.

Teknologi Blockchain, dan lebih eksplisit lagi mempertaruhkan, menawarkan kesempatan unik bagi tea untuk mengatasi tantangan ini. Meskipun alamat dompet mungkin tersedia dalam jumlah yang tak terbatas, namun tidak demikian halnya dengan token tea, yang pasokan awalnya diperkirakan 10 miliar. Selain itu, setiap tindakan yang dilakukan oleh pengembang, seperti mengirimkan paket, memverifikasi paket, atau steepingnya, akan berkontribusi pada reputasi mereka, sehingga menciptakan profil unik yang dapat digunakan setiap pengembang untuk berkontribusi pada komunitas tea dan berpartisipasi dalam tata kelola tea.

Dengan mengharuskan pengulas pihak ketiga untuk steeping token tea dan menanggung risiko kehilangan sebagian dari token curam mereka jika mereka ternyata berperilaku bertentangan dengan kepentingan jaringan atau menjadi aktor yang buruk, pihak ketiga dapat memberikan kredibilitas tambahan pada suatu paket dan menerima hadiah, dalam bentuk token tea.

Kami juga mengusulkan perluasan sistem reputasi kepada pihak ketiga yang melakukan verifikasi independen terhadap paket - para taster tea. Penyelesaian tinjauan positif akan memerlukan dua operasi yang terjadi secara atomik:

* Penyerahan tinjauan kode, ditandatangani oleh taster tea dan dapat diakses secara publik oleh semua anggota komunitas, bersama dengan
* Tindakan steeping "untuk" paket (vs. "menentang" paket), untuk memperkuat ulasan mereka.

Penyelesaian tinjauan negatif yang mencakup satu atau lebih kerentanan kritis akan mengharuskan taster tea terlebih dahulu menghubungi manajer/pengelola paket menggunakan protokol perpesanan untuk memberi tahu mereka tentang kerentanan dan memungkinkan mereka untuk mengatasi masalah tersebut secara tepat waktu. Setelah berakhirnya periode tata kelola yang ditentukan yang dialokasikan untuk manajer/pengelola paket untuk mengatasi kerentanan mereka atau saat paket yang dikoreksi tersedia, protokol pengiriman pesan yang sama akan digunakan untuk memberi tahu semua pengguna dan penguji paket ini (termasuk tanggungan) bahwa kerentanan telah diidentifikasi,
dan mudah-mudahan ditangani, sehingga mereka tahu untuk memperbarui aplikasi atau dependensi mereka. Untuk mencegah pemborosan waktu pengembang, komunikasi antara taster tea dan manajer/pengelola paket akan mengharuskan taster tea untuk steeping token tea.

Setelah menyelesaikan kedua operasi tersebut, para taster tea akan menerima NFT sebagai bukti pekerjaan mereka pada paket dan versi paket tertentu. Akumulasi NFT yang dikombinasikan dengan rasio seduhan dari masing-masing paket yang ditinjau dan informasi yang diekstraksi dari sistem eksternal akan menginformasikan reputasi taster tea. Saat reputasi mereka mencapai tonggak utama, taster tea bisa mendapatkan akses ke bagian protokol yang lebih tinggi atau hadiah yang dipercepat, seperti yang diputuskan oleh tata kelola tea.

## Paket yang Sudah Usang atau Rusak

Misi tea adalah untuk memberi penghargaan kepada kontributor dan peserta dalam komunitas sumber terbuka; namun, penghargaan harus sepadan dengan upaya yang dikerahkan oleh manajer/pengelola paket dan taster tea. Paket yang kurang terpelihara, ketinggalan jaman, atau rusak adalah indikasi yang jelas dari manajer/pengelola paket yang tidak memenuhi harapan komunitas atau tidak memberikan kepercayaan dan dukungan yang terkesan pada mereka melalui seduhan paket. Manifestasi lain dari paket yang sudah ketinggalan zaman mungkin adalah penggunaan bahasa lama atau versi lama dari bahasa multi-versi. Paket-paket yang tetap usang atau rusak terlalu lama menunjukkan bahwa taster tea perlu meninjau pekerjaan manajer/pengelola paket secara teratur dan konsisten.

taster tea adalah anggota penting dari komunitas sumber terbuka karena ulasan mereka dan klaim yang terkait dapat mengarahkan pengguna paket ke arah atau menjauh dari paket. Untuk memastikan bahwa ulasan dapat dipercaya secara berkelanjutan, kami mengusulkan mekanisme di mana paket yang sudah usang atau rusak dapat melihat sebagian dari token curam mereka dikirim ke taster tea yang pertama kali mengenali kurangnya pemeliharaan paket apa pun.

Setiap tinjauan negatif yang menguraikan cacat seperti kerentanan zero-day atau penggunaan ketergantungan yang sudah ketinggalan zaman dan tetap terbuka melewati masa tenggang yang ditentukan oleh tata kelola harus dianggap sebagai kegagalan di pihak manajer/pengelola paket. Mereka belum menyelesaikan tugas yang dipercayakan kepada mereka dan dihargai. Hal yang sama dapat dikatakan untuk pendukung paket dan dukungan yang mempertaruhkan reputasi mereka pada pekerjaan manajer/pengelola paket yang nakal dan menerima imbalan untuk itu, tetapi gagal mengidentifikasi kurangnya pemeliharaan atau memilih untuk terus mendukung paket terlepas dari itu.

Karena paket mendapatkan popularitas dan penggunaan, dengan lebih banyak aplikasi dan sistem yang berpotensi sangat penting bergantung pada mereka, kita harus memberi insentif kepada pengembang untuk secara diam-diam melaporkan kekurangan kepada manajer/pengelola paket dan manajer/pengelola paket untuk mengatasi kekurangan tersebut sebelum mereka dapat dieksploitasi. Akibatnya, kami mengusulkan agar setiap paket usang atau rusak yang tunduk pada satu atau lebih ulasan negatif yang terbukti dan tetap dalam keadaan seperti itu melewati masa tenggang yang ditentukan oleh tata kelola, sebagian token curamnya akan dipotong terlepas dari asalnya (manajer/pengelola paket, pendukung paket, dan dukungan atau taster tea sebelumnya), sementara sebagian lagi dikirim ke taster tea yang mengirimkan ulasan negatif. Distribusi ke semua taster tea bisa didasarkan pada usia ulasan mereka dan jumlah token tea yang mereka seduh untuk ulasan mereka.

## Pengelola NFT

Setelah berhasil mengirimkan paket, manajer/pengelola paket akan menerima NFT untuk membuktikan pekerjaan dan kontribusi mereka. Pemegang NFT ini akan secara otomatis menerima semua hadiah yang terkait dengan paket. Manajer/pengelola paket dapat mentransfer kepemilikan pemeliharaan atas suatu paket ke manajer/pengelola paket lain hanya dengan mentransfer NFT paket.
Keberhasilan transfer NFT akan menyebabkan pemilik baru secara otomatis menerima hadiah paket di masa mendatang.

Bagian penting dari pembangunan reputasi bergantung pada frekuensi dan kuantitas pengiriman paket berkualitas. NFT yang dikirimkan ke manajer/pengelola paket sebagai bukti pekerjaan mereka dapat digunakan oleh sistem reputasi untuk memperbarui reputasi manajer/pengelola paket dan memberi mereka akses ke bagian protokol yang ditinggikan, seperti yang diputuskan oleh tata kelola tea. Namun, untuk mencegah vektor serangan, seperti anggota komunitas membeli reputasi mereka, transfer NFT pengelola tidak akan menghasilkan transfer reputasi. Reputasi harus tetap terkait langsung dengan karya pengembang tertentu dan tidak boleh dipindahtangankan.

# Token Tea

## Mengamankan Jaringan

Sementara banyak blockchain mungkin muncul sebagai solusi infrastruktur yang efektif dan aman untuk mendukung tujuan tea, kami percaya bahwa pertimbangan yang cermat harus diberikan pada tumpukan teknologi di mana sistem tea dibangun.

Skalabilitas, efektivitas biaya, ESG, dan ekstensibilitas pihak ketiga adalah pertimbangan desain penting yang dapat dilayani dengan lebih baik oleh sistem bukti kepemilikan tea. Dalam proof-of-stake, operator node dan peserta jaringan mempertaruhkan nilai ekonomi dalam bentuk token asli rantai untuk meningkatkan keamanan sistem. Operator node dan peserta jaringan menerima imbalan atas keberhasilan produksi blok yang mematuhi aturan jaringan dan menyertakan informasi transaksi yang akurat. Ketidakaktifan (alias node down) atau aktivitas jahat / salah dihukum dengan menghancurkan sebagian kecil token yang dipertaruhkan melalui pemotongan.

Sistem bukti kepemilikan yang didukung oleh token tea akan memungkinkan pemegang token tea untuk berkontribusi pada keamanan sistem dengan *mengambil* tea dan mendukung pengembang sumber terbuka dengan *steeping* tea. Kami sepenuhnya menyadari bahwa faktor ekonomi dapat mencegah beberapa pengembang untuk mengintai atau steeping tea; dengan demikian, mengintai dan steeping akan tersedia hanya dengan satu lembar daun, denominasi terkecil tea yang mewakili seperseratus juta ($10^{-8}$) tea.

Kedua aplikasi token tea melayani fungsi vital dalam mendukung dan menumbuhkan ekosistem sumber terbuka. Mempertaruhkan tea akan memastikan bahwa sistem tea terus beroperasi dengan aman, sehingga semua peserta jaringan dapat mengirimkan dan mengakses paket untuk memeriksanya, mengintegrasikannya ke dalam aplikasi mereka, dll. Sebaliknya, seduhan tea akan mendukung tujuan tea untuk menyediakan alat bagi semua peserta jaringan untuk mendukung dan menggunakan paket yang memenuhi persyaratan kualitas dan ketergantungan, seperti yang dirumuskan oleh komunitas tea melalui dukungan dan perbedaan pendapat mereka terhadap setiap paket. Kehati-hatian akan dilakukan ketika mendefinisikan dan mengimplementasikan parameter mempertaruhkan dan steeping, sehingga yang satu tidak menjadi parasit bagi yang lain.

## Insentif dan Penalti

Seperti yang telah dibahas sebelumnya, bisa jadi ada insentif yang kuat bagi pelaku kejahatan untuk mengkompromikan perangkat lunak sumber terbuka. Mayoritas infrastruktur penting Internet berjalan pada sumber terbuka, dan perlombaan untuk menemukan eksploitasi dan kerentanan lainnya sedang berlangsung. Di tea, kami percaya bahwa manajer/pengelola paket bukanlah orang yang harus disalahkan (meskipun mereka sering disalahkan).

Insentif protokol tea memperbaiki hal ini melalui distribusi insentif yang adil dan merata. Paket seperti Lodash dengan lebih dari 151 ribu dependen adalah pilar pengembangan sumber terbuka, dan pengelolanya layak diberi penghargaan secara proporsional. Namun, sistem penghargaan yang dibangun semata-mata pada jumlah tanggungan akan mencegah inovator mengganggu monopoli ini kecuali mereka cukup didanai oleh pihak ketiga atau telah mengumpulkan sumber daya yang cukup untuk mendanai diri sendiri. Pendekatan ini kemungkinan besar akan menyebabkan menyusutnya jumlah kontributor, sehingga menghasilkan kebalikan dari apa yang dimaksud dengan tea.

Tujuan tea adalah untuk mewakili nilai perangkat lunak sumber terbuka dan, dengan demikian, mendorong pertumbuhannya dengan memberdayakan para pesertanya dengan sumber daya yang mereka butuhkan untuk mengejar hasrat mereka tanpa terbebani. Sistem distribusi insentif tea perlu mempertimbangkan dengan cermat rasio seduhan setiap paket dan menyesuaikan insentif setiap paket dengan tepat. Untuk mengurangi risiko sejumlah kecil paket yang digunakan sebagai dependensi di banyak aplikasi yang mengumpulkan sebagian besar reward steeping, kami akan memanfaatkan penelitian yang dihasilkan oleh web3 Foundation[^19] untuk mekanisme reward berbasis bukti kepemilikan Polkadot. Kita bisa menyesuaikan lebih lanjut implementasi dan variabel-variabelnya berdasarkan hasil eksperimen praktis.

Saat paket curam mendekati rasio curam optimal yang ditentukan oleh tata kelola, rasio imbalan curamnya akan menurun secara progresif. Ketika sebuah paket melebihi rasio seduhan optimalnya, rasio imbalan seduhan akan menurun tajam untuk menghilangkan insentif bagi pendukung paket dan taster tea dari seduhan lebih lanjut paket yang sangat curam. Desain ini dapat memungkinkan paket yang kurang diseduh menjadi lebih menarik bagi pendukung paket dan taster tea. Hal ini juga dapat memberi insentif bagi para pengembang berpengalaman untuk membangun alternatif bagi paket yang sangat canggih, menciptakan peluang bagi komunitas tea untuk menyeimbangkan antara mendukung perangkat lunak yang sudah ada dan mempromosikan inovasi. Rasio steeping akan dihitung dengan menggunakan suplai sirkulasi dalam desain awalnya. Komunitas tea dapat mengubah desain ini untuk meningkatkan skalabilitas sistem lebih lanjut. Biarkan $\chi$ menjadi rasio seduhan di semua paket. Ini mewakili jumlah total token tea yang diseduh oleh manajer/pengelola paket, pengguna paket, pendukung dan dukungan paket, dan taster tea dibagi dengan total pasokan token tea. Mengingat banyaknya paket sumber terbuka yang tersedia saat ini dan pertumbuhan yang diharapkan, $\chi$ akan selalu menjadi nilai yang sangat kecil antara $0$ dan $1$.

Biarkan $\psi$ menjadi rasio mempertaruhkan. Ini mewakili jumlah total token tea yang dipertaruhkan oleh setiap peserta jaringan untuk mengamankan jaringan.

Biarkan $\chi_{ideal}$ menjadi rasio steeping yang kita ingin setiap paket untuk mencapai distribusi imbalan yang adil di semua paket dan ketergantungan mereka. Nilai $\chi_{ideal}$ harus diperbarui saat paket baru ditambahkan ke registri terdesentralisasi, dan dependensi dibuat. Untuk menentukan nilai terbaik untuk $\chi_{ideal}$, kita akan menggunakan kurva lonceng popularitas yang diperbarui pada awal setiap siklus hadiah.

Biarkan $\tau = \tau(\chi)$ menjadi tingkat bunga seduhan tahunan yang didistribusikan ke semua anggota komunitas tea yang steeping token tea untuk mendukung pengembang sumber terbuka. Dengan kata lain, $\tau(\chi)$ sesuai dengan imbalan seduhan yang diterima selama setahun oleh anggota komunitas yang steeping token tea selama setahun penuh.

Biarkan $\gamma = \gamma(\psi)$ menjadi tingkat bunga mempertaruhkan tahunan yang didistribusikan ke semua operator node dan peserta jaringan yang mempertaruhkan token tea untuk mengamankan jaringan. Dengan kata lain, $\gamma(\psi)$ sesuai dengan hadiah taruhan yang diterima selama setahun oleh anggota komunitas yang mempertaruhkan token tea selama setahun penuh.

Biarkan $\delta$ menjadi inflasi tahunan yang diarahkan pada perbendaharaan jaringan. $\delta$ dapat bervariasi karena faktor eksternal mempengaruhi pasokan token.

Kami mempertimbangkan tingkat imbalan steeping tahunan sebagai fungsi dari $\chi$ dan tingkat imbalan mempertaruhkan tahunan sebagai fungsi dari $\psi$.

* $\tau(\chi)$ sesuai dengan insentif bagi orang untuk mencuri paket. Ketika $\chi$ meningkat, lebih sedikit imbalan $\tau(\chi)$ yang dibutuhkan.
* $\gamma(\psi)$ sesuai dengan insentif bagi orang untuk mempertaruhkan jaringan. Ketika $\psi$ meningkat, lebih sedikit imbalan $\gamma(\psi)$ yang dibutuhkan untuk mengamankan jaringan.

Inflasi tahunan $I$ akan setara dengan $(\tau + \gamma + \delta)$ dan dihitung sebagai berikut:

$$
I = \frac{\textrm{pasokan token pada akhir tahun} - \textrm{pasokan token pada awal tahun}}{\textrm{pasokan token pada awal tahun}} = (\tau + \gamma + \delta)
$$

Kontribusi terhadap inflasi $\tau_{\textsc{all}}$ (insentif yang didistribusikan ke semua paket steeper) dan $\gamma_{\textsc{all}}$ (insentif yang didistribusikan ke semua kontributor keamanan jaringan) harus ditimbang untuk memastikan bahwa sistem memberi insentif pada rasio steeping/mempertaruhkan yang optimal.

Karena kami fokus pada insentif yang didistribusikan di semua paket steepers, kami menentukan bahwa $\tau_{\textsc{all}}$ adalah fungsi dari rasio steeping $\chi$ dan oleh karena itu $\tau_{\textsc{all}}(\chi) = \chi \cdot \tau(\chi)$. Dari analisis kami sebelumnya, kita bisa melihat bahwa $\tau_{\textsc{all}}(\chi_{ideal}) = \chi_{ideal} \cdot \tau_{ideal}$. Karena tujuannya adalah untuk mencapai keadaan di mana $\chi = \chi_{ideal}$, penghargaan $\tau_{ideal}(\chi)$ harus maksimal pada nilai itu.

Biarkan $\tau_{ideal} = \tau(\chi_{ideal})$ menjadi reward rate yang dikirimkan oleh jaringan pada skenario ideal di mana $\chi = \chi_{ideal}$.

Biarkan $\tau_{0}$ menjadi batas dari $\tau_{\textsc{all}}(\chi)$ sebagai $\chi$ menuju nol ketika tidak ada anggota komunitas tea yang mencuri paket apapun. Nilai $\tau_{0}$ harus mendekati nol tetapi bukan nol untuk memberi insentif kepada pengadopsi awal. Seperti yang disarankan oleh penelitian web3 Foundation, kami mengusulkan bahwa:

* Fungsi inflasi tumbuh secara linear antara $\chi = 0$ dan $\chi = \chi_{ideal}$, dan
* itu meluruh secara eksponensial antara $\chi = \chi_{ideal}$ dan $\chi = 1$.

Kami memilih penurunan eksponensial yang serupa untuk $\tau_{\textsc{all}}(\chi)$ karena hal ini mengimplikasikan penurunan eksponensial dari $\tau(\chi)$, dan kami ingin reward turun tajam melebihi $\chi_{ideal}$ untuk mencegah satu paket menerima semua reward.

Peluruhan didefinisikan sehingga tingkat inflasi menurun paling banyak 50% ketika $\chi$ bergeser $d$ unit ke kanan $\chi_{ideal}$ - yaitu $\tau_{\textsc{all}}(\chi_{ideal} + d) \geq \tau_{\textsc{all}} \cdot 0.5$.

Kami mengusulkan fungsi suku bunga dan tingkat inflasi berikut, yang bergantung pada parameter $\chi_{ideal}$, $\tau_{ideal}$, $\tau_{0}$ dan $d$.

\begin{align*}&\tau_{\textsc{all}}(\chi) = \tau_{0} + (\tau_{\textsc{all}}(\chi_{ideal}) - \tau_{0})\frac{\chi}{\chi_{ideal}}\enspace\textrm{for}\;0 < \chi \leq \chi_{ideal} \\
&\tau_{\textsc{all}}(\chi) = \tau_{0} + (\tau_{\textsc{all}}(\chi_{ideal}) - \tau_{0}) \cdot 2^{(\chi_{ideal}-\chi)/d}\enspace\textrm{for}\;\chi_{ideal} < \chi \leq 1
\end{align*}

Sama seperti pelaku yang baik perlu diberi penghargaan; pelaku yang buruk perlu diidentifikasi dan dihukum. Perangkat lunak sumber terbuka memberikan banyak peluang bagi pelaku kejahatan untuk menciptakan titik sakit dan risiko reputasi bagi seluruh komunitas pengembang. Dari penyalahgunaan pekerjaan hingga perubahan dan redistribusi paket perangkat lunak, atau injeksi kode jahat, perang antara aktor baik dan buruk terus berlanjut, seringkali dengan aktor jahat yang didanai dengan baik yang melihat kontaminasi paket sumber terbuka sebagai peluang untuk mendapatkan keuntungan finansial. Sisi negatifnya relatif minimal, dengan paket yang berpotensi dilarang dari rak digital atau mengalami reputasi buruk.

Kami mengusulkan untuk memperkenalkan mekanisme pemotongan untuk menetapkan kerugian yang lebih material yang secara langsung mempengaruhi nilai ekonomi pelaku kejahatan. Saat taster tea mengevaluasi dan menganalisis kode dalam paket yang baru diserahkan, kami menyarankan taster tea menerima alat dan insentif untuk menunjukkan dan menyoroti kode jahat sehingga pengguna paket dapat dibuat sadar akan risikonya, dan pemelihara paket, pendukung paket, dan dukungan dihukum karena mengirimkan atau mendukung kode jahat. Sejauh itu, untuk semua ulasan negatif yang terbukti dilakukan sesuai aturan jaringan dan yang telah ditangani oleh manajer/pengelola paket dalam periode yang ditentukan tata kelola, manajer/pengelola paket tidak boleh dikenakan penalti apa pun yang bertentangan dengan pendukung dan dukungan paket atau taster tea yang memberikan ulasan positif dari paket yang dimaksud. Untuk ulasan negatif yang dilakukan sesuai dengan aturan jaringan dan bahwa manajer/pengelola paket belum ditangani dalam periode yang ditentukan tata kelola, sebagian kecil dari token yang direndam oleh manajer/pengelola paket, pendukung dan dukungan paket, dan taster tea sebelumnya akan dipotong. Sebagian kecil lainnya akan dikunci ke dalam kolam asuransi yang dikendalikan oleh pemerintahan tea. Tata kelola tea akan menetapkan kebijakan dan aturan dalam kolaborasi erat dengan komunitas untuk mendistribusikan isi pool kepada mereka yang terkena dampak kerentanan. Protokol ini akan mendistribusikan sepertiga bagian dari token yang diseduh ke semua taster tea yang berkontribusi pada ulasan negatif dan steeping terhadap paket, berdasarkan jumlah token tea yang mereka seduh "terhadap" paket dan berapa lama token mereka telah diseduh. Dengan kata lain, semakin cepat satu atau lebih taster tea mengidentifikasi dan melaporkan cacat sesuai dengan aturan jaringan, semakin tinggi imbalan yang akan mereka dapatkan untuk mendukung pengembangan sumber terbuka yang aman dan produktif.

Untuk mencegah anggota komunitas secara acak memberikan suara "menentang" paket yang sangat curam dengan harapan menerima sebagian besar penalti, semua token tea yang "menentang" tidak akan dihargai dengan inflasi dan mungkin tunduk pada mekanisme pembusukan, sehingga mengurangi nilainya dari waktu ke waktu.

[^19]: Sumber: @web3


# Tata Kelola

Tata kelola sangat penting untuk pengembangan, keberlanjutan, dan adopsi sistem terdistribusi apa pun.

Kami mengusulkan agar tea mencakup tata kelola on-chain di mana semua pemegang token tea dapat menyarankan dan memberikan suara pada perubahan parameter penting yang ditimbang oleh kepemilikan token dan reputasi. Parameter ini dapat mencakup inflasi, biaya transaksi, imbalan mempertaruhkan, imbalan steeping, atau rasio steeping optimal. Fungsionalitas ini akan memastikan bahwa parameter penting dapat berkembang dan dioptimalkan dari waktu ke waktu oleh anggota komunitas tea. Kami mengantisipasi tata kelola akan diluncurkan dengan struktur yang sederhana dan secara progresif berkembang seiring dengan semakin matangnya sistem tea, memfasilitasi adopsi dan memastikan desentralisasi yang progresif.

Beberapa parameter sistem mungkin tidak tunduk pada tata kelola atau mendukung perubahan frekuensi tinggi untuk mengurangi permukaan serangan yang diwakili oleh tata kelola. Transisi progresif dari parameter ke tata kelola yang terbuka dan terdesentralisasi akan memastikan stabilitas dan prediktabilitas sistem.


# Ekstensibilitas Pihak Ketiga

Saat kami membangun alat bantu awal untuk memicu dukungan yang sudah lama tertunda dari komunitas sumber terbuka, kami percaya bahwa bagian dari misi kami adalah memastikan bahwa pihak ketiga dapat memperluas keseluruhan toolset. Selain menyediakan infrastruktur bagi para pengembang untuk membangun ekstensi ke protokol, termasuk cara-cara baru untuk berinovasi dan lebih jauh lagi dukungan dari pengembang sumber terbuka, rencana kami mencakup potensi bagi manajer/pengelola paket lainnya untuk berkontribusi pada protokol. Impian dan upaya para pengembang sumber terbuka telah membangun inovasi yang mendukung kehidupan kita sehari-hari.
Kami menantikan untuk menemukan penggunaan dan perluasan baru untuk tea yang diusulkan oleh komunitas tea.


# Pekerjaan di Masa Depan dan Upaya Komunitas Potensial

Seiring dengan semakin matangnya sistem tea, kami memperkirakan masyarakat akan memutuskan dan berkontribusi pada perubahan dan perluasan sistem tea melalui tata kelola. Di bawah ini adalah beberapa ide yang kami yakini dapat menginspirasi beberapa orang.

## Pedagang Besar Tea

Komunitas perangkat lunak sumber terbuka sangat dinamis dan terus berupaya berinovasi dan memberikan nilai. Dedikasi dan altruisme ini mengarah ke pembangunan perangkat lunak dan paket baru secara konstan, masing-masing menarik ketergantungan. Sebagai hasilnya, kami mengantisipasi peta ketergantungan untuk berevolusi secara konstan, yang mengarah ke perubahan yang sering terjadi pada rasio steeping dan imbalan. Di masa depan, komunitas tea dapat mengusulkan pengembangan sistem yang dirancang untuk secara dinamis memantau rasio seduhan untuk setiap paket dan menyeimbangkan kembali bagaimana pendukung paket steeping token mereka berdasarkan kriteria mereka sendiri.

## Royalti atas Transfer Paket

Kami menyadari bahwa manajer/pengelola paket dapat memutuskan untuk mentransfer aliran imbalan seduhan mereka ke satu atau lebih pengembang. Tata kelola transfer tersebut harus tetap menjadi keputusan manajer/pengelola paket dan mitranya, tanpa campur tangan tea. Alat-alat perlu disediakan agar transfer tersebut dapat dilakukan secara total atau parsial (mungkin hanya melalui sebagian dari imbalan curam yang dialihkan ke satu atau lebih pengembang, sementara imbalan yang tersisa terus mengalir ke manajer/pengelola paket asli) dan untuk imbalan seduhan mengalir melalui satu akun yang dikendalikan oleh satu peserta jaringan, beberapa peserta jaringan, atau secara otomatis didistribusikan ke beberapa akun menggunakan rasio statis atau dinamis.

## Distribusi Imbalan di Beberapa Pemelihara

Pemeliharaan paket bisa mengandalkan pekerjaan satu tim pengembang lagi. Sebelum reward seduhan mulai mengalir, tim harus mempertimbangkan untuk mengotomatisasi distribusi reward seduhan di antara mereka sendiri. Bagaimana distribusi terjadi harus diputuskan oleh pengelola sendiri, karena mereka berada dalam posisi terbaik untuk mengevaluasi siapa yang berkontribusi dan bagaimana mereka harus dihargai.

Untuk mencapai hal itu, setiap tim (atau tim) dapat membentuk organisasi otonom terdesentralisasi mereka sendiri (DAO) dan mengotomatiskan distribusi hadiah atau menerapkan sistem yang lebih kompleks untuk menentukan distribusi hadiah yang memadai berdasarkan faktor eksternal seperti pemungutan suara dari semua anggota DAO, atau distribusi berbasis waktu berdasarkan kontribusi berkelanjutan, keberhasilan menyelesaikan hadiah, dll.

## Penanganan Paket "Forks"

Kami percaya bahwa garpu sangat penting dan sebagian besar kurang dimanfaatkan. Forks bisa menjadi alat yang efektif untuk mengembangkan paket yang bersaing dalam hal fungsionalitas, kinerja, keamanan, dan bahkan perhatian. Betapapun bermanfaatnya, garpu harus mengenali upaya aslinya. Melalui pekerjaan di masa depan atau kontribusi potensial, komunitas tea dapat meningkatkan sistem untuk mengharuskan garpu dideklarasikan, bahkan mungkin terdeteksi ketika paket dikirimkan. Forks yang tidak dideklarasikan yang diungkapkan oleh taster tea dapat mengakibatkan sebagian token yang direndam dipotong, ditransfer ke manajer/pengelola paket asli, dan dikirim ke taster tea yang mengungkapkan garpu tersebut.

## Runtime vs Membangun Ketergantungan

tea mungkin tidak membedakan dependensi build dari dependensi runtime saat mendistribusikan reward seduhan saat peluncuran. Namun, asalkan komunitas tea merasa sangat ingin membuat perbedaan seperti itu, komunitas tea dapat mengusulkan peningkatan pada algoritma distribusi imbalan seduhan untuk memperhitungkan kekritisan setiap ketergantungan dan kontribusinya terhadap nilai paket-paket yang bergantung pada mereka. Proposal-proposal ini akan dipilih dan diimplementasikan berdasarkan keputusan masyarakat.

## Remunerasi Berbasis Penggunaan

Karena semakin banyak aplikasi yang dibangun menggunakan paket yang terdaftar dengan tea, komunitas dapat menambah algoritma penghargaan sehingga alokasi dapat dipengaruhi oleh dataset eksternal yang dibuktikan seperti penggunaan. Pembaruan mekanisme hadiah ini dapat memungkinkan alokasi hadiah token tea yang lebih tinggi untuk mengalir ke paket dengan penggunaan tertinggi sambil tetap menghormati batasan rasio seduhan yang dijelaskan di bagian token tea. Manajer/pengelola paket dapat menggunakan pendekatan yang sama untuk mendistribusikan reward steeping di seluruh dependensi mereka berdasarkan logika transparan pilihan mereka. Perhatikan bahwa semua informasi yang digunakan untuk mempengaruhi distribusi imbalan di seluruh paket dan ketergantungan dalam sistem tea perlu dibuktikan keandalannya.


# Ucapan Terima Kasih

Buku putih ini tidak akan ada tanpa dukungan dan dedikasi dari banyak teaophiles. Para penulis ingin mengucapkan terima kasih kepada Josh Kruger, Jadid Khan, dan Jacob Heider atas kontribusinya terhadap tokenomics dan banyak individu yang secara diam-diam meluangkan waktu mereka untuk memberikan umpan balik tentang isi dokumen ini.

$\parskip=0pt plus 1pt$

# Daftar Istilah

| Istilah | Definisi |
|------|------------|
| Leaf | Denominasi terkecil dari token tea. Sebuah daun setara dengan seperseratus juta ($10^{-8}$) dari sebuah tea. |
| Slashing | Tindakan menghukum steeper atau staker dalam menanggapi perilaku yang bertentangan dengan aturan jaringan. |
| Staking | Tindakan mengunci token tea untuk mengamankan jaringan proof-of-stake yang menjadi dasar sistem tea dibangun. |
| Steeping | Tindakan mengunci token tea untuk mendukung klaim Anda dan menerima imbalan (atau penalti) berdasarkan konsensus tentang validitas klaim Anda. |


# Referensi
