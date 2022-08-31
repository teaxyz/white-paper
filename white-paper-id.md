# Penafian

Informasi yang ditetapkan dalam buku putih ini bersifat pendahuluan.
Oleh karena itu, baik penulis maupun afiliasinya masing-masing tidak bertanggung jawab bahwa informasi yang ditetapkan di sini adalah final atau benar dan masing-masing dari yang disebutkan di atas menyangkal,
sejauh yang diizinkan oleh hukum yang berlaku, setiap dan semua tanggung jawab baik yang timbul dalam gugatan, kontrak atau sebaliknya sehubungan dengan buku putih ini.
Baik white paper ini maupun apa pun yang terkandung di sini tidak akan membentuk dasar atau diandalkan sehubungan dengan atau bertindak sebagai bujukan untuk masuk ke dalam kontrak atau komitmen apa pun.

Tidak ada dalam white paper ini yang merupakan penawaran untuk menjual atau ajakan untuk membeli token apa pun yang dibahas di sini.
Dalam hal apa pun, jika buku putih ini dianggap sebagai penawaran atau ajakan seperti itu, tidak ada penawaran atau ajakan seperti itu yang dimaksudkan atau disampaikan oleh buku putih ini di yurisdiksi mana pun di mana hal itu melanggar hukum untuk melakukannya,
di mana penawaran atau ajakan semacam itu akan memerlukan lisensi atau pendaftaran, atau di mana penawaran atau ajakan semacam itu tunduk pada pembatasan.
Secara khusus, setiap token yang dibahas di sini belum, dan, pada tanggal penerbitan white paper ini, tidak dimaksudkan untuk didaftarkan di bawah sekuritas atau undang-undang serupa di yurisdiksi mana pun,
apakah yurisdiksi tersebut menganggap token tersebut sebagai sekuritas atau instrumen serupa atau tidak, dan tidak boleh ditawarkan atau dijual di yurisdiksi mana pun di mana untuk melakukannya akan merupakan pelanggaran terhadap hukum yang relevan dari yurisdiksi tersebut.


# Lisensi

Kode sumber[^src] dari makalah ini tersedia di bawah lisensi Creative Commons Attribution-ShareAlike 4.0 International[^cc].

[^src]: See: @sources
[^cc]: See: @cc


# Pendahuluan

Internet sebagian besar terdiri dari proyek-proyek open-source dan telah ada sejak awal.
Seiring berjalannya waktu, banyak dari proyek-proyek ini telah menjadi bagian dasar di mana semua inovasi masa depan dibangun.
Dan sementara kekayaan telah diperoleh darinya, open-source sebagian besar dibuat dan dipelihara tanpa kompensasi.

Kami percaya bahwa keseluruhan usaha manusia modern telah terhambat dengan mengandalkan persentase terkecil dari insinyur dunia untuk memilih antara gaji atau menjaga agar Internet tetap berjalan.
Open-source adalah kerja cinta yang sering kali terhalang oleh kurangnya insentif ekonomi yang berarti sehingga proyek-proyek yang benar-benar berharga tidak pernah mencapai potensinya, sementara proyek-proyek lain menderita masalah keamanan karena kurangnya insentif untuk memelihara perangkat lunak sepanjang siklus hidupnya.
Untuk sepenuhnya menyadari potensi kami, kami membutuhkan sistem remunerasi yang adil untuk ekosistem open-source yang tidak secara fundamental mengubah cara pembuatan atau pemanfaatannya.

Perusahaan sering kali membungkus model bisnis di sekitar open-source, menghasilkan pendapatan secara langsung dari pekerjaan pengembang yang baik hati sambil juga mengandalkan mereka untuk memperbaiki bug saat masalah terjadi.
Contoh yang bagus adalah insiden baru-baru ini yang melibatkan kerentanan keamanan kritis di Log4j, paket dari Apache Software Foundation yang menemukan jalannya di banyak perangkat lunak dan layanan komersial yang digunakan oleh perusahaan dan pemerintah.
Pada November 2021, seorang peneliti keamanan yang bekerja untuk Alibaba Group Holding Ltd. melaporkan kerentanan CVE-2021-44228[^1], yang menerima skor dasar tertinggi dari Apache Software Foundation.
Amit Yoran, Kepala Eksekutif Tenable dan direktur pendiri Tim Kesiapan Darurat Komputer Amerika Serikat (US-CERT), menggambarkan kerentanan ini sebagai "kerentanan tunggal terbesar dan paling kritis dalam dekade terakhir"[^2].
Kepanikan pun terjadi dan beberapa sukarelawan yang mempertahankan paket ini mendapat kecaman di depan umum atas kegagalan tersebut.
Setelah mengatasi kemarahan dengan permohonan rendah hati untuk keadilan, sistem ditambal.
Perusahaan dan pemerintah akhirnya menyadari bahwa Log4j, sebuah paket yang digunakan oleh berbagai sistem penting selama dua dekade, dikelola oleh beberapa sukarelawan yang tidak dibayar, pahlawan tanpa tanda jasa yang sama yang mulai beraksi meskipun ada pelecehan dari industri[^3] dan bekerja tanpa lelah untuk mengatasi kerentanan.

Sayangnya, Log4j bukanlah satu-satunya contoh.
core-js diunduh 30 juta kali per minggu sebagai dasar dari setiap aplikasi Node.js, namun juga hampir tidak didanai.
Baru-baru ini beberapa pengembang core-js mengundurkan diri, dengan alasan, antara lain, *kurangnya kompensasi finansial* atas keputusan mereka.

Ada beberapa upaya untuk menyediakan struktur insentif, biasanya melibatkan sistem sponsor dan bounty.
Sponsorship memungkinkan konsumen open-source untuk menyumbang ke proyek yang mereka sukai.
Namun, bayangkan open-source sebagai menara batu bata di mana lapisan bawahnya sudah lama dilupakan, tetapi masih dipertahankan oleh para insinyur yang berdedikasi dan diandalkan oleh lebih banyak pengembang.
Hanya proyek-proyek di puncak menara yang biasanya dikenal dan menerima sponsor.
Pemilihan yang bias ini menyebabkan batu bata penting yang menahan menara tidak menarik sumbangan, sementara favorit menerima lebih dari yang mereka butuhkan.
Bounty memungkinkan konsumen proyek untuk mengusulkan pembayaran bagi pengembang untuk membangun fitur-fitur tertentu, sehingga hanya memberi imbalan kepada proyek untuk melakukan hal-hal yang belum tentu demi kepentingan terbaik mereka.
Dan sekali lagi, hanya memberi penghargaan kepada favorit.

Dalam makalah ini, kami mengusulkan tea - sistem terdesentralisasi untuk memberi remunerasi yang adil kepada pengembang sumber terbuka berdasarkan kontribusi mereka ke seluruh ekosistem dan diberlakukan melalui algoritma insentif tea yang diterapkan di semua entri dalam registri tea.

![Simplified view of the tea steeping rewards system.](img/figure-1.svg)

$\parskip=0pt plus 1pt$

[^1]: Source: @nist
[^2]: Source: @reuters
[^3]: Source: @twitter


# Komponen

Seorang pengembang perangkat lunak yang membangun aplikasi membutuhkan empat hal: browser, terminal, editor, dan package manager.
Dari keempat hal ini, package manager adalah yang mengontrol perkakas dan kerangka kerja yang dibutuhkan pengembang untuk membangun produk mereka.
Lapisan ini adalah tempat kami melihat potensi untuk mengubah bagaimana open-source digaji.


## Manajer Paket

Package manager mengetahui perangkat lunak sumber terbuka apa yang menjadi sandaran aplikasi untuk berfungsi, dari puncak menara hingga dasarnya.
Setiap komponen dan versi yang penting untuk aplikasi diketahui dan dicatat.
Ia tahu bahwa puncak menara dengan hati-hati memilih ketergantungannya dan pemilihan yang cermat itu berlanjut ke bawah.
Manajer paket ditempatkan secara unik dalam tumpukan alat pengembang untuk memungkinkan distribusi nilai otomatis dan tepat berdasarkan penggunaan dunia nyata yang sebenarnya.

Kami mengusulkan registri terdesentralisasi yang tidak dapat diubah yang dirancang untuk mendistribusikan nilai berdasarkan algoritma yang menentukan kontribusi setiap entri terhadap utilitas dan kesehatan sistem.
Nilai dapat memasuki grafik pada titik puncak - aplikasi dan perpustakaan penting - dan didistribusikan ke dependensi titik puncak tersebut dan dependensinya secara rekursif karena registri mengetahui seluruh grafik sumber terbuka.

Selain itu, kami percaya bahwa informasi material harus tersedia melalui manajer paket bagi pengembang untuk menilai apakah mereka dapat mempercayai paket dan pembuatnya.
Informasi ini mungkin didasarkan pada reputasi, pujian komunitas, data yang diambil dari sistem identitas terdesentralisasi (DID[^4]), manajer paket lainnya, atau mekanisme insentif yang berpotensi bergantung pada peserta jaringan yang menempatkan nilai ekonomi pada risiko.

Kami memperkirakan bahwa kombinasi alat, informasi, dan penghargaan teh akan memberi insentif yang adil bagi pengembang, membantu merangsang pertumbuhan perangkat lunak sumber terbuka dan mendorong inovasi.

[^4]: See: @w3

## Registri yang Terdesentralisasi

Setiap manajer paket memiliki registri paket sendiri yang menduplikasi metadata yang sama berulang kali.
Sudah waktunya ada registri tunggal, komprehensif dan definitif yang dirancang dan diatur oleh komunitas yang bergantung padanya.
Registri yang terdesentralisasi dan tidak dapat diubah ini dapat memberikan keamanan, stabilitas, dan mencegah
niat jahat.

Internet berjalan pada puluhan ribu komponen open-source yang vital.
Sungguh luar biasa bahwa sejauh ini, insiden yang disebabkan oleh penghapusan infrastruktur sumber terbuka yang penting sangat minim.
Yang paling terkenal adalah penghapusan ketergantungan NPM left-pad[^5] pada tahun 2016, yang mengalir ke sistem integrasi berkelanjutan dan penyebaran berkelanjutan yang membuat para pengembang kehabisan tenaga selama berhari-hari.
Peristiwa ini menunjukkan bahwa Internet itu sendiri didasarkan pada sistem pengembangan yang rapuh.
Contoh-contoh lain melibatkan partisipasi aktif atau disengaja dari pengelola paket yang menyabotase paket populer mereka (Lihat colors.js, faker.js[^6], dan node-ipc[^7]),
atau aktor jahat yang mencari keuntungan dengan berpura-pura membantu memelihara paket dan merusaknya untuk mencuri, misalnya, kunci pribadi Bitcoin (Lihat event-stream[^8]),
atau paket berbahaya dengan kesalahan ejaan yang disengaja, juga dikenal sebagai typosquatting,
dengan harapan menipu pengguna untuk menginstalnya, misalnya paket crossenv vs. cross-env NPM[^npmjsCrossenv].

Integritas perangkat lunak perlu dijamin seiring dengan kemajuan industri menuju masa depan, di mana aset digital merupakan bagian dari perangkat lunak.
Kita tidak bisa terus membiarkan diri kita rentan terhadap aktor jahat yang memodifikasi perangkat lunak.

Sebagian besar alat yang kita sebut manajer paket tidak dapat menjamin bahwa paket-paket yang dibangun ke dalam aplikasi dan dApps adalah kode sumber terbuka yang tidak diubah yang diterbitkan oleh penulis aslinya.
Microsoft GitHub telah menemukan bahwa 17% kerentanan dalam perangkat lunak ditanam untuk tujuan jahat[^9], dengan beberapa tetap tidak terdeteksi untuk waktu yang lama (Lihat Webmin 1.890[^10]).

Registri terdesentralisasi yang ditambah dengan sistem reputasi dan didukung oleh insentif ekonomi yang dirancang untuk mengekspos aktor jahat dan memberi penghargaan kepada aktor yang baik dapat memberikan jaminan yang telah dicari oleh komunitas pengembang.

[^5]: Source: @theregister
[^6]: Source: @fossa
[^7]: Source: @lunasec
[^8]: Source: @github
[^npmjsCrossenv]: Source: @npmjsCrossenv
[^9]: Source: @zdnet
[^10]: Source: @threatpost


## Sistem Penyimpanan

Paket open-source memberikan berbagai macam fungsionalitas, beberapa di antaranya mungkin dibatasi atau tidak diinginkan.
Enkripsi adalah contoh yang sangat baik untuk itu.
Kasus penggunaan penting untuk enkripsi adalah dukungan privasi individu di seluruh dunia.
Namun, enkripsi juga dapat digunakan untuk tujuan jahat (lihat Phantom Secure, dibongkar oleh lembaga penegak hukum pada Maret 2018[^11]) atau dapat dikompromikan untuk mendukung kegiatan penegakan hukum (Lihat Operasi Ironside (AFP), Operasi Greenlight (Europol),
dan Operasi Trojan Shield (FBI)[^12] di mana FBI mengoperasikan platform komunikasi "terenkripsi", AN0M, dan meyakinkan penjahat untuk menggunakan ponsel "terenkripsi" mereka untuk komunikasi yang aman).

Aplikasi enkripsi yang luas telah menjadikannya kasus penggunaan yang sempurna untuk perangkat lunak sumber terbuka dan contoh yang bagus bahwa solusi apa pun yang menyimpan paket harus tahan kerusakan dan tahan sensor.
tea adalah protokol terdesentralisasi yang tidak bermaksud untuk memfilter atau memberi sanksi paket berdasarkan fungsinya.
Sementara tata kelola tea dapat memilih untuk menghapus paket-paket yang terbukti berbahaya (lihat bagian tata kelola untuk informasi lebih lanjut), sangat penting bagi sistem tea untuk terhubung dengan beberapa sistem penyimpanan, termasuk sistem terdesentralisasi yang menunjukkan bahwa paket tidak diubah dan direplikasi dengan benar.
Pengelola paket dapat memilih sistem penyimpanan yang paling sesuai dengan kebutuhan mereka untuk menyimpan dan mendistribusikan paket mereka dengan aman.

[^11]: Source: @fbi
[^12]: Source: @europol

# Peserta Jaringan

Misi tea adalah untuk memberdayakan komunitas sumber terbuka dan memastikan kontributor mereka didukung saat mereka menciptakan alat yang membangun Internet.
Dalam buku putih ini, kami membedakan peserta melalui kontribusi mereka.
Beberapa mungkin menyumbangkan kode atau memverifikasi kode yang dikontribusikan.
Yang lain mungkin memberikan nilai ekonomi untuk mendukung pengembang dan reputasi mereka.

## Pengelola Paket

Pengelola paket harus memastikan perangkat lunak mereka terus memberikan nilai yang meningkat seiring dengan perkembangan industri.

teh mengasumsikan bahwa pembuat paket mempertahankan pekerjaan mereka.
Pengelola paket adalah pilar komunitas sumber terbuka yang perlu diberdayakan dan dihargai atas kontribusi berkelanjutan mereka.
Pengelola paket dapat memutuskan untuk menghentikan upaya pemeliharaan mereka atau menyadari bahwa mereka tidak dapat beroperasi pada kecepatan yang sesuai dengan harapan pengguna paket.
Pengelola paket menerima token yang tidak dapat dipertukarkan (NFT) ketika mereka menyelesaikan pengiriman paket (lihat bagian NFT pengelola untuk detail tambahan).
NFT ini digunakan untuk membuktikan pekerjaan mereka dan merupakan kunci yang mengarahkan penghargaan teh.
Pemegang NFT paket dapat mentransfer kepemilikannya ke pengembang lain (atau sekelompok pengembang), sehingga menjadikan mereka sebagai pengelola paket dan penerima hadiah di masa depan.
Demikian pula, seorang pengembang dapat memutuskan untuk mengambil peran sebagai pengelola paket dengan melakukan forking paket yang ada dan mengirimkan paket baru yang akan mereka pelihara ke depan, sehingga menjadi diri mereka sendiri baik pembuat paket maupun pemelihara.

Sangatlah penting untuk menyediakan alat yang tepat bagi komunitas pengembang untuk menentukan paket mana yang sedang dipelihara dan reputasi serta kualitas pekerjaan para pemelihara yang lalu dan sekarang.
Kita sudah terlalu sering melihat pekerjaan open-source dirusak dan upaya banyak orang dirusak oleh pelaku kejahatan.
Meskipun pekerjaan para pelaku jahat ini sebagian besar ditemukan dan diperbaiki, seringkali tidak sampai kerusakan signifikan telah terjadi melalui kerugian finansial atau data.
Ambil contoh paket EventStream npm[^13] yang diunduh lebih dari 1.5 juta kali per minggu dan diandalkan oleh lebih dari 1,500 paket ketika seorang peretas berhasil menembus proyek open-source,
mendapatkan kepercayaan dari penulis aslinya dan memodifikasi EventStream untuk bergantung pada paket berbahaya yang akan mengeksfiltrasi kredensial dompet bitcoin ke server pihak ketiga.
Meskipun alat dapat membantu mendeteksi beberapa serangan ini, mereka tidak selalu dapat diandalkan, yang menciptakan seluruh komunitas yang bergantung pada ketekunan dan kesediaan satu sama lain untuk berbagi temuan mereka.

Kami mengusulkan memperkenalkan insentif melalui token teh yang dijelaskan di bagian token teh, mendorong komunitas sumber terbuka untuk melaporkan temuan mereka secara konstruktif, sehingga pengelola paket dapat mengatasinya sebelum dieksploitasi.

[^13]: Source: @medium

## Pengguna Paket

Pengguna paket adalah pengembang perangkat lunak yang berfokus pada pemecahan masalah tertentu.
Mereka sering mencari di komunitas open-source untuk alat yang mereka butuhkan untuk bereksperimen dengan cepat dan mengulang dengan biaya yang sangat sedikit atau tanpa biaya, secara langsung mendapat manfaat dari pekerjaan pembuat dan pengelola paket.
Secara tradisional, sebagian mungkin telah memilih untuk mendukung pengelola paket melalui sumbangan atau bentuk remunerasi lainnya; Namun, ini jarang terjadi.

Sponsorship dapat menjadi sistem yang efektif untuk mendukung pengembangan open-source; Namun, remunerasi biasanya tidak meluas ke semua dependensi.
Keterbatasan ini menguntungkan favorit dan menghalangi inovasi dan pembangunan perangkat lunak.
Untuk berjuang sebagai fondasi pengembangan perangkat lunak, open-source harus memberdayakan semua pengembang, baik pemula atau ahli, di semua lapisan di menara.

Tujuan tea adalah untuk mempertahankan nilai-nilai inti dari perangkat lunak sumber terbuka sambil menyediakan sistem terdesentralisasi untuk memberi imbalan kepada pengelola paket untuk pekerjaan mereka.
Untuk mewujudkan misi ini, tea bermaksud untuk mengembangkan - dan memberi insentif kepada orang lain untuk mengembangkan - mekanisme bagi pengguna paket untuk mendukung pemelihara paket melalui kasus penggunaan unik dari token tea, seperti yang dijelaskan dalam token tea dan pekerjaan di masa depan dan bagian upaya komunitas potensial.

## Pendukung dan Sponsor Paket

Di Web 2.0 dan web3, pendukung paket sering disebut "sponsor". Mereka adalah organisasi atau pengguna paket yang menggunakan perangkat lunak open-source untuk membangun produk komersial mereka, filantropis yang ingin mendukung ekosistem, atau pengusaha yang ingin mendanai tim untuk mengembangkan komponen dari sistem yang lebih besar.

tea mengusulkan untuk memperluas komunitas pendukung paket ke seluruh komunitas teh, baik organisasi, pengembang, pengguna, atau penggemar teknologi.
Tujuan tea adalah untuk menerapkan mekanisme insentif terdesentralisasi melalui kasus penggunaan unik dari token teh untuk setiap anggota komunitas teh untuk berkontribusi pada keberlanjutan abadi dan pertumbuhan berkelanjutan dari sumber terbuka.
Pendukung paket dan sponsor bebas untuk memutuskan paket atau pengelola paket mana yang ingin mereka dukung berdasarkan pekerjaan, keyakinan, atau kriteria dan metrik apa pun yang akan memengaruhi keputusan mereka.
Selain itu, dukungan yang diberikan oleh pendukung paket dan sponsor akan mengalir ke dependensi setiap paket, sehingga secara implisit mempercayai pengelola paket untuk membuat pilihan yang baik tentang tumpukan mereka dan menggunakan informasi ini untuk berkontribusi pada reputasi mereka.

Asalkan pengelola paket menawarkan layanan seperti itu, pendukung paket dan sponsor dapat menerima NFT tingkat dukungan premium sebagai imbalannya, sehingga mendapat manfaat dari SLA yang dipercepat atau lisensi yang lebih fleksibel.
Selain itu, pendukung paket dan sponsor dapat memutuskan untuk mendukung paket atau pengelola paket dan secara otomatis mengalihkan semua atau persentase dari hadiah mereka untuk memberi insentif kepada tim untuk membangun perangkat lunak sumber terbuka baru.
Dengan kata lain, paket-paket tidak perlu ada agar teh mulai mengalir masuk.
Proyek-proyek yang baru lahir dapat didukung seperti halnya proyek-proyek yang lebih matang, yang selanjutnya memberi insentif lebih lanjut untuk lanskap open-source yang terus berkembang.

## tea Tasters

Ketika paket baru atau versi baru dari paket yang sudah ada dirilis, validitas pekerjaan perlu dibuktikan.
Informasi ini sangat penting bagi pengguna paket untuk memutuskan apakah akan mempercayai paket dan pengelolanya atau tidak.
Dengan protokol tea, fungsi ini disediakan oleh tea tasters.

tea tasters, biasanya, adalah pengembang perangkat lunak berpengalaman yang bersedia mendedikasikan sebagian waktu mereka untuk memeriksa klaim yang terkait dengan paket (fungsionalitas, keamanan, versi semantik[^14], akurasi lisensi, dll.)
dan mempertaruhkan reputasi dan nilai ekonomi mereka untuk menunjukkan hasil penelitian dan analisis mereka dan mendukung ulasan mereka.
Pencicip teh menerima imbalan atas ketekunan dan upaya mereka.
Di tea, kami menyebutnya "seduhan teh Anda" tindakan mengunci token teh untuk mendukung ulasan Anda dan menerima imbalan (atau hukuman) berdasarkan konsensus tentang validitas ulasan Anda.

Seperti pendukung paket, tea taster dapat mempengaruhi reputasi paket dan pengelola paket; Namun, dampaknya lebih signifikan mengingat peran mereka dalam memvalidasi keamanan, fungsionalitas, dan kualitas paket.
tea taster juga perlu membangun reputasi mereka untuk mendukung klaim mereka.
Kualitas pekerjaan mereka dan nilai ekonomi yang mereka pertaruhkan saat mereka mendalami ulasan mereka yang dikombinasikan dengan sumber data eksternal lainnya akan membangun reputasi setiap pencicip teh, sehingga membawa nilai lebih pada pekerjaan mereka.
Lihat bagian reputasi paket untuk rincian lebih lanjut tentang mekanisme yang digunakan untuk mempengaruhi reputasi paket dan pengelola paket.

[^14]: See: @semver

# Ikhtisar Protokol

Desain protokol untuk menghargai kontribusi sumber terbuka penuh dengan tantangan.
Perangkat lunak sumber terbuka secara definisi terbuka untuk semua orang dan dapat, sebagai akibatnya, menjadi sasaran salah kutip, perampasan, atau gangguan jahat.
Namun, komunitas sumber terbuka secara konsisten menunjukkan kesediaannya untuk menyoroti aktor yang baik dan mengekspos aktor yang buruk.
Secara historis, energi yang dihabiskan untuk meninjau dan mengomentari kontribusi pengembang lain sangat sukarela, meskipun pelaporan dan pembelaan temuan mungkin memakan waktu dan sangat penting.

Kami bermaksud untuk menciptakan platform distribusi tanpa kepercayaan untuk aplikasi yang dijamin oleh reputasi dan insentif keuangan, karena kami percaya bahwa imbalan yang memadai untuk kontribusi sumber terbuka tidak dapat berhasil tanpa sistem reputasi dan kemampuan bagi anggota komunitas untuk mengkomunikasikan temuan dan dukungan mereka (atau perbedaan pendapat) untuk paket atau karya pengembang.

Kita harus menyediakan tool bagi para pengembang untuk mengakses dan berkontribusi pada sistem reputasi ini.
Alat yang mencakup akses visual sederhana dan dapat diprogram ke versi dan reputasi semua dependensi dalam paket mereka.
Pemahaman yang jelas tentang anggota komunitas mana yang mendukung setiap paket dan berapa banyak token teh yang mereka seduh akan berkontribusi pada reputasi setiap paket, seperti halnya seberapa banyak pengelola paket yang menyeduh pekerjaan mereka mengkomunikasikan seberapa besar mereka mendukung pekerjaan mereka.
Poin data gabungan ini akan membantu menginformasikan sistem reputasi untuk semua anggota komunitas dan memfasilitasi pilihan.
Karena peretasan paket EventStream tidak dilakukan melalui paket itu sendiri, tetapi melalui salah satu dependensinya, visibilitas di semua lapisan dependensi akan sangat penting untuk membangun sistem tanpa kepercayaan ini.
Namun, pertimbangan seperti biaya komputasi dan transaksi ("gas") perlu diprioritaskan saat sistem dirancang dan dibangun.

Tujuan kami adalah untuk menghargai pengembang Web 2.0 dan web3.
Seluk-beluk dan spesifikasi dari setiap tumpukan membuatnya sehingga pelacakan instalasi dan penghapusan instalasi paket dapat dengan mudah menjadi korban dari satu atau lebih pelaku kejahatan.
Itu termasuk "membeli" instalasi untuk menggelembungkan angka secara artifisial.
Skenario yang lebih buruk lagi adalah memperkenalkan perubahan mendasar pada sifat perangkat lunak sumber terbuka dengan menciptakan gesekan yang tidak perlu dengan kunci lisensi atau mekanisme pelacakan penyebaran lainnya.
Untuk memberikan cakupan yang paling luas, kami percaya bahwa imbalan tidak harus bergantung pada gagasan sederhana tentang pelacakan instalasi atau penghapusan instalasi, melainkan pada mekanisme insentif yang mendorong penyerahan paket berkualitas dan pelaporan paket jahat atau berisiko tinggi.
Terakhir, banyak paket yang bergantung pada dependensi umum.
Misalnya, Lodash memiliki 151,209 dependen[^15] sementara kapur memiliki 78,854 dependen[^16] atau Log4js memiliki 3,343 dependen[^17].
Karena semakin banyak paket yang dibuat menggunakan dependensi yang sama, bagaimana kita memastikan bahwa insentif didistribusikan secara adil dan merata?
Bagaimana kita memastikan bahwa dependensi yang paling banyak digunakan dihargai tanpa membuat paket dan pengembang baru atau yang baru muncul kelaparan?
Bagaimana kita memastikan bahwa sistem insentif tidak berakhir dengan menjauhkan para pengembang dari bahasa-bahasa khusus untuk memusatkan mereka di mana insentifnya lebih baik?
Tetapi juga, sebagai pengembang, bagaimana kita mengidentifikasi paket-paket yang paling bergantung untuk membangun alternatif - versi paket-paket ini yang lebih ramping, lebih efisien, dan dikodekan dengan lebih baik?
Di tea, kami percaya bahwa kurangnya insentif telah menghambat evolusi perangkat lunak sumber terbuka.
Didukung oleh insentif dan penghargaan ekonomi yang tepat, lebih banyak pengembang akan berada dalam posisi untuk membangun, meningkatkan, dan menambah perangkat lunak sumber terbuka untuk kemajuan dunia.
Hanya dengan demikian, token teh akan dapat mewakili nilai total perangkat lunak sumber terbuka.

[^15]: Source: @npmjsLodash
[^16]: Source: @npmjsChalk
[^17]: Source: @npmjsLogFourjs

## Pengajuan Paket

Pengajuan rilis paket membutuhkan beberapa transaksi untuk terjadi secara atomik.
Secara khusus, pengelola paket harus:

* Daftarkan paket (dan versi semantiknya) dengan registri terdesentralisasi.
* Unggah paket ke dalam sistem penyimpanan terdesentralisasi untuk ketahanan, ketahanan sensor, dan kemudahan distribusi.
* Berkontribusi pada reputasi dan kepercayaan paket dengan *steeping* token teh.

Kegagalan salah satu dari tiga operasi akan mengakibatkan protokol kembali ke keadaan sebelumnya, sehingga menghilangkan bukti penyerahan.

Ketika sebuah paket berhasil dikirimkan, pengelola paket akan menerima NFT pengelola untuk membuktikan pekerjaan dan kontribusi mereka terhadap open-source.
Pengelola paket dapat mentransfer hadiah curam yang terkait dengan NFT pengelola ke pihak ketiga.
Namun, reputasi yang terkait dengan pembuatan dan pemeliharaan aset akan tetap ada pada pengelola paket, sehingga reputasi mereka dapat terpengaruh dari waktu ke waktu.
Karena reputasi setiap anggota komunitas teh mencapai tonggak utama, mereka dapat diberikan akses ke bagian protokol yang lebih tinggi atau menerima hadiah yang dipercepat, seperti yang diputuskan oleh tata kelola teh.
Untuk rincian lebih lanjut tentang NFT pengelola, lihat bagian NFT pengelola.

### Analisis Ketergantungan

Ketergantungan paket dapat berjalan dalam, karena setiap paket sering kali memiliki tanggungan dan ketergantungan.
Untuk menyediakan metodologi sederhana yang menghargai semua pengembang yang telah berkontribusi pada perangkat lunak sumber terbuka sambil menjaga agar pembuatan pohon ketergantungan tetap cepat dan efisien secara komputasi, kami mengusulkan untuk memverifikasi hanya ketergantungan tingkat pertama pada saat penyerahan paket.

Desain ini didorong oleh hipotesis bahwa setiap ketergantungan itu sendiri merupakan paket yang secara independen diserahkan ke pohon teh.
Dengan demikian, setiap ketergantungannya dapat dipetakan, dan jika ketergantungannya memiliki ketergantungan itu sendiri, mereka akan dipetakan pada saat paket ketergantungan diserahkan.

![Dependencies analysis diagram.](img/figure-3.svg){#fig:dep-analysis}


Dalam @fig:dep-analysis, penyerahan paket A memicu analisis dependensi runtime 1 sampai n dan membangun dependensi 1 sampai n, sementara dependensi runtime 1.1 sampai 1.n dan membangun dependensi 1.1 sampai 1.n dianalisis saat paket B diserahkan.
Kami akan menerapkan metodologi yang sama untuk distribusi insentif karena token curam didistribusikan di semua dependensi, sehingga secara rekursif curam paket yang terdaftar sebagai dependensi (lihat @fig:steeping-rewards).

![Steeping rewards distribution across dependencies.](img/figure-2.svg){#fig:steeping-rewards}


Versi dan ketergantungan yang saling bertentangan merupakan tantangan yang signifikan, dan pemecahan masalahnya dapat menguras waktu yang sangat besar.
Untuk mengatasi hal ini, kami mengusulkan setiap paket tunduk pada pemindaian ketergantungan yang komprehensif pada saat pengiriman sehingga kami dapat memastikan bahwa paket tersebut mematuhi aturan berikut untuk rentang versi semantik.

* Paket hanya dapat membatasi ketergantungan mereka ke versi mayor, meskipun awal rentang dapat berupa versi semantik yang valid (misalnya, >=5.2.1 <6).
* Jika ketergantungan ditingkatkan ke versi mayor yang lebih baru, teh mungkin memerlukan versi mayor paket ditingkatkan.
* Demikian pula, jika ketergantungan ditingkatkan ke versi minor yang lebih baru, tea mungkin memerlukan versi minor paket ditingkatkan.
* Jika ketergantungan baru ditambahkan, tea mungkin mengharuskan versi minor paket ditingkatkan.

Mempertimbangkan upaya yang tidak perlu yang dikenakan pada setiap pengguna paket ketika aturan di atas dilanggar, kami mengusulkan agar sebagian token teh yang diseduh oleh pengelola paket dipotong untuk mencerminkan kurangnya ketekunan mereka.
Jika pengembang memaksa semua orang untuk menyulap cangkir mereka, seseorang akan menumpahkan teh.
Karena pemindaian ketergantungan diharapkan terjadi pada saat penyerahan, kita harus mencatat bahwa tidak ada seduhan dari pendukung paket dan sponsor atau pencicip teh yang akan terjadi.

## Reputasi Paket & Pengelola Paket

Pengelola paket harus berkontribusi pada reputasi dan kepercayaan paket mereka dengan menyeduh token teh.
Namun, sistem reputasi yang hanya mengandalkan kontribusi ekonomi penulis tidak memberikan perlindungan pengguna yang memadai dan dapat menjadi sasaran serangan Sybil, di mana satu individu menciptakan banyak representasi diri mereka sendiri untuk meninggalkan sejumlah besar ulasan positif pada pekerjaan mereka,
menipu pengguna agar percaya bahwa karya mereka ditinjau dan disetujui oleh banyak orang.

Beberapa metodologi tersedia untuk mencegah serangan Sybil, beberapa di antaranya dijelaskan oleh Nitish Balachandran dan Sugata Sanyal dalam "A Review of Techniques to Mitigate Sybil Attacks"[^18].
Karena teh adalah protokol terdesentralisasi, menggunakan sistem sertifikasi kepercayaan yang bergantung pada otoritas penerbitan sertifikat terpusat akan bertentangan dengan intinya.
Kami mengusulkan untuk fokus pada pendekatan terdesentralisasi untuk mitigasi serangan Sybil dan, lebih khusus lagi, pada metodologi yang bergantung pada sekelompok besar peserta jaringan yang diberi insentif untuk menilai dan secara publik mewakili reputasi setiap paket dan pemeliharanya.

Mirip dengan produksi blok pada blockchain proof-of-stake, di mana node yang tidak memproduksi dapat memvalidasi pekerjaan orang lain dan, bila perlu, menyoroti pelanggaran aturan jaringan, yang mengarah pada hukuman aktor jahat melalui pemotongan (penghancuran sebagian dari saham mereka),
kami mengusulkan sistem di mana pihak ketiga (alias pencicip teh) akan dapat meninjau paket yang diproduksi oleh pengelola paket dan diberi insentif ekonomi untuk berperilaku demi kepentingan terbaik komunitas perangkat lunak sumber terbuka dan penggunanya serta mengenali perilaku yang baik dan menghukum perilaku buruk.
Sistem ini harus tahan terhadap Sybil dan mencegah pemegang token besar mempengaruhi protokol atau reputasi paket tertentu secara material.
Kami percaya pendekatan ini lebih selaras dengan open-source, menyediakan substrat yang lebih subur untuk mendorong adopsi dan kepercayaan, dan pada akhirnya memfasilitasi pertumbuhan teh.

[^18]: Source: @arxiv

## Tinjauan Paket oleh Pihak Ketiga

Peninjauan paket oleh pihak ketiga merupakan komponen penting dalam membangun reputasi, namun, tinjauan pihak ketiga memiliki serangkaian ancaman uniknya sendiri termasuk serangan Sybil yang disebutkan di atas.

Teknologi Blockchain, dan lebih eksplisit lagi staking, menawarkan kesempatan unik bagi teh untuk mengatasi tantangan ini.
Meskipun alamat dompet mungkin tersedia dalam jumlah yang tak terbatas, tidak demikian halnya dengan token teh, yang pasokan awalnya diperkirakan 10 miliar.
Selain itu, setiap tindakan yang dilakukan oleh pengembang, seperti mengirimkan paket, memverifikasi paket, atau menyeduhnya, akan berkontribusi pada reputasi mereka, sehingga menciptakan profil unik yang dapat digunakan setiap pengembang untuk berkontribusi pada komunitas teh dan berpartisipasi dalam tata kelola teh.

Dengan mengharuskan pengulas pihak ketiga untuk menyeduh token teh dan menanggung risiko kehilangan sebagian dari token curam mereka jika mereka ternyata berperilaku bertentangan dengan kepentingan jaringan atau menjadi aktor yang buruk, pihak ketiga dapat memberikan kredibilitas tambahan pada paket dan menerima hadiah, dalam bentuk token teh.

Kami juga mengusulkan perluasan sistem reputasi kepada pihak ketiga yang melakukan verifikasi independen terhadap paket - para pencicip teh.
Penyelesaian tinjauan positif akan membutuhkan dua operasi untuk terjadi secara atomik:

* Penyerahan ulasan kode, ditandatangani oleh pencicip teh dan dapat diakses secara publik untuk semua anggota komunitas, bersama dengan
* Tindakan seduhan "untuk" paket (vs. "menentang" paket), untuk mendukung ulasan mereka.

Penyelesaian tinjauan negatif yang mencakup satu atau lebih kerentanan kritis akan mengharuskan pencicip teh terlebih dahulu menghubungi pengelola paket menggunakan protokol pengiriman pesan untuk memberi tahu mereka tentang kerentanan dan memungkinkan mereka untuk mengatasi masalah ini secara tepat waktu.
Setelah berakhirnya periode yang ditentukan tata kelola yang dialokasikan untuk pengelola paket untuk mengatasi kerentanan mereka atau saat paket yang dikoreksi tersedia, protokol perpesanan yang sama akan digunakan untuk memberi tahu semua pengguna dan penguji paket ini (termasuk tanggungan) bahwa kerentanan telah diidentifikasi,
dan mudah-mudahan ditangani, sehingga mereka tahu untuk memperbarui aplikasi atau dependensi mereka.
Untuk mencegah pemborosan waktu pengembang, komunikasi antara pencicip teh dan pemelihara paket akan mengharuskan pencicip teh untuk menyeduh token teh.

Setelah menyelesaikan kedua operasi tersebut, pencicip teh akan menerima NFT sebagai bukti pekerjaan mereka pada paket dan versi paket tertentu.
Akumulasi NFT yang dikombinasikan dengan rasio seduhan dari masing-masing paket yang ditinjau dan informasi yang diekstraksi dari sistem eksternal akan menginformasikan reputasi pencicip teh.
Ketika reputasi mereka mencapai tonggak utama, pencicip teh dapat memperoleh akses ke bagian protokol yang lebih tinggi atau penghargaan yang dipercepat, seperti yang diputuskan oleh tata kelola teh.

## Paket Usang atau Korup

Misi tea adalah untuk memberi penghargaan kepada kontributor dan peserta dalam komunitas sumber terbuka; Namun, penghargaan harus sepadan dengan upaya yang dikerahkan oleh pengelola paket dan pencicip teh.
Paket yang kurang terawat, ketinggalan jaman, atau rusak adalah indikasi yang jelas dari pengelola paket yang tidak memenuhi harapan masyarakat atau tidak memberikan kepercayaan dan dukungan yang terkesan pada mereka melalui seduhan paket.
Manifestasi lain dari paket-paket yang sudah ketinggalan zaman mungkin adalah penggunaan bahasa lama atau versi lama dari bahasa multi-versi.
Paket-paket yang tetap usang atau rusak terlalu lama menunjukkan bahwa tea taster perlu meninjau pekerjaan pengelola paket secara teratur dan konsisten.

tea taster adalah anggota penting dari komunitas sumber terbuka karena ulasan mereka dan klaim terkait dapat mengarahkan pengguna paket menuju atau menjauh dari paket.
Untuk memastikan bahwa ulasan dapat dipercaya secara berkelanjutan, kami mengusulkan mekanisme di mana paket yang sudah usang atau rusak dapat melihat sebagian token curam mereka dikirim ke tea taster yang pertama kali mengenali kurangnya pemeliharaan paket apa pun.

Setiap tinjauan negatif yang menguraikan cacat seperti kerentanan zero-day atau penggunaan ketergantungan yang sudah ketinggalan zaman dan tetap terbuka melewati masa tenggang yang ditentukan oleh tata kelola harus dianggap sebagai kegagalan di pihak pengelola paket.
Mereka belum menyelesaikan tugas yang dipercayakan kepada mereka dan dihargai.
Hal yang sama dapat dikatakan untuk pendukung paket dan sponsor yang mempertaruhkan reputasi mereka pada pekerjaan pengelola paket yang nakal dan menerima imbalan untuk itu, tetapi gagal mengidentifikasi kurangnya pemeliharaan atau memilih untuk terus mendukung paket tersebut.

Karena paket mendapatkan popularitas dan penggunaan, dengan lebih banyak aplikasi dan sistem yang berpotensi sangat penting bergantung pada mereka, kita harus memberi insentif kepada pengembang untuk secara diam-diam melaporkan kekurangan kepada pengelola paket dan pengelola paket untuk mengatasi kekurangan tersebut sebelum dapat dieksploitasi.
Akibatnya, kami mengusulkan agar setiap paket usang atau rusak yang tunduk pada satu atau lebih ulasan negatif yang dibuktikan dan tetap dalam keadaan seperti itu melewati masa tenggang yang ditentukan tata kelola melihat sebagian token curamnya dipotong terlepas dari asal mereka (pengelola paket, pendukung paket, dan sponsor atau pencicip teh sebelumnya),
sementara sebagian lainnya dikirim ke tea taster yang mengirimkan ulasan negatif.
Distribusi ke semua pencicip teh dapat didasarkan pada usia ulasan mereka dan jumlah token teh yang mereka seduh untuk ulasan mereka.

## NFT Pengelola

Setelah berhasil mengirimkan paket, pengelola paket akan menerima NFT untuk membuktikan pekerjaan dan kontribusi mereka.
Pemegang NFT ini akan secara otomatis menerima semua hadiah yang terkait dengan paket.
Pengelola paket dapat mentransfer kepemilikan pemeliharaan atas paket ke pengelola paket lain hanya dengan mentransfer NFT paket.
Transfer NFT yang berhasil akan menyebabkan pemilik baru secara otomatis menerima hadiah paket di masa mendatang.

Bagian penting dari pembangunan reputasi bergantung pada frekuensi dan kuantitas pengiriman paket berkualitas.
NFT yang dikirimkan ke pengelola paket sebagai bukti pekerjaan mereka dapat digunakan oleh sistem reputasi untuk memperbarui reputasi pengelola paket dan memberi mereka akses ke bagian protokol yang ditinggikan, seperti yang diputuskan oleh tata kelola teh.
Namun, untuk mencegah vektor serangan, seperti anggota komunitas membeli reputasi mereka, transfer NFT pengelola tidak akan menghasilkan transfer reputasi.
Reputasi harus tetap terkait langsung dengan pekerjaan pengembang tertentu dan tidak boleh dipindahtangankan.

# tea Token

## Mengamankan Jaringan

Sementara banyak blockchain mungkin muncul sebagai solusi infrastruktur yang efektif dan aman untuk mendukung tujuan teh, kami percaya bahwa pertimbangan yang cermat harus diberikan pada tumpukan teknologi di mana sistem teh dibangun.

Skalabilitas, efektivitas biaya, ESG, dan ekstensibilitas pihak ketiga adalah pertimbangan desain penting yang dapat dilayani dengan lebih baik oleh sistem proof-of-stake tea-sovereign.
Dalam proof-of-stake, operator node dan peserta jaringan mempertaruhkan nilai ekonomi dalam bentuk token asli rantai untuk meningkatkan keamanan sistem.
Operator node dan partisipan jaringan menerima hadiah atas keberhasilan produksi blok yang sesuai dengan aturan jaringan dan menyertakan informasi transaksi yang akurat.
Ketidakaktifan (alias node down) atau aktivitas jahat / salah dihukum dengan menghancurkan sebagian kecil token yang dipertaruhkan melalui pemotongan.

Sistem bukti kepemilikan yang didukung oleh token teh akan memungkinkan pemegang token teh untuk berkontribusi pada keamanan sistem dengan *mengambil* teh dan mendukung pengembang sumber terbuka dengan *menyeduh* teh.
Kami sepenuhnya menyadari bahwa faktor ekonomi dapat mencegah beberapa pengembang untuk mengintai atau menyeduh teh; dengan demikian, mengintai dan menyeduh akan tersedia hanya dengan selembar daun, denominasi teh terkecil yang mewakili seperseratus juta ($ 10 ^ {{-8} $) teh.

Kedua aplikasi token tea melayani fungsi vital dalam mendukung dan pertumbuhan ekosistem sumber terbuka.
Staking tea akan memastikan bahwa sistem tea terus beroperasi dengan aman, sehingga semua peserta jaringan dapat mengirimkan dan mengakses paket untuk meninjaunya, mengintegrasikannya ke dalam aplikasi mereka, dll.
Sebaliknya, seduhan teh akan mendukung tujuan teh untuk menyediakan alat bagi semua peserta jaringan untuk mendukung dan menggunakan paket yang memenuhi persyaratan kualitas dan ketergantungan, seperti yang diformulasikan oleh komunitas teh melalui dukungan dan perbedaan pendapat mereka terhadap setiap paket.
Kehati-hatian akan diambil ketika mendefinisikan dan menerapkan parameter staking dan steeping sehingga yang satu tidak menjadi parasit pada yang lain.

## Insentif dan Hukuman

Seperti yang telah dibahas sebelumnya, ada insentif yang kuat bagi pelaku kejahatan untuk mengkompromikan perangkat lunak open-source.
Mayoritas infrastruktur penting Internet berjalan pada sumber terbuka, dan perlombaan untuk menemukan eksploitasi dan kerentanan lainnya sedang berlangsung.
Di tea, kami percaya bahwa pengelola paket bukanlah orang yang harus disalahkan (meskipun mereka sering).

Insentif protokol tea memperbaiki hal ini melalui distribusi insentif yang adil dan merata.
Paket seperti Lodash dengan lebih dari 151 ribu tanggungan adalah pilar pengembangan sumber terbuka, dan pemeliharanya layak diberi imbalan secara proporsional.
Namun, sistem penghargaan yang dibangun semata-mata pada jumlah tanggungan akan mencegah inovator mengganggu monopoli ini kecuali mereka cukup didanai oleh pihak ketiga atau telah mengumpulkan sumber daya yang cukup untuk mendanai diri sendiri.
Pendekatan ini kemungkinan akan menyebabkan menyusutnya jumlah kontributor, yang mengakibatkan kebalikan dari apa yang dimaksud dengan teh.

Tujuan tea adalah untuk mewakili nilai perangkat lunak sumber terbuka dan, dengan demikian, mendorong pertumbuhannya dengan memberdayakan para pesertanya dengan sumber daya yang mereka butuhkan untuk mengejar hasrat mereka tanpa terbebani.
Sistem distribusi insentif teh perlu mempertimbangkan dengan cermat rasio seduhan setiap paket dan menyesuaikan insentif setiap paket yang sesuai.
Untuk mengurangi risiko sejumlah kecil paket yang digunakan sebagai dependensi di banyak aplikasi yang mengumpulkan sebagian besar imbalan seduhan, kami akan memanfaatkan penelitian yang dihasilkan oleh web3 Foundation[^ 19] untuk mekanisme imbalan berbasis bukti kepemilikan Polkadot.
Kami selanjutnya dapat menyesuaikan implementasi dan variabelnya berdasarkan hasil eksperimen praktis.

Ketika sebuah paket curam mendekati rasio steeping optimum yang ditentukan oleh tata kelola, rasio imbalan steeping-nya akan menurun secara progresif.
Ketika sebuah paket melebihi rasio seduhan optimalnya, rasio imbalan seduhan akan menurun tajam untuk menghilangkan insentif bagi pendukung paket dan pencicip teh dari seduhan lebih lanjut paket yang sangat curam.
Desain ini dapat memungkinkan paket yang kurang curam menjadi lebih menarik bagi pendukung paket dan pencicip teh.
Ini juga dapat memberi insentif kepada pengembang yang berpengalaman untuk membangun alternatif paket yang sangat curam, menciptakan peluang bagi komunitas teh untuk menyeimbangkan antara mendukung perangkat lunak yang ada dan mempromosikan inovasi.
Rasio seduhan akan dihitung menggunakan pasokan yang beredar dalam desain awalnya.
Komunitas teh dapat mengubah desain ini untuk meningkatkan skalabilitas sistem lebih lanjut.
Biarkan $\chi$ menjadi rasio seduhan di semua paket.
Ini mewakili jumlah total token teh yang diseduh oleh pengelola paket, pengguna paket, pendukung dan sponsor paket, dan pencicip teh dibagi dengan total pasokan token teh.
Mengingat berapa banyak paket sumber terbuka yang tersedia saat ini dan pertumbuhan yang diharapkan, $\chi$ akan selalu menjadi nilai yang sangat kecil antara $ 0$$ dan $ 1$$.

Biarkan $\psi$ menjadi rasio staking.
Ini mewakili jumlah total token teh yang dipertaruhkan oleh peserta jaringan untuk mengamankan jaringan.

Biarkan $\chi_{ideal}$ menjadi rasio curam yang kita inginkan setiap paket untuk mencapai distribusi imbalan yang adil di semua paket dan ketergantungan mereka.
Nilai $\chi_{ideal}$ harus diperbarui saat paket baru ditambahkan ke registri terdesentralisasi, dan dependensi dibuat.
Untuk menentukan nilai terbaik untuk $\chi_{ideal}$, kita akan menggunakan kurva lonceng popularitas yang diperbarui pada awal setiap siklus hadiah.

Biarkan $\tau = \tau(\chi)$ menjadi tingkat bunga seduhan tahunan yang didistribusikan ke semua anggota komunitas teh yang menyeduh token teh untuk mendukung pengembang sumber terbuka.
Dengan kata lain, $\tau(\chi)$ sesuai dengan imbalan seduhan yang diterima selama setahun oleh anggota komunitas yang menyeduh token teh selama setahun penuh.

Biarkan $\gamma = \gamma(\psi)$ menjadi tingkat bunga staking tahunan yang didistribusikan ke semua operator node dan peserta jaringan yang mempertaruhkan token teh untuk mengamankan jaringan.
Dengan kata lain, $\gamma(\psi)$ sesuai dengan imbalan staking yang diterima selama setahun oleh anggota komunitas yang mempertaruhkan token teh selama setahun penuh.

Biarkan $\delta$ menjadi inflasi tahunan yang diarahkan pada perbendaharaan jaringan.
$\delta$ dapat bervariasi karena faktor eksternal mempengaruhi pasokan token.

Kami mempertimbangkan tingkat hadiah steeping tahunan sebagai fungsi dari $\chi$ dan tingkat hadiah staking tahunan sebagai fungsi dari $\psi$.

* $\tau(\chi)$ sesuai dengan insentif bagi orang untuk melakukan steep paket.
Saat $\chi$ meningkat, lebih sedikit hadiah $\tau(\chi)$ yang dibutuhkan.
* $\gamma(\psi)$ sesuai dengan insentif bagi orang untuk mempertaruhkan jaringan.
Ketika $\psi$ meningkat, lebih sedikit imbalan $\gamma(\psi)$ yang dibutuhkan untuk mengamankan jaringan.

Inflasi tahunan $I$ akan setara dengan $(\tau + \gamma + \delta)$ dan dihitung sebagai berikut:

$$
I = \frac{\textrm{pasokan token pada akhir tahun} - \textrm{pasokan token pada awal tahun}}{\textrm{pasokan token pada awal tahun}} = (\tau + \gamma + \delta)
$$

Kontribusi terhadap inflasi $\tau_{\textsc{all}}$ (insentif yang didistribusikan ke semua steeper paket) dan $\gamma_{\textsc{all}}$ (insentif yang didistribusikan ke semua kontributor keamanan jaringan) harus dipertimbangkan untuk memastikan bahwa sistem memberikan insentif pada rasio steeping/staking yang optimal.

Karena kami fokus pada insentif yang didistribusikan di semua steeper paket, kami menentukan bahwa
$\tau_{\textsc{all}}$
adalah fungsi dari rasio steeping $\chi$ dan oleh karena itu
$\tau_{\textsc{all}}(\chi) = \chi \cdot \tau(\chi)$.
Dari analisis kami sebelumnya, kita dapat melihat bahwa
$\tau_{\textsc{all}}(\chi_{ideal}) = \chi_{ideal} \cdot \tau_{ideal}$.
Karena tujuannya adalah untuk mencapai keadaan di mana
$\chi = \chi_{ideal}$
, penghargaan
$\tau_{ideal}(\chi)$
harus maksimal pada nilai tersebut.

Biarkan $\tau_{ideal} = \tau(\chi_{ideal})$
menjadi tingkat hadiah yang diberikan oleh jaringan pada skenario ideal di mana
$\chi = \chi_{ideal}$.

Biarkan $\tau_{0}$ menjadi batas dari $\tau_{\textsc{all}}(\chi)$ sebagai $\chi$ menuju nol ketika tidak ada anggota komunitas teh yang mencuri paket apapun.
Nilai $\tau_{0}$ harus mendekati nol tetapi tidak nol untuk memberi insentif kepada pengadopsi awal.
Seperti yang disarankan oleh penelitian web3 Foundation, kami mengusulkan bahwa:

* fungsi inflasi tumbuh secara linear antara $\chi = 0$ dan $\chi = \chi_{ideal}$, dan
* fungsi inflasi akan meluruh secara eksponensial antara $\chi = \chi_{ideal}$ dan $\chi = 1$.

Kami memilih penurunan eksponensial yang serupa untuk $\tau_{\textsc{all}}(\chi)$ karena hal ini mengimplikasikan penurunan eksponensial $\tau(\chi)$, dan kami ingin reward turun tajam melebihi $\chi_{ideal}$ untuk mencegah satu paket menerima semua reward.

Peluruhan didefinisikan sehingga tingkat inflasi menurun paling banyak 50% ketika $\chi$ bergeser $d$ unit ke kanan $\chi_{ideal}$ – i.e.
$\tau_{\textsc{all}}(\chi_{ideal} + d) \geq \tau_{\textsc{all}} \cdot 0.5$.

Kami mengusulkan fungsi suku bunga dan tingkat inflasi berikut, yang bergantung pada parameter $\chi_{ideal}$, $\tau_{ideal}$, $\tau_{0}$ dan $d$.

\begin{align*}
&\tau_{\textsc{all}}(\chi) = \tau_{0} + (\tau_{\textsc{all}}(\chi_{ideal}) - \tau_{0})\frac{\chi}{\chi_{ideal}}\enspace\textrm{for}\;0 < \chi \leq \chi_{ideal} \\
&\tau_{\textsc{all}}(\chi) = \tau_{0} + (\tau_{\textsc{all}}(\chi_{ideal}) - \tau_{0}) \cdot 2^{(\chi_{ideal}-\chi)/d}\enspace\textrm{for}\;\chi_{ideal} < \chi \leq 1
\end{align*}

Sama seperti pelaku yang baik perlu diberi penghargaan; pelaku yang buruk perlu diidentifikasi dan dihukum.
Perangkat lunak sumber terbuka memberikan banyak peluang bagi pelaku kejahatan untuk menciptakan titik sakit dan risiko reputasi bagi seluruh komunitas pengembang.
Dari penyalahgunaan pekerjaan hingga perubahan dan redistribusi paket perangkat lunak, atau injeksi kode jahat, perang antara aktor baik dan buruk terus berlanjut, seringkali dengan aktor jahat yang didanai dengan baik yang melihat kontaminasi paket sumber terbuka sebagai peluang untuk mendapatkan keuntungan finansial.
Sisi negatifnya relatif minimal, dengan paket-paket yang berpotensi dilarang dari rak-rak digital atau mengalami reputasi yang buruk.

Kami mengusulkan untuk memperkenalkan mekanisme pemotongan untuk menetapkan sisi negatif yang lebih material yang secara langsung mempengaruhi nilai ekonomi aktor jahat.
Saat tea taster mengevaluasi dan menganalisis kode dalam paket yang baru dikirimkan, kami menyarankan tea taster menerima alat dan insentif untuk menunjukkan dan menyoroti kode jahat sehingga pengguna paket dapat dibuat sadar akan risikonya, dan pemelihara paket, pendukung paket, dan sponsor dihukum karena mengirimkan atau mendukung kode jahat.
Sejauh itu, untuk semua ulasan negatif yang terbukti dilakukan sesuai aturan jaringan dan yang telah ditangani oleh pengelola paket dalam periode yang ditentukan tata kelola, pengelola paket tidak boleh dikenakan penalti apa pun yang bertentangan dengan pendukung dan sponsor paket atau pencicip teh yang memberikan ulasan positif dari paket yang dimaksud.
Untuk ulasan negatif yang dilakukan sesuai aturan jaringan dan bahwa pengelola paket belum ditangani dalam periode yang ditentukan tata kelola, sebagian kecil dari token yang direndam oleh pengelola paket, pendukung dan sponsor paket, dan pencicip teh sebelumnya akan dipotong.
Sebagian kecil lainnya akan dikunci ke dalam kolam asuransi yang dikendalikan oleh tata kelola teh.
Tata kelola teh akan menetapkan kebijakan dan aturan dalam kolaborasi erat dengan komunitas untuk mendistribusikan isi kolam kepada mereka yang terkena dampak kerentanan.
Protokol akan mendistribusikan fraksi ketiga dari token curam di semua pencicip teh yang berkontribusi pada ulasan negatif dan curam terhadap paket, berdasarkan jumlah token teh yang mereka curam "terhadap" paket dan berapa lama token mereka telah curam.
Dengan kata lain, semakin cepat satu atau lebih tea taster mengidentifikasi dan melaporkan cacat sesuai dengan aturan jaringan, semakin tinggi imbalan yang akan mereka dapatkan untuk mendukung pengembangan sumber terbuka yang aman dan produktif.

Untuk mencegah anggota komunitas dari pemungutan suara secara acak "menentang" paket yang sangat curam dengan harapan menerima mayoritas penalti apa pun, semua token teh yang direndam "menentang" tidak akan dihargai dengan inflasi dan mungkin tunduk pada mekanisme pembusukan, sehingga mengurangi nilainya dari waktu ke waktu.

[^19]: Source: @web3


# Tata Kelola

Tata kelola sangat penting untuk pengembangan, keberlanjutan, dan adopsi sistem terdistribusi apa pun.

Kami mengusulkan agar teh mencakup tata kelola on-chain di mana semua pemegang token teh dapat menyarankan dan memberikan suara pada perubahan parameter penting yang ditimbang oleh kepemilikan token dan reputasi.
Parameter ini dapat mencakup inflasi, biaya transaksi, imbalan staking, imbalan seduhan, atau rasio seduhan optimal.
Fungsionalitas ini akan memastikan bahwa parameter penting dapat berkembang dan dioptimalkan dari waktu ke waktu oleh anggota komunitas teh.
Kami mengantisipasi tata kelola akan diluncurkan dengan struktur sederhana dan semakin berkembang seiring dengan semakin matangnya sistem teh, memfasilitasi adopsi dan memastikan desentralisasi progresif.

Beberapa parameter sistem mungkin tidak tunduk pada tata kelola atau mendukung perubahan frekuensi tinggi untuk mengurangi permukaan serangan yang diwakili oleh tata kelola.
Transisi progresif parameter ke tata kelola yang terbuka dan terdesentralisasi akan memastikan stabilitas dan prediktabilitas sistem.


# Ekstensibilitas Pihak Ketiga

Saat kami membangun alat awal untuk memicu dukungan yang sudah lama tertunda dari komunitas open-source, kami percaya bahwa bagian dari misi kami adalah memastikan bahwa pihak ketiga dapat memperluas toolset secara keseluruhan.
Selain menyediakan infrastruktur bagi para pengembang untuk membangun ekstensi ke protokol, termasuk cara-cara baru untuk berinovasi dan lebih jauh lagi mendukung pengembang sumber terbuka, rencana kami mencakup potensi bagi pengelola paket lain untuk berkontribusi pada protokol.
Impian dan upaya para pengembang sumber terbuka telah membangun inovasi yang mendukung kehidupan kita sehari-hari.
Kami menantikan untuk menemukan penggunaan dan ekstensi baru untuk teh yang diusulkan oleh komunitas teh.


# Pekerjaan di Masa Depan dan Potensi Upaya Masyarakat

Seiring dengan semakin matangnya sistem teh, kami memperkirakan masyarakat akan memutuskan dan berkontribusi pada perubahan dan perluasan sistem teh melalui tata kelola.
Di bawah ini adalah beberapa ide yang kami yakini dapat menginspirasi beberapa orang.

## pedagang grosir tea

Komunitas perangkat lunak sumber terbuka sangat bersemangat dan terus mencari untuk berinovasi dan memberikan nilai.
Dedikasi dan altruisme ini mengarah pada pembangunan perangkat lunak dan paket baru yang konstan, masing-masing menarik ketergantungan.
Akibatnya, kami mengantisipasi peta ketergantungan untuk terus berkembang, yang mengarah pada perubahan yang sering terjadi pada rasio seduhan dan imbalan.
Di masa depan, komunitas teh dapat mengusulkan pengembangan sistem yang dirancang untuk secara dinamis memantau rasio seduhan untuk setiap paket dan menyeimbangkan kembali bagaimana pendukung paket menyeduh token mereka berdasarkan kriteria mereka sendiri.

## Royalti pada Transfer Paket

Kami menyadari bahwa pengelola paket dapat memutuskan untuk mentransfer aliran imbalan seduhan mereka ke satu atau lebih pengembang.
Tata kelola transfer tersebut harus tetap menjadi keputusan pengelola paket dan mitra mereka, tanpa campur tangan dari teh.
Alat-alat perlu disediakan agar transfer tersebut menjadi total atau sebagian (mungkin hanya melalui sebagian dari imbalan seduhan yang dialihkan ke satu atau lebih pengembang, sementara imbalan yang tersisa terus mengalir ke pengelola paket asli)
dan untuk steeping reward mengalir melalui satu akun yang dikendalikan oleh satu peserta jaringan, beberapa peserta jaringan, atau secara otomatis didistribusikan ke beberapa akun menggunakan rasio statis atau dinamis.

## Distribusi Hadiah di Beberapa Pengelola

Pemeliharaan paket dapat mengandalkan pekerjaan satu tim pengembang lagi.
Sebelum reward steeping mulai mengalir, tim harus mempertimbangkan untuk mengotomatisasi distribusi reward steeping di antara mereka sendiri.
Bagaimana distribusi terjadi harus diputuskan oleh pengelola sendiri, karena mereka berada dalam posisi terbaik untuk mengevaluasi siapa yang berkontribusi dan bagaimana mereka harus diberi reward.

Untuk mencapai hal itu, setiap tim (atau tim) dapat membentuk organisasi otonom terdesentralisasi mereka sendiri (DAO) dan mengotomatiskan distribusi reward atau menerapkan sistem yang lebih kompleks untuk menentukan distribusi reward yang memadai berdasarkan faktor eksternal seperti pemungutan suara dari semua anggota DAO,
atau distribusi berbasis waktu berdasarkan kontribusi berkelanjutan, keberhasilan penyelesaian bounty, dll.

## Penanganan Paket "Forks"

Kami percaya bahwa fork sangat penting dan sebagian besar kurang dimanfaatkan.
Forks dapat menjadi alat yang efektif untuk mengembangkan paket yang bersaing dalam fungsi, kinerja, keamanan, dan bahkan perhatian.
Meskipun berguna, garpu harus mengakui upaya asli.
Melalui pekerjaan di masa depan atau kontribusi potensial, komunitas teh dapat meningkatkan sistem untuk mengharuskan garpu dideklarasikan, bahkan mungkin terdeteksi saat sebuah paket diserahkan.
Garpu yang tidak dideklarasikan yang diungkapkan oleh tea tasters dapat mengakibatkan sebagian token yang direndam dipotong, ditransfer ke pengelola paket asli, dan dikirim ke tea tasters yang mengungkapkan garpu.

## Runtime vs Membangun Ketergantungan

Teh mungkin tidak membedakan ketergantungan build dari ketergantungan runtime saat mendistribusikan hadiah seduhan saat peluncuran.
Namun, asalkan komunitas teh merasa sangat ingin membuat perbedaan seperti itu, komunitas teh dapat mengusulkan peningkatan algoritma distribusi steeping rewards untuk memperhitungkan kekritisan setiap ketergantungan dan kontribusinya terhadap nilai paket yang bergantung padanya.
Proposal ini akan dipilih dan diimplementasikan berdasarkan keputusan komunitas.

## Imbalan Berbasis Penggunaan

Karena semakin banyak aplikasi yang dibangun menggunakan paket yang terdaftar dengan teh, komunitas dapat menambah algoritma imbalan sehingga alokasi dapat dipengaruhi oleh dataset eksternal yang dibuktikan seperti penggunaan.
Pembaruan mekanisme imbalan ini dapat memungkinkan alokasi imbalan token teh yang lebih tinggi untuk mengalir ke paket dengan penggunaan tertinggi sambil tetap menghormati batasan rasio seduhan yang dijelaskan di bagian token teh.
Pengelola paket dapat menggunakan pendekatan serupa untuk mendistribusikan reward seduhan di seluruh dependensi mereka berdasarkan logika transparan pilihan mereka.
Perhatikan bahwa semua informasi yang digunakan untuk mempengaruhi distribusi imbalan di seluruh paket dan ketergantungan dalam sistem teh perlu dibuktikan dapat diandalkan.


# Ucapan Terima Kasih

Buku putih ini tidak akan ada tanpa dukungan dan dedikasi dari banyak teaophiles.
Para penulis ingin mengucapkan terima kasih kepada Josh Kruger, Jadid Khan, dan Jacob Heider atas kontribusinya terhadap tokenomics dan banyak individu yang secara diam-diam meluangkan waktu mereka untuk memberikan umpan balik tentang isi dokumen ini.

$\parskip=0pt plus 1pt$

# Glossary of Terms

| Jangka waktu | Definisi |
|------|------------|
| Daun | Denominasi terkecil dari token teh. Sebuah daun setara dengan satu per seratus juta ($10^{-8}$) teh. |
| Memangkas | Tindakan menghukum steeper atau staker sebagai respons terhadap perilaku yang bertentangan dengan aturan jaringan. |
| Pertaruhan | Tindakan mengunci token teh untuk mengamankan jaringan bukti kepemilikan yang menjadi dasar sistem teh dibangun. |
| Mengepul | Tindakan mengunci token teh untuk mendukung klaim Anda dan menerima hadiah (atau penalti) berdasarkan konsensus tentang validitas klaim Anda. |


# Referensi
