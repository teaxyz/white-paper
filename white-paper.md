# Penafian

Informasi yang ditetapkan dalam buku putih ini bersifat pendahuluan.
Akibatnya, baik penulis maupun afiliasinya masing-masing tidak bertanggung jawab bahwa informasi yang ditetapkan di sini adalah final atau benar dan masing-masing penyangkalan di atas,
sejauh diizinkan oleh hukum yang berlaku, setiap dan semua kewajiban baik yang timbul dalam gugatan, kontrak, atau lainnya sehubungan dengan buku putih ini.
Buku putih ini maupun apa pun yang terkandung di sini tidak boleh menjadi dasar atau diandalkan sehubungan dengan atau bertindak sebagai bujukan untuk mengadakan kontrak atau komitmen apa pun.

Tidak ada dalam kertas putih ini yang merupakan tawaran untuk menjual atau ajakan untuk membeli token yang dibahas di sini.
Dalam keadaan apa pun, jika buku putih ini dianggap sebagai tawaran atau ajakan semacam itu, tidak ada tawaran atau ajakan seperti itu yang dimaksudkan atau disampaikan oleh buku putih ini di yurisdiksi mana pun yang melanggar hukum untuk melakukannya,
di mana tawaran atau ajakan semacam itu memerlukan lisensi atau pendaftaran, atau di mana tawaran atau ajakan semacam itu tunduk pada pembatasan.
Secara khusus, setiap token yang dibahas di sini belum, dan, sejak tanggal penerbitan buku putih ini, tidak dimaksudkan untuk didaftarkan di bawah sekuritas atau undang-undang serupa di yurisdiksi mana pun,
apakah yurisdiksi tersebut menganggap token tersebut sebagai sekuritas atau instrumen serupa dan tidak boleh ditawarkan atau dijual di yurisdiksi mana pun di mana melakukannya akan merupakan pelanggaran terhadap undang-undang yang relevan dari yurisdiksi tersebut.

# Lisensi

Kode sumber[^src] makalah ini tersedia di bawah lisensi Creative Commons Attribution-ShareAlike 4.0 International[^cc] license.

[^src]: See: @sources
[^cc]: See: @cc

# Pengantar

Internet sebagian besar terdiri dari proyek-proyek open-source dan telah sejak awal.
Seiring waktu, banyak dari proyek ini telah menjadi bagian dasar di mana semua inovasi masa depan dibangun.
Dan sementara kekayaan telah dibuat darinya, sumber terbuka terutama dibuat dan dipelihara tanpa kompensasi.

Kami percaya bahwa keseluruhan upaya manusia modern telah terhambat dengan mengandalkan persentase terkecil dari insinyur dunia untuk memilih antara gaji atau menjaga Internet tetap berjalan.
Sumber terbuka adalah pekerjaan cinta yang sering terhalang oleh kurangnya insentif ekonomi yang berarti sehingga proyek yang benar-benar bermanfaat tidak pernah mencapai potensi mereka sementara yang lain menderita masalah keamanan karena kurangnya insentif untuk memelihara perangkat lunak sepanjang siklus hidupnya.
Untuk sepenuhnya menyadari potensi kami, kami membutuhkan sistem remunerasi yang adil untuk ekosistem open-source yang tidak secara mendasar mengubah cara ia dibangun atau digunakan.

Perusahaan sering membungkus model bisnis di sekitar sumber terbuka, menghasilkan pendapatan langsung dari pekerjaan pengembang yang baik hati sambil juga mengandalkan mereka untuk memperbaiki bug saat masalah terjadi.
Contoh yang bagus adalah insiden baru-baru ini yang melibatkan kerentanan keamanan kritis di Log4j, sebuah paket dari Apache Software Foundation yang ditemukan di banyak perangkat lunak dan layanan komersial yang digunakan oleh perusahaan dan pemerintah.
Pada November 2021, seorang peneliti keamanan yang bekerja untuk Alibaba Group Holding Ltd. melaporkan kerentanan CVE-2021-44228[^1], yang menerima skor dasar setinggi mungkin dari Apache Software Foundation.
Amit Yoran, Kepala Eksekutif Tenable dan direktur pendiri Tim Kesiapan Darurat Komputer Amerika Serikat (US-CERT), menggambarkan kerentanan ini sebagai "kerentanan tunggal terbesar dan paling kritis dalam dekade terakhir"[^2].
Kepanikan terjadi dan beberapa sukarelawan yang mempertahankan paket ini mendapat kecaman publik karena kegagalannya.
Setelah mengatasi kemarahan dengan permohonan sederhana untuk keadilan, sistem ditambal.
Perusahaan dan pemerintah akhirnya menyadari bahwa Log4j, sebuah paket yang digunakan oleh berbagai sistem kritis selama dua dekade, dikelola oleh beberapa sukarelawan yang tidak dibayar, pahlawan tanpa tanda jasa yang sama yang langsung beraksi meskipun ada penyalahgunaan dari industri[^3] dan bekerja tanpa lelah  untuk mengatasi kerentanan.

Perusahaan sering membungkus model bisnis di sekitar sumber terbuka, menghasilkan pendapatan langsung dari pekerjaan pengembang yang baik hati sambil juga mengandalkan mereka untuk memperbaiki bug saat masalah terjadi.
Contoh yang bagus adalah insiden baru-baru ini yang melibatkan kerentanan keamanan kritis di Log4j, sebuah paket dari Apache Software Foundation yang ditemukan di banyak perangkat lunak dan layanan komersial yang digunakan oleh perusahaan dan pemerintah.
Pada November 2021, seorang peneliti keamanan yang bekerja untuk Alibaba Group Holding Ltd. melaporkan kerentanan CVE-2021-44228[^1], yang menerima skor dasar setinggi mungkin dari Apache Software Foundation.
Amit Yoran, Kepala Eksekutif Tenable dan direktur pendiri Tim Kesiapan Darurat Komputer Amerika Serikat (US-CERT), menggambarkan kerentanan ini sebagai "kerentanan tunggal terbesar dan paling kritis dalam dekade terakhir"[^2].
Kepanikan terjadi dan beberapa sukarelawan yang mempertahankan paket ini mendapat kecaman publik karena kegagalannya.
Setelah mengatasi kemarahan dengan permohonan sederhana untuk keadilan, sistem ditambal.

Perusahaan dan pemerintah akhirnya menyadari bahwa Log4j, sebuah paket yang digunakan oleh berbagai sistem kritis selama dua dekade, dikelola oleh beberapa sukarelawan yang tidak dibayar, pahlawan tanpa tanda jasa yang sama yang langsung beraksi meskipun ada penyalahgunaan dari industri[^3] dan bekerja tanpa lelah  untuk mengatasi kerentanan.

![Simplified pemandangan sistem hadiah seduhan teh.](img/figure-1.svg)

$\parskip=0pt plus 1pt$

[^1]: Source: @nist
[^2]: Source: @reuters
[^3]: Source: @twitter


# Komponen
Pengembang perangkat lunak yang membangun aplikasi membutuhkan empat hal: browser, terminal, editor, dan manajer paket.
Dari keempatnya, manajer paket adalah yang mengontrol perkakas dan kerangka kerja yang dibutuhkan pengembang untuk membangun produk mereka.
Lapisan ini adalah tempat kami melihat potensi untuk mengubah cara sumber terbuka digaji.

## Manajer Paket

Manajer paket mengetahui perangkat lunak sumber terbuka apa yang bergantung pada aplikasi untuk berfungsi, dari atas menara hingga dasarnya.
Setiap komponen dan versi yang penting untuk aplikasi diketahui dan direkam.
Ia tahu bahwa bagian atas menara dengan hati-hati memilih ketergantungannya dan bahwa pemilihan yang cermat berlanjut ke bawah.
Manajer paket ditempatkan secara unik di tumpukan alat pengembang untuk memungkinkan distribusi nilai otomatis dan tepat berdasarkan penggunaan dunia nyata yang sebenarnya.

Kami mengusulkan registri terdesentralisasi yang tidak dapat diubah yang dirancang untuk mendistribusikan nilai berdasarkan algoritme yang menentukan kontribusi setiap entri terhadap utilitas dan kesehatan sistem.
Nilai dapat memasuki grafik pada titik puncak—aplikasi dan pustaka penting—dan didistribusikan ke dependensi titik puncak tersebut dan dependensinya secara rekursif karena registri mengetahui seluruh grafik sumber terbuka.

Selain itu, kami percaya bahwa informasi material harus tersedia melalui manajer paket agar pengembang dapat menilai apakah mereka dapat mempercayai sebuah paket dan pembuatnya.
Informasi ini mungkin didasarkan pada reputasi, pujian komunitas, data yang diambil dari sistem identitas terdesentralisasi (DID[^4]), manajer paket lain, atau mekanisme insentif yang berpotensi mengandalkan peserta jaringan yang membahayakan nilai ekonomi.

Kami memperkirakan bahwa kombinasi alat, informasi, dan penghargaan teh akan secara adil memberi insentif kepada pengembang, membantu merangsang pertumbuhan perangkat lunak sumber terbuka dan mendorong inovasi.

[^4]: See: @w3

## Registri Terdesentralisasi

 Setiap manajer paket memiliki registri paketnya sendiri yang menduplikasi metadata yang sama berulang kali.
 Sudah saatnya ada registri tunggal, komprehensif dan definitif yang dirancang dan diatur oleh komunitas yang bergantung padanya.
 Registri yang terdesentralisasi dan tidak dapat diubah ini dapat memberikan keamanan, stabilitas, dan pencegahan
 niat jahat.

 Internet berjalan pada puluhan ribu komponen sumber terbuka yang vital.
 Sungguh luar biasa bahwa sejauh ini, insiden yang disebabkan oleh penghapusan infrastruktur sumber terbuka yang penting sangat minim.
 Yang paling terkenal adalah penghapusan ketergantungan NPM left-pad[^5] pada tahun 2016, yang mengalir ke dalam integrasi berkelanjutan dan sistem penerapan berkelanjutan yang membuat pengembang tinggi dan kering selama berhari-hari.
 Peristiwa ini menunjukkan bahwa Internet itu sendiri didasarkan pada sistem pembangunan yang rapuh.
 Contoh lain melibatkan partisipasi aktif atau disengaja dari pengelola paket yang menyabotase paket populer mereka (Lihat colors.js, faker.js[^6], dan node-ipc[^7]),
 atau aktor jahat yang mencari untung dengan berpura-pura membantu memelihara paket dan merusaknya untuk mencuri, misalnya, kunci pribadi Bitcoin (Lihat aliran peristiwa[^8]),
 atau paket berbahaya dengan kesalahan ejaan yang disengaja, juga dikenal sebagai salah ketik,
 dengan harapan mengelabui pengguna agar menginstalnya, misalnya paket NPM crossenv vs. cross-env[^npmjsCrossenv].

 Integritas perangkat lunak perlu dijamin seiring kemajuan industri menuju masa depan di mana aset digital merupakan bagian dari perangkat lunak.
 Kami tidak dapat terus membiarkan diri kami rentan terhadap pelaku jahat yang memodifikasi perangkat lunak.

 Sebagian besar alat yang kami sebut manajer paket tidak dapat menjamin bahwa paket yang ada di dalam aplikasi dan dApps ini adalah kode sumber terbuka yang tidak diubah yang diterbitkan oleh penulis aslinya.
 GitHub Microsoft telah menemukan bahwa 17% kerentanan dalam perangkat lunak ditanam untuk tujuan jahat[^9], dengan beberapa sisanya tidak terdeteksi untuk waktu yang lama (Lihat Webmin 1.890[^10]).

 Registri terdesentralisasi ditambah dengan sistem reputasi dan didukung oleh insentif ekonomi yang dirancang untuk mengekspos pelaku buruk dan memberi penghargaan kepada pelaku yang baik dapat memberikan jaminan yang telah dicari oleh komunitas pengembang.


[^5]: Source: @theregister
[^6]: Source: @fossa
[^7]: Source: @lunasec
[^8]: Source: @github
[^npmjsCrossenv]: Source: @npmjsCrossenv
[^9]: Source: @zdnet
[^10]: Source: @threatpost


## Sistem Penyimpanan

 Paket sumber terbuka memberikan berbagai fungsionalitas, beberapa di antaranya mungkin dibatasi atau tidak diinginkan.
 Enkripsi adalah contoh yang sangat baik untuk itu.
 Kasus penggunaan penting untuk enkripsi adalah dukungan privasi individu di seluruh dunia.
 Enkripsi, bagaimanapun, juga dapat digunakan untuk tujuan jahat (lihat Phantom Secure, dibongkar oleh lembaga penegak hukum pada Maret 2018[^11]) atau dapat dikompromikan untuk mendukung kegiatan penegakan hukum (Lihat Operasi Ironside (AFP), Operasi Greenlight (Europol  ),
 dan Operation Trojan Shield (FBI)[^12] di mana FBI mengoperasikan platform komunikasi "terenkripsi", AN0M, dan meyakinkan para penjahat untuk menggunakan ponsel "terenkripsi" mereka untuk komunikasi yang aman).

 Aplikasi luas Enkripsi telah menjadikannya kasus penggunaan yang sempurna untuk perangkat lunak sumber terbuka dan contoh yang bagus bahwa solusi apa pun yang menyimpan paket harus tahan terhadap kerusakan dan sensor.
 tea adalah protokol terdesentralisasi yang tidak bermaksud memfilter atau menyetujui paket berdasarkan fungsinya.
 Sementara tata kelola teh dapat memilih untuk menghapus paket berbahaya yang terbukti (lihat bagian tata kelola untuk informasi lebih lanjut), sangat penting bagi sistem teh untuk terhubung dengan beberapa sistem penyimpanan, termasuk yang terdesentralisasi yang menunjukkan bahwa sebuah paket tidak diubah dan direplikasi dengan benar.
 Pengelola paket dapat memilih sistem penyimpanan yang paling sesuai dengan kebutuhan mereka untuk menyimpan dan mendistribusikan paket mereka dengan aman.

[^11]: Source: @fbi
[^12]: Source: @europol

# Peserta Jaringan

 misi tea adalah untuk memberdayakan komunitas sumber terbuka dan memastikan kontributor mereka didukung saat mereka membuat alat yang membangun Internet.
 Dalam buku putih ini, kami membedakan peserta melalui kontribusi mereka.
 Beberapa mungkin menyumbangkan kode atau memverifikasi kode yang disumbangkan.
 Orang lain mungkin memberikan nilai ekonomi untuk mendukung pengembang dan reputasi mereka.

## Pengelola Paket

 Pengelola paket harus memastikan perangkat lunak mereka terus memberikan peningkatan nilai seiring perkembangan industri.

 tea mengasumsikan bahwa pembuat paket mempertahankan pekerjaan mereka.
 Pengelola paket adalah pilar komunitas sumber terbuka yang perlu diberdayakan dan diberi penghargaan atas kontribusi berkelanjutan mereka.
 Pengelola paket dapat memutuskan untuk menghentikan upaya pemeliharaan mereka atau menyadari bahwa mereka tidak dapat beroperasi pada kecepatan yang sesuai dengan harapan pengguna paket.
 Pengelola paket menerima token non-fungible (NFT) saat mereka menyelesaikan pengiriman paket (lihat bagian NFT pengelola untuk detail tambahan).
 NFT ini digunakan untuk membuktikan pekerjaan mereka dan merupakan kunci yang mengarahkan penghargaan teh.
 Pemegang NFT paket dapat mentransfer kepemilikannya ke pengembang lain (atau grup pengembang), sehingga menjadikan mereka pengelola paket dan penerima hadiah di masa mendatang.
 Demikian pula, seorang pengembang dapat memutuskan untuk mengambil peran sebagai pengelola paket dengan melakukan forking pada paket yang ada dan mengirimkan yang baru yang akan mereka pertahankan ke depan, sehingga menjadi pembuat dan pengelola paket itu sendiri.

 Sangat penting untuk menyediakan komunitas pengembang dengan alat yang tepat untuk menentukan paket mana yang dipertahankan dan reputasi serta kualitas pekerjaan pengelola masa lalu dan sekarang.
 Kami terlalu sering melihat pekerjaan open-source dirusak dan upaya banyak orang dirusak oleh aktor jahat.
 Meskipun pekerjaan aktor jahat ini sebagian besar ditemukan dan diperbaiki, seringkali tidak sampai kerusakan signifikan telah terjadi melalui kehilangan keuangan atau data.
 Ambil contoh paket EventStream npm[^13] yang diunduh lebih dari 1,5 juta kali per minggu dan diandalkan oleh lebih dari 1.500 paket ketika seorang peretas berhasil menembus proyek sumber terbuka,
 dapatkan kepercayaan dari pembuat aslinya dan ubah EventStream agar bergantung pada paket berbahaya yang akan mengekstrak kredensial dompet bitcoin ke server pihak ketiga\.
 Meskipun alat dapat membantu mendeteksi beberapa serangan ini, mereka tidak selalu dapat diandalkan, yang membuat seluruh komunitas bergantung pada ketekunan dan kesediaan satu sama lain untuk berbagi temuan mereka.

 Kami mengusulkan untuk memperkenalkan insentif melalui token teh yang dijelaskan di bagian token teh, mendorong komunitas sumber terbuka untuk melaporkan temuan mereka secara konstruktif, sehingga pengelola paket dapat mengatasinya sebelum dieksploitasi.

[^13]: Source: @medium

## Pengguna Paket

 Pengguna paket adalah pengembang perangkat lunak yang berfokus pada pemecahan masalah tertentu.
 Mereka sering mencari di komunitas sumber terbuka untuk alat yang mereka butuhkan untuk bereksperimen dengan cepat dan beralih dengan sangat sedikit atau tanpa biaya, yang secara langsung mendapat manfaat dari pekerjaan pembuat dan pengelola paket.
 Secara tradisional, subset mungkin telah memilih untuk mendukung pengelola paket melalui donasi atau bentuk remunerasi lainnya;  namun, hal ini jarang terjadi.

 Sponsor dapat menjadi sistem yang efektif untuk mendukung pengembangan sumber terbuka;  namun, remunerasi biasanya tidak mencakup semua dependensi.
 Keterbatasan ini menguntungkan favorit dan menghalangi inovasi dan pembuatan perangkat lunak.
 Untuk berjuang sebagai dasar pengembangan perangkat lunak, sumber terbuka harus memberdayakan semua pengembang, baik pemula atau ahli, di semua lapisan di menara.

 tujuan teh adalah untuk mempertahankan nilai-nilai inti dari perangkat lunak sumber terbuka sambil menyediakan sistem terdesentralisasi untuk memberi imbalan kepada pengelola paket untuk pekerjaan mereka.
 Untuk mewujudkan misi ini, teh bermaksud untuk mengembangkan — dan memberi insentif kepada orang lain untuk mengembangkan — mekanisme bagi pengguna paket untuk mendukung pengelola paket melalui kasus penggunaan token teh yang unik, seperti yang dijelaskan dalam token teh dan pekerjaan masa depan dan bagian upaya komunitas potensial.

 ## Paket Pendukung dan Sponsor

 Di Web 2.0 dan web3, pendukung paket sering disebut "sponsor".  Mereka adalah organisasi atau pengguna paket yang menggunakan perangkat lunak sumber terbuka untuk membangun produk komersial mereka, dermawan yang ingin mendukung ekosistem, atau pengusaha yang ingin mendanai tim untuk mengembangkan komponen sistem yang lebih besar.

 tea mengusulkan untuk memperluas komunitas pendukung paket ke seluruh komunitas teh, baik organisasi, pengembang, pengguna, atau penggemar teknologi.
 tujuan teh adalah untuk menerapkan mekanisme insentif terdesentralisasi melalui kasus penggunaan unik dari token teh untuk setiap anggota komunitas teh untuk berkontribusi pada keberlanjutan abadi dan pertumbuhan sumber terbuka yang berkelanjutan.
 Pendukung dan sponsor paket bebas memutuskan paket atau pengelola paket mana yang ingin mereka dukung berdasarkan pekerjaan, keyakinan, atau kriteria dan metrik apa pun yang akan memengaruhi keputusan mereka.
 Selain itu, dukungan yang diberikan oleh pendukung dan sponsor paket akan mengalir ke dependensi setiap paket, sehingga secara implisit memercayai pengelola paket untuk membuat pilihan yang baik tentang tumpukan mereka dan menggunakan informasi ini untuk berkontribusi pada reputasi mereka.

 Asalkan pengelola paket menawarkan layanan tersebut, pendukung dan sponsor paket dapat menerima NFT tingkat dukungan premium sebagai imbalannya, sehingga mendapat manfaat dari SLA yang dipercepat atau lisensi yang lebih fleksibel.
 Selain itu, pendukung dan sponsor paket dapat memutuskan untuk mendukung paket atau pengelola paket dan secara otomatis mengalihkan semua atau sebagian dari hadiah mereka untuk memberi insentif kepada tim untuk membangun perangkat lunak sumber terbuka baru.
 Dengan kata lain, paket tidak perlu ada agar teh mulai mengalir.
 Proyek yang baru lahir dapat didukung sama seperti proyek yang lebih matang, yang selanjutnya mendorong lanskap sumber terbuka yang terus berkembang.

 ## pencicip teh

 Saat paket baru atau versi baru dari paket yang ada dirilis, validitas pekerjaan perlu dibuktikan.
 Informasi ini sangat penting bagi pengguna paket untuk memutuskan apakah akan mempercayai paket dan pengelolanya atau tidak.
 Dengan protokol teh, fungsi ini disediakan oleh pencicip teh.

 pencicip teh, biasanya, adalah pengembang perangkat lunak berpengalaman yang bersedia mendedikasikan sebagian waktu mereka untuk memeriksa klaim yang terkait dengan sebuah paket (fungsionalitas, keamanan, versi semantik[^14], akurasi lisensi, dll.)
 dan mempertaruhkan reputasi dan nilai ekonomi mereka untuk menunjukkan hasil penelitian dan analisis mereka dan mendukung ulasan mereka.
 pencicip teh menerima penghargaan atas ketekunan dan upaya mereka.
 Di teh, kami menyebut "menyeduh teh Anda" tindakan mengunci token teh untuk mendukung ulasan Anda dan menerima hadiah (atau penalti) berdasarkan konsensus tentang validitas ulasan Anda.

 Seperti pendukung paket, pencicip teh dapat memengaruhi reputasi pengelola paket dan kemasan;  namun, dampaknya lebih signifikan mengingat peran mereka dalam memvalidasi keamanan, fungsionalitas, dan kualitas paket.
 pencicip teh juga perlu membangun reputasi mereka untuk mendukung klaim mereka.
 Kualitas pekerjaan mereka dan nilai ekonomi yang mereka pertaruhkan saat ulasan mereka curam dikombinasikan dengan sumber data eksternal lainnya akan membangun reputasi masing-masing pencicip teh, membawa nilai lebih pada pekerjaan mereka.
 Lihat bagian reputasi paket untuk detail selengkapnya tentang mekanisme yang digunakan untuk memengaruhi reputasi pengelola paket dan paket.

[^14]: See: @semver

# Ikhtisar Protokol

 Desain protokol untuk menghargai kontribusi sumber terbuka penuh dengan tantangan.
 Perangkat lunak sumber terbuka menurut definisinya terbuka untuk semua dan dapat, sebagai akibatnya, menjadi sasaran kesalahan atribusi, apropriasi, atau gangguan berbahaya.
 Namun, komunitas open-source secara konsisten menunjukkan kesediaannya untuk menyoroti aktor yang baik dan mengekspos aktor yang buruk.
 Secara historis, energi yang dihabiskan untuk meninjau dan mengomentari kontribusi pengembang lain sepenuhnya bersifat sukarela, meskipun pelaporan dan mempertahankan temuan mungkin memakan waktu dan sangat penting.

 Kami bermaksud membuat platform distribusi tanpa kepercayaan untuk aplikasi yang dijamin dengan reputasi dan insentif keuangan, karena kami yakin imbalan yang memadai untuk kontribusi sumber terbuka tidak akan berhasil tanpa sistem reputasi dan kemampuan anggota komunitas untuk mengomunikasikan temuan dan dukungan mereka (atau  perbedaan pendapat) untuk paket atau karya pengembang.

 Kami harus menyediakan alat bagi pengembang untuk mengakses dan berkontribusi pada sistem reputasi ini.
 Alat yang menyertakan akses visual dan programmable sederhana ke versi dan reputasi semua dependensi dalam paketnya.
 Pemahaman yang jelas tentang anggota komunitas mana yang mendukung setiap paket dan berapa banyak token teh yang mereka minum akan berkontribusi pada reputasi setiap paket, sama seperti seberapa banyak pengelola paket menyeduh pekerjaan mereka mengomunikasikan seberapa besar mereka berdiri di belakang pekerjaan mereka.
 Titik data gabungan ini akan membantu menginformasikan sistem reputasi untuk semua anggota komunitas dan memfasilitasi pilihan.
 Karena peretasan paket EventStream tidak dilakukan melalui paket itu sendiri, tetapi melalui salah satu dependensinya, visibilitas di semua lapisan dependensi akan sangat penting untuk membangun sistem tanpa kepercayaan ini.
 Namun, pertimbangan seperti biaya komputasi dan transaksi (“gas”) perlu diprioritaskan saat sistem dirancang dan dibangun.

 Tujuan kami adalah untuk memberi penghargaan kepada pengembang Web 2.0 dan web3.
 Kerumitan dan spesifikasi setiap tumpukan membuatnya sehingga pelacakan instalasi dan penghapusan instalasi paket dapat dengan mudah menjadi korban satu atau lebih aktor jahat.
 Itu termasuk "membeli" instalasi untuk meningkatkan angka secara artifisial.
 Skenario yang lebih buruk akan memperkenalkan perubahan mendasar pada sifat perangkat lunak sumber terbuka dengan menciptakan gesekan yang tidak perlu dengan kunci lisensi atau mekanisme pelacakan penyebaran lainnya.
 Untuk memberikan cakupan terluas, kami percaya bahwa penghargaan tidak boleh bergantung pada gagasan sederhana tentang pelacakan instalasi atau penghapusan instalasi, tetapi lebih pada mekanisme insentif yang mendorong pengiriman paket berkualitas dan pelaporan paket jahat atau berisiko tinggi.
 Terakhir, banyak paket bergantung pada dependensi umum.
 Misalnya, Lodash memiliki 151.209 tanggungan[^15] sedangkan kapur memiliki 78.854 tanggungan[^16] atau Log4js memiliki 3.343 tanggungan[^17].
 Karena lebih banyak paket dibuat menggunakan dependensi yang sama, bagaimana kita memastikan bahwa insentif didistribusikan secara adil dan merata?
 Bagaimana kami memastikan bahwa dependensi yang paling banyak digunakan dihargai tanpa membuat paket dan pengembang baru atau yang baru muncul kelaparan?
 Bagaimana kita memastikan bahwa sistem insentif tidak berakhir dengan mengarahkan pengembang dari bahasa khusus untuk memusatkan mereka di tempat yang insentifnya lebih baik?
 Tetapi juga, sebagai pengembang, bagaimana kita mengidentifikasi paket dengan tanggungan paling banyak untuk membangun alternatif - versi paket ini yang lebih ramping, lebih efisien, dan memiliki kode yang lebih baik?
 Saat minum teh, kami percaya bahwa kurangnya insentif telah menghambat evolusi perangkat lunak sumber terbuka.
 Didukung oleh insentif dan penghargaan ekonomi yang tepat, lebih banyak pengembang akan berada dalam posisi untuk membangun, meningkatkan, dan menambah perangkat lunak sumber terbuka untuk kemajuan dunia.
 Hanya dengan begitu token teh dapat mewakili nilai total perangkat lunak sumber terbuka.

[^15]: Source: @npmjsLodash
[^16]: Source: @npmjsChalk
[^17]: Source: @npmjsLogFourjs

## Pengiriman Paket

 Pengajuan rilis paket membutuhkan beberapa transaksi terjadi secara atom.
 Secara khusus, pengelola paket harus:

 * Daftarkan paket (dan versi semantiknya) dengan registri terdesentralisasi.
 * Unggah paket ke dalam sistem penyimpanan terdesentralisasi untuk ketahanan, ketahanan sensor, dan kemudahan distribusi.
 * Berkontribusi pada reputasi dan kepercayaan paket dengan *menyeduh* token teh.

 Kegagalan salah satu dari tiga operasi akan mengakibatkan protokol kembali ke keadaan sebelumnya, sehingga menghilangkan bukti penyerahan.

 Ketika sebuah paket berhasil dikirimkan, pengelola paket akan menerima NFT pengelola untuk membuktikan pekerjaan dan kontribusi mereka pada sumber terbuka.
 Pengelola paket dapat mentransfer hadiah seduhan yang terkait dengan NFT pengelola ke pihak ketiga.
 Namun, reputasi yang terkait dengan pembuatan dan pemeliharaan aset akan tetap ada pada pengelola paket, sehingga reputasinya dapat terpengaruh seiring waktu.
 Ketika reputasi setiap anggota komunitas teh mencapai tonggak penting, mereka dapat diberikan akses ke bagian protokol yang lebih tinggi atau menerima hadiah yang dipercepat, sebagaimana diputuskan oleh tata kelola teh.
 Untuk detail lebih lanjut tentang NFT pengelola, lihat bagian NFT pengelola.

 ### Analisis Ketergantungan

 Ketergantungan paket dapat berjalan dalam, karena setiap paket sering kali memiliki dependensi dan dependensi.
 Untuk menyediakan metodologi sederhana yang memberi penghargaan kepada semua pengembang yang telah berkontribusi pada perangkat lunak sumber terbuka sambil menjaga pembuatan pohon dependensi cepat dan efisien secara komputasi, kami mengusulkan untuk memverifikasi hanya dependensi tingkat pertama setelah pengiriman paket.

 Desain ini didorong oleh hipotesis bahwa setiap ketergantungan itu sendiri merupakan paket yang secara independen diserahkan ke pohon teh.
 Dengan demikian, setiap dependensinya dapat dipetakan, dan jika dependensinya memiliki dependensi sendiri, dependensi tersebut akan dipetakan pada saat paket dependensi dikirimkan.

![Dependencies analysis diagram.](img/figure-3.svg){#fig:dep-analysis}

Dalam @fig:dep-analysis, pengiriman paket A memicu analisis dependensi runtime 1 hingga n dan dependensi build 1 hingga n, sedangkan dependensi runtime 1.1 hingga 1.n dan dependensi build 1.1 hingga 1.n dianalisis saat paket B  telah diserahkan.
 Kami akan menerapkan metodologi yang sama untuk distribusi insentif karena token yang direndam didistribusikan di semua dependensi, sehingga secara rekursif menyeduh paket yang terdaftar sebagai dependensi (lihat @fig:steeping-rewards).

![Steeping rewards distribution across dependencies.](img/figure-2.svg){#fig:steeping-rewards}


Pembuatan versi dan dependensi yang saling bertentangan adalah tantangan yang signifikan, dan pemecahan masalah dapat berubah menjadi pengurasan waktu yang sangat besar.
 Untuk mengatasi hal ini, kami mengusulkan agar setiap paket tunduk pada pemindaian ketergantungan yang komprehensif setelah pengiriman sehingga kami dapat memastikan bahwa paket tersebut mematuhi aturan berikut untuk rentang versi semantik.

 * Paket hanya dapat membatasi dependensinya ke versi utama, meskipun awal rentang dapat berupa versi semantik yang valid (mis., >=5.2.1 <6).
 * Jika ketergantungan ditingkatkan ke versi utama yang lebih baru, teh mungkin mengharuskan versi utama paket ditingkatkan.
 * Demikian pula, jika ketergantungan ditingkatkan ke versi minor yang lebih baru, teh mungkin mengharuskan versi minor paket ditingkatkan.
 * Jika ketergantungan baru ditambahkan, teh mungkin mengharuskan versi minor paket ditingkatkan.

 Mempertimbangkan upaya yang tidak perlu yang dikenakan pada setiap pengguna paket ketika aturan di atas dilanggar, kami mengusulkan agar sebagian dari token teh yang direndam oleh pengelola paket dipotong untuk mencerminkan kurangnya uji tuntas mereka.
 Jika pengembang memaksa semua orang untuk menyulap cangkir mereka, seseorang akan menumpahkan teh.
 Karena pemindaian ketergantungan diharapkan terjadi saat penyerahan, kami harus mencatat bahwa tidak ada seduhan dari pendukung paket dan sponsor atau pencicip teh yang akan terjadi.

 ## Reputasi Pengelola Paket & Paket

 Pengelola paket harus berkontribusi pada reputasi dan kepercayaan paket mereka dengan menyeduh token teh.
 Namun, sistem reputasi yang hanya mengandalkan kontribusi ekonomi penulis tidak memberikan perlindungan pengguna yang memadai dan dapat menjadi sasaran serangan Sybil, di mana satu individu membuat beberapa representasi diri mereka sendiri untuk meninggalkan sejumlah besar ulasan positif pada pekerjaan mereka,
 menipu pengguna agar percaya bahwa pekerjaan mereka telah ditinjau dan disetujui oleh banyak orang.

 Beberapa metodologi tersedia untuk mencegah serangan Sybil, beberapa di antaranya dijelaskan oleh Nitish Balachandran dan Sugata Sanyal dalam “A Review of Techniques to Mitigate Sybil Attacks”[^18].
 Karena teh adalah protokol terdesentralisasi, menggunakan sistem sertifikasi kepercayaan yang bergantung pada otoritas penerbitan sertifikat terpusat akan bertentangan dengan intinya.
 Kami mengusulkan untuk fokus pada pendekatan desentralisasi untuk mitigasi serangan Sybil dan, lebih khusus lagi, pada metodologi yang mengandalkan sekelompok besar peserta jaringan yang diberi insentif untuk menilai dan secara publik mewakili reputasi setiap paket dan pengelolanya.

 Mirip dengan produksi blok pada blockchain proof-of-stake, di mana node yang tidak memproduksi dapat memvalidasi pekerjaan orang lain dan, bila perlu, menyoroti pelanggaran aturan jaringan, yang mengarah pada hukuman aktor jahat  melalui tebasan (penghancuran sebagian dari pasak mereka),
 kami mengusulkan sistem di mana pihak ketiga (alias pencicip teh) akan dapat meninjau paket yang diproduksi oleh pengelola paket dan diberi insentif secara ekonomi untuk berperilaku demi kepentingan terbaik komunitas perangkat lunak sumber terbuka dan penggunanya serta mengenali perilaku yang baik dan  menghukum perilaku buruk.
 Sistem ini harus tahan terhadap Sybil dan mencegah pemegang token besar secara material mempengaruhi protokol atau reputasi paket tertentu.
 Kami percaya pendekatan ini lebih selaras dengan open-source, menyediakan substrat yang lebih subur untuk mendorong adopsi dan kepercayaan, dan pada akhirnya memfasilitasi pertumbuhan teh.

[^18]: Source: @arxiv

## Review Paket oleh Pihak Ketiga

 Tinjauan paket oleh pihak ketiga merupakan komponen penting dalam membangun reputasi, namun tinjauan pihak ketiga memiliki serangkaian ancaman uniknya sendiri termasuk serangan Sybil yang disebutkan di atas.

 Teknologi Blockchain, dan secara lebih eksplisit mempertaruhkan, menawarkan peluang unik bagi teh untuk mengatasi tantangan ini.
 Meskipun alamat dompet mungkin tersedia dalam jumlah tak terbatas, ini tidak terjadi dengan token teh, yang pasokan awalnya diperkirakan 10 miliar.
 Selain itu, setiap tindakan yang dilakukan oleh pengembang, seperti mengirimkan paket, memverifikasi paket, atau menyeduhnya, akan berkontribusi pada reputasi mereka, sehingga menciptakan profil unik yang dapat digunakan setiap pengembang untuk berkontribusi pada komunitas teh dan berpartisipasi dalam tata kelola teh.

 Dengan mengharuskan peninjau pihak ketiga untuk menyeduh token teh dan menanggung risiko kehilangan sebagian dari token mereka jika mereka ternyata berperilaku bertentangan dengan kepentingan jaringan atau menjadi aktor yang buruk, pihak ketiga dapat memberikan kepercayaan tambahan untuk sebuah paket dan  menerima hadiah, berupa token teh.

 Kami juga mengusulkan perluasan sistem reputasi kepada pihak ketiga yang melakukan verifikasi independen paket - pencicip teh.
 Penyelesaian tinjauan positif akan membutuhkan dua operasi untuk terjadi secara atom:

 * Pengajuan tinjauan kode, ditandatangani oleh pengecap teh dan dapat diakses publik oleh semua anggota komunitas, bersama dengan
 * Tindakan seduhan "untuk" paket (vs. "melawan" paket), untuk mendukung ulasan mereka.

 Penyelesaian tinjauan negatif yang mencakup satu atau lebih kerentanan kritis akan mengharuskan para pembuat teh terlebih dahulu untuk menghubungi pengelola paket menggunakan protokol pesan untuk memberi tahu mereka tentang kerentanan dan memungkinkan mereka untuk mengatasi masalah secara tepat waktu.
 Setelah berakhirnya periode yang ditentukan tata kelola yang dialokasikan ke pengelola paket untuk mengatasi kerentanan mereka atau saat paket yang diperbaiki tersedia, protokol pesan yang sama akan digunakan untuk memberi tahu semua pengguna dan penguji paket ini (termasuk tanggungan) bahwa kerentanan telah  diidentifikasi,
 dan mudah-mudahan diatasi, sehingga mereka tahu untuk memperbarui aplikasi atau dependensi mereka.
 Untuk mengurangi pemborosan waktu pengembang, komunikasi antara pencicip teh dan pengelola paket akan membutuhkan pencicip teh untuk merendam token teh.

 Setelah menyelesaikan kedua operasi, pencicip teh akan menerima NFT sebagai bukti pekerjaan mereka pada paket dan versi paket tertentu.
 Akumulasi NFT dikombinasikan dengan rasio seduhan dari masing-masing paket yang ditinjau dan informasi yang diambil dari sistem eksternal akan menginformasikan reputasi pengecap teh.
 Saat reputasi mereka mencapai tonggak penting, pencicip teh dapat memperoleh akses ke bagian protokol yang lebih tinggi atau hadiah yang dipercepat, seperti yang diputuskan oleh tata kelola teh.

## Paket Kedaluwarsa atau Rusak

 misi teh adalah untuk memberi penghargaan kepada kontributor dan peserta di komunitas sumber terbuka;  namun, penghargaan harus sepadan dengan upaya yang dilakukan oleh pengelola paket dan pencicip teh.
 Paket yang kurang terawat, usang, atau rusak adalah indikasi yang jelas dari pengelola paket yang tidak memenuhi harapan komunitas atau tidak memberikan kepercayaan dan dukungan yang diberikan kepada mereka melalui seduhan paket.
 Manifestasi lain dari paket-paket usang mungkin adalah penggunaan berkelanjutan dari bahasa lama atau versi lama dari bahasa multi-versi.
 Paket yang ketinggalan zaman atau rusak terlalu lama menunjukkan bahwa para pencicip teh perlu meninjau pekerjaan pengelola paket secara teratur dan konsisten.

 pencicip teh adalah anggota penting dari komunitas sumber terbuka karena ulasan mereka dan klaim terkait dapat mengarahkan pengguna paket ke atau menjauh dari paket.
 Untuk memastikan bahwa ulasan dapat dipercaya secara berkelanjutan, kami mengusulkan mekanisme di mana paket yang sudah usang atau rusak dapat melihat sebagian dari token mereka yang direndam dikirim ke pencicip teh yang pertama kali mengenali kurangnya pemeliharaan paket apa pun.

 Tinjauan negatif apa pun yang menguraikan cacat seperti kerentanan zero-day atau penggunaan ketergantungan yang sudah ketinggalan zaman dan tetap terbuka melewati masa tenggang yang ditentukan oleh tata kelola harus dianggap sebagai kegagalan dari pihak pengelola paket.
 Mereka belum menyelesaikan tugas yang dipercayakan dan dihargai.
 Hal yang sama dapat dikatakan untuk pendukung paket dan sponsor yang mempertaruhkan reputasi mereka pada pekerjaan pengelola paket yang menunggak dan menerima hadiah untuk itu, tetapi gagal mengidentifikasi kurangnya pemeliharaan atau memilih untuk terus mendukung paket tersebut.

 Seiring popularitas dan penggunaan paket, dengan lebih banyak aplikasi dan sistem yang berpotensi menjadi misi-kritis bergantung pada mereka, kita harus memberi insentif kepada pengembang untuk secara diam-diam melaporkan kekurangan kepada pengelola paket dan pengelola paket untuk mengatasi kekurangan tersebut sebelum dapat dieksploitasi.
 Oleh karena itu, kami mengusulkan agar setiap paket usang atau rusak yang tunduk pada satu atau lebih ulasan negatif yang terbukti dan tetap dalam keadaan seperti itu setelah masa tenggang yang ditentukan oleh tata kelola, melihat sebagian dari token yang direndamnya dipotong terlepas dari asalnya (pengelola paket, paket  pendukung, dan sponsor atau pencicip teh sebelumnya),
 sementara porsi lain dikirim ke para pencicip teh yang memberikan ulasan negatif.
 Distribusi ke semua pencicip teh dapat didasarkan pada usia ulasan mereka dan jumlah token teh yang mereka seduh untuk ulasan mereka.

## Pemelihara NFT

 Setelah pengiriman paket berhasil, pengelola paket akan menerima NFT sebagai bukti kerja dan kontribusi mereka.
 Pemegang NFT ini akan secara otomatis menerima semua hadiah yang terkait dengan paket.
 Pengelola paket dapat mentransfer kepemilikan pemeliharaan atas sebuah paket ke pengelola paket lain hanya dengan mentransfer NFT paket.
 Transfer NFT yang berhasil akan menyebabkan pemilik baru secara otomatis menerima hadiah paket di masa mendatang.

 Bagian penting dari membangun reputasi bergantung pada frekuensi dan kuantitas pengiriman paket yang berkualitas.
 NFT yang dikirimkan ke pengelola paket sebagai bukti kerja mereka dapat digunakan oleh sistem reputasi untuk memperbarui reputasi pengelola paket dan memberi mereka akses ke bagian protokol yang lebih tinggi, sebagaimana diputuskan oleh tata kelola teh.
 Namun, untuk mencegah vektor serangan, seperti anggota komunitas membeli reputasi mereka, transfer pengelola NFT tidak akan menghasilkan transfer reputasi.
 Reputasi harus tetap terkait langsung dengan pekerjaan pengembang tertentu dan tidak boleh dipindahtangankan.

## Mengamankan Jaringan

 Sementara banyak blockchain mungkin muncul sebagai solusi infrastruktur yang efektif dan aman untuk mendukung tujuan teh, kami percaya bahwa pertimbangan yang cermat harus diberikan pada tumpukan teknologi di mana sistem teh dibangun.

 Skalabilitas, efektivitas biaya, ESG, dan ekstensibilitas pihak ketiga adalah pertimbangan desain penting yang dapat dilayani dengan lebih baik oleh sistem bukti kepemilikan teh yang berdaulat.
 Dalam proof-of-stake, operator node dan peserta jaringan mempertaruhkan nilai ekonomi dalam bentuk token asli rantai untuk meningkatkan keamanan sistem.
 Operator node dan peserta jaringan menerima hadiah untuk keberhasilan produksi blok yang mematuhi aturan jaringan dan menyertakan informasi transaksi yang akurat.
 Ketidakaktifan (alias node down) atau aktivitas jahat/salah dihukum dengan menghancurkan sebagian kecil dari token yang dipertaruhkan melalui pemotongan.

 Sistem proof-of-stake yang didukung oleh token teh akan memungkinkan pemegang token teh untuk berkontribusi pada keamanan sistem dengan *mempertaruhkan* teh dan mendukung pengembang sumber terbuka dengan *menyeduh* teh.
 Kami sepenuhnya menyadari faktor ekonomi dapat mencegah beberapa pengembang mengintai atau menyeduh teh;  dengan demikian, staking dan seduhan akan tersedia hanya dengan sehelai daun, denominasi teh terkecil yang mewakili seperseratus juta ($10^{-8}$) teh.

 Kedua aplikasi token teh melayani fungsi vital dalam mendukung dan pertumbuhan ekosistem open-source.
 Staking tea akan memastikan bahwa sistem teh terus beroperasi dengan aman, sehingga semua peserta jaringan dapat mengirimkan dan mengakses paket untuk meninjaunya, mengintegrasikannya ke dalam aplikasi mereka, dll.
 Sebaliknya, seduhan teh akan mendukung tujuan teh untuk menyediakan alat bagi semua peserta jaringan untuk mendukung dan menggunakan paket yang memenuhi persyaratan kualitas dan keandalan, sebagaimana dirumuskan oleh komunitas teh melalui dukungan dan perbedaan pendapat mereka terhadap setiap paket.
 Kehati-hatian akan diambil saat mendefinisikan dan menerapkan parameter staking dan seduhan sehingga yang satu tidak menjadi parasit pada yang lain.

 ## Insentif dan Penalti

 Seperti yang telah dibahas sebelumnya, mungkin ada insentif kuat bagi aktor jahat untuk berkompromi dengan perangkat lunak sumber terbuka.
 Sebagian besar infrastruktur penting Internet berjalan pada sumber terbuka, dan perlombaan untuk menemukan eksploitasi dan kerentanan lainnya sedang berlangsung.
 Di teh, kami percaya bahwa pengelola paket bukanlah pihak yang harus disalahkan (walaupun sering).

 insentif protokol teh memperbaikinya melalui distribusi insentif yang adil dan merata.
 Paket seperti Lodash dengan lebih dari 151k tanggungan adalah pilar pengembangan sumber terbuka, dan pengelolanya layak untuk dihargai secara proporsional.
 Namun, sistem penghargaan yang dibangun hanya berdasarkan jumlah tanggungan akan mencegah inovator mengganggu monopoli ini kecuali jika mereka didanai secara memadai oleh pihak ketiga atau telah mengumpulkan sumber daya yang cukup untuk mendanai sendiri.
 Pendekatan ini kemungkinan akan menyebabkan berkurangnya jumlah kontributor, yang menghasilkan kebalikan dari teh.

 tujuan teh adalah untuk mewakili nilai perangkat lunak sumber terbuka dan, dengan melakukan itu, mendorong pertumbuhannya dengan memberdayakan para pesertanya dengan sumber daya yang mereka butuhkan untuk mengejar hasrat mereka tanpa beban.
 Sistem distribusi insentif teh perlu secara hati-hati mempertimbangkan rasio seduhan setiap paket dan menyesuaikan insentif setiap paket.
 Untuk mengurangi risiko sejumlah kecil paket yang digunakan sebagai dependensi di banyak aplikasi yang mengumpulkan sebagian besar hadiah seduhan, kami akan memanfaatkan penelitian yang dihasilkan oleh Web3 Foundation[^19] untuk mekanisme hadiah berbasis bukti kepemilikan Polkadot.
 Kami selanjutnya dapat menyesuaikan implementasi dan variabelnya berdasarkan hasil eksperimen praktis.

 Saat paket curam mendekati rasio seduhan optimal yang ditentukan oleh tata kelola, rasio imbalan seduhannya akan menurun secara progresif.
 Ketika sebuah paket melebihi rasio seduhan optimalnya, rasio hadiah seduhan akan menurun tajam untuk menghilangkan insentif pendukung paket dan pencicip teh dari paket seduhan lebih lanjut.
 Desain ini dapat memungkinkan paket yang lebih sedikit direndam menjadi lebih menarik bagi pendukung paket dan pencicip teh.
 Ini juga dapat memberi insentif kepada pengembang berpengalaman untuk membangun alternatif untuk paket yang sangat kaya, menciptakan peluang bagi komunitas teh untuk menyeimbangkan dukungan perangkat lunak yang ada dan mempromosikan inovasi.
 Rasio seduhan akan dihitung menggunakan suplai sirkulasi dalam desain awalnya.
 Komunitas teh dapat mengubah desain ini untuk meningkatkan skalabilitas sistem lebih lanjut.
 Biarkan $\chi$ menjadi rasio seduhan di semua paket.
 Ini mewakili jumlah total token teh yang direndam oleh pengelola paket, pengguna paket, pendukung dan sponsor paket, dan pencicip teh dibagi dengan total pasokan token teh.
 Mengingat berapa banyak paket open-source yang tersedia saat ini dan perkiraan pertumbuhannya, $\chi$ akan selalu bernilai sangat kecil antara $0$ dan $1$.

 
Biarkan $\psi$ menjadi rasio taruhan.
 Ini mewakili jumlah total token teh yang dipertaruhkan oleh setiap peserta jaringan untuk mengamankan jaringan.

 Biarkan $\chi_{ideal}$ menjadi rasio seduhan yang kami ingin capai setiap paket untuk distribusi hadiah yang adil di semua paket dan dependensinya.
 Nilai $\chi_{ideal}$ harus diperbarui saat paket baru ditambahkan ke registri terdesentralisasi, dan dependensi dibuat.
 Untuk menentukan nilai terbaik untuk $\chi_{ideal}$, kami akan menggunakan kurva lonceng popularitas yang diperbarui di awal setiap siklus hadiah.

Biarkan $\tau = \tau(\chi)$ menjadi tingkat bunga seduhan tahunan yang didistribusikan ke semua anggota komunitas teh yang merendam token teh untuk mendukung pengembang sumber terbuka.
 Dengan kata lain, $\tau(\chi)$ sesuai dengan hadiah seduhan yang diterima lebih dari setahun oleh anggota komunitas yang menyeduh token teh sepanjang tahun.

 Biarkan $\gamma = \gamma(\psi)$ menjadi tingkat bunga taruhan tahunan yang didistribusikan ke semua operator node dan peserta jaringan yang mempertaruhkan token teh untuk mengamankan jaringan.
 Dengan kata lain, $\gamma(\psi)$ sesuai dengan hadiah taruhan yang diterima lebih dari setahun oleh anggota komunitas yang mempertaruhkan token teh sepanjang tahun.

 Biarkan $\delta$ menjadi inflasi tahunan yang diarahkan pada perbendaharaan jaringan.
 $\delta$ dapat bervariasi karena faktor eksternal mempengaruhi pasokan token.

Kami menganggap tingkat hadiah seduhan tahunan sebagai fungsi dari $\chi$ dan tingkat hadiah taruhan tahunan sebagai fungsi dari $\psi$.

 * $\tau(\chi)$ sesuai dengan insentif bagi orang-orang untuk mengambil paket.
 Saat $\chi$ meningkat, lebih sedikit hadiah $\tau(\chi)$ yang dibutuhkan.
 * $\gamma(\psi)$ sesuai dengan insentif bagi orang-orang untuk mempertaruhkan jaringan.
 Saat $\psi$ meningkat, lebih sedikit hadiah $\gamma(\psi)$ diperlukan untuk mengamankan jaringan.

 Inflasi tahunan $I$ akan setara dengan $(\tau + \gamma + \delta)$ dan dihitung sebagai berikut:
$$
I = \frac{\textrm{token supply at the end of the year} - \textrm{token supply at the beginning of the year}}{\textrm{token supply at the beginning of the year}} = (\tau + \gamma + \delta)
$$

Kontribusi terhadap inflasi $\tau_{\textsc{all}}$ (insentif yang didistribusikan ke semua paket yang lebih curam) dan $\gamma_{\textsc{all}}$ (insentif yang didistribusikan ke semua kontributor untuk keamanan jaringan) harus dipertimbangkan  untuk memastikan bahwa sistem mendorong rasio seduhan/staking yang optimal.

 Saat kami fokus pada insentif yang didistribusikan di semua paket yang lebih curam, kami menentukan bahwa
 $\tau_{\textsc{all}}$
 adalah fungsi dari rasio seduhan $\chi$ dan oleh karena itu
 $\tau_{\textsc{all}}(\chi) = \chi \cdot \tau(\chi)$.
 Dari analisis kami sebelumnya, kami dapat melihat bahwa
 $\tau_{\textsc{semua}}(\chi_{ideal}) = \chi_{ideal} \cdot \tau_{ideal}$.
 Karena tujuannya adalah untuk mencapai keadaan di mana
 $\chi = \chi_{ideal}$
 , hadiah
 $\tau_{ideal}(\chi)$
 harus maksimal pada nilai tersebut.

Misalkan $\tau_{ideal} = \tau(\chi_{ideal})$
 menjadi tingkat hadiah yang diberikan oleh jaringan pada skenario ideal di mana
 $\chi = \chi_{ideal}$.

 Biarkan $\tau_{0}$ menjadi batas $\tau_{\textsc{all}}(\chi)$ karena $\chi$ menjadi nol ketika tidak ada anggota komunitas teh yang mengambil paket apa pun.
 Nilai $\tau_{0}$ harus mendekati nol tetapi tidak nol untuk mendorong pengadopsi awal.
 Seperti yang disarankan oleh penelitian Yayasan web3, kami mengusulkan bahwa:
* fungsi inflasi tumbuh secara linier antara $\chi = 0$ dan $\chi = \chi_{ideal}$, dan
 * itu meluruh secara eksponensial antara $\chi = \chi_{ideal}$ dan $\chi = 1$.

Kami memilih penurunan eksponensial serupa untuk $\tau_{\textsc{all}}(\chi)$ karena ini menyiratkan penurunan eksponensial $\tau(\chi)$, dan kami ingin imbalan turun tajam melampaui $\chi_{  ideal}$ untuk mencegah satu paket menerima semua hadiah.

Peluruhan didefinisikan sehingga tingkat inflasi berkurang paling banyak 50% ketika $\chi$ menggeser unit $d$ ke kanan $\chi_{ideal}$ – yaitu.
 $\tau_{\textsc{semua}}(\chi_{ideal} + d) \geq \tau_{\textsc{semua}} \cdot 0.5$.

 Kami mengusulkan fungsi tingkat bunga dan tingkat inflasi berikut, yang bergantung pada parameter $\chi_{ideal}$, $\tau_{ideal}$, $\tau_{0}$ dan $d$.

Sama seperti aktor yang baik perlu dihargai;  aktor jahat perlu diidentifikasi dan dihukum.
 Perangkat lunak open-source memberikan banyak peluang bagi pelaku jahat untuk menciptakan masalah dan risiko reputasi bagi seluruh komunitas pengembang.
 Dari penyelewengan pekerjaan hingga pengubahan dan redistribusi paket perangkat lunak, atau penyuntikan kode jahat, perang antara aktor baik dan buruk terus berlanjut, seringkali dengan aktor jahat yang didanai dengan baik yang melihat kontaminasi paket sumber terbuka sebagai peluang  untuk mendapatkan keuntungan finansial.
 Kelemahannya relatif minimal, dengan paket yang berpotensi dilarang dari rak digital atau mengalami reputasi yang buruk.

 Kami mengusulkan untuk memperkenalkan mekanisme tebasan untuk membangun kerugian yang lebih material yang secara langsung mempengaruhi nilai ekonomi pelaku kejahatan.
 Saat pencicip teh mengevaluasi dan menganalisis kode dalam paket yang baru dikirimkan, kami menyarankan pencicip teh menerima alat dan insentif untuk menunjukkan dengan tepat dan menyoroti kode jahat sehingga pengguna paket dapat disadarkan akan risikonya, dan pengelola paket, pendukung paket, dan sponsor dihukum  untuk mengirimkan atau mendukung kode jahat.
 Sejauh itu, untuk semua ulasan negatif yang terbukti dilakukan sesuai aturan jaringan dan yang telah ditangani oleh pengelola paket dalam periode yang ditentukan oleh tata kelola, pengelola paket tidak boleh dikenakan penalti yang bertentangan dengan pendukung dan sponsor paket atau pengecap teh yang  memberikan review positif terhadap paket yang dimaksud.
 Untuk ulasan negatif yang dilakukan sesuai dengan aturan jaringan dan bahwa pengelola paket belum menangani dalam periode yang ditentukan oleh tata kelola, sebagian kecil dari token yang disimpan oleh pengelola paket, pendukung dan sponsor paket, dan pencicip teh sebelumnya akan dipotong.
 Fraksi lain akan dikunci ke dalam kolam asuransi yang dikendalikan oleh tata kelola teh.
 Tata kelola teh akan menetapkan kebijakan dan aturan dalam kolaborasi erat dengan komunitas untuk mendistribusikan konten kolam kepada mereka yang terkena dampak kerentanan.
 Protokol akan mendistribusikan fraksi ketiga dari token yang direndam di semua pencicip teh yang berkontribusi pada ulasan negatif dan mendalami paket, berdasarkan jumlah token teh yang mereka celupkan "melawan" paket dan berapa lama token mereka telah direndam.
 Dengan kata lain, semakin cepat satu atau lebih pencicip teh mengidentifikasi dan melaporkan kekurangan tersebut sesuai dengan aturan jaringan, semakin tinggi imbalan yang akan mereka dapatkan karena mendukung pengembangan sumber terbuka yang aman dan produktif.

 Untuk mencegah anggota komunitas memilih secara acak "melawan" paket yang sangat curam dengan harapan menerima mayoritas penalti, semua token teh yang "melawan" tidak akan diberi inflasi dan dapat dikenakan mekanisme peluruhan, sehingga mengurangi nilainya dari waktu ke waktu  .

[^19]: Source: @web3


# Pemerintahan

 Tata kelola sangat penting untuk pengembangan, keberlanjutan, dan adopsi sistem terdistribusi apa pun.

 Kami mengusulkan bahwa teh mencakup tata kelola on-chain di mana semua pemegang token teh dapat menyarankan dan memilih perubahan pada parameter penting yang ditimbang berdasarkan kepemilikan dan reputasi token.
 Parameter ini dapat mencakup inflasi, biaya transaksi, imbalan taruhan, imbalan seduhan, atau rasio seduhan optimal.
 Fungsionalitas ini akan memastikan bahwa parameter kritis dapat berkembang dan dioptimalkan dari waktu ke waktu oleh anggota komunitas teh.
 Kami mengantisipasi tata kelola akan diluncurkan dengan struktur sederhana dan semakin berkembang seiring dengan matangnya sistem teh, memfasilitasi adopsi dan memastikan desentralisasi progresif.

 Beberapa parameter sistem mungkin tidak tunduk pada tata kelola atau mendukung perubahan frekuensi tinggi untuk mengurangi permukaan serangan yang diwakili oleh tata kelola.
 Transisi parameter yang progresif ke tata kelola yang terbuka dan terdesentralisasi akan memastikan stabilitas dan prediktabilitas sistem.


 # Ekstensibilitas Pihak Ketiga

 Saat kami membangun alat awal untuk menyalakan dukungan yang telah lama tertunda dari komunitas sumber terbuka, kami percaya bagian dari misi kami adalah untuk memastikan bahwa pihak ketiga dapat memperluas keseluruhan perangkat.
 Selain menyediakan infrastruktur bagi pengembang untuk membangun ekstensi protokol, termasuk cara baru untuk berinovasi dan lebih lanjut mendukung pengembang sumber terbuka, rencana kami mencakup potensi manajer paket lain untuk berkontribusi pada protokol.
 Impian dan upaya pengembang open-source telah membangun inovasi yang mendukung kehidupan kita sehari-hari.
 Kami berharap dapat menemukan kegunaan dan ekstensi baru untuk teh yang diusulkan oleh komunitas teh.


 # Pekerjaan Masa Depan dan Upaya Potensi Komunitas

 Saat sistem teh matang, kami memperkirakan komunitas memutuskan dan berkontribusi pada perubahan dan perluasan sistem teh melalui tata kelola.
 Di bawah ini adalah beberapa ide yang kami yakini dapat menginspirasi beberapa orang.

## grosir tea

 Komunitas perangkat lunak sumber terbuka bersemangat dan terus mencari untuk berinovasi dan memberikan nilai.
 Dedikasi dan altruisme ini mengarah pada pembangunan perangkat lunak dan paket baru yang konstan, masing-masing menarik dependensi.
 Akibatnya, kami mengantisipasi peta dependensi untuk terus berkembang, yang menyebabkan seringnya terjadi perubahan pada rasio seduhan dan penghargaan.
 Di masa depan, komunitas teh dapat mengusulkan pengembangan sistem yang dirancang untuk secara dinamis memantau rasio seduhan untuk setiap paket dan menyeimbangkan kembali bagaimana pendukung paket menaikan token mereka berdasarkan kriteria mereka sendiri.

 ## Royalti untuk Transfer Paket

 Kami menyadari bahwa pengelola paket dapat memutuskan untuk mentransfer aliran hadiah utama mereka ke satu atau beberapa pengembang.
 Tata kelola transfer tersebut harus tetap menjadi keputusan pengelola paket dan mitranya, tanpa campur tangan dari pihak teh.
 Alat perlu disediakan untuk transfer tersebut menjadi total atau sebagian (mungkin hanya melalui sebagian dari hadiah seduhan yang dialihkan ke satu atau lebih pengembang, sementara hadiah yang tersisa terus mengalir ke pengelola paket asli)
 dan agar hadiah mengalir melalui satu akun yang dikendalikan oleh satu peserta jaringan, beberapa peserta jaringan, atau secara otomatis didistribusikan ke beberapa akun menggunakan rasio statis atau dinamis.

## Distribusi Hadiah di Beberapa Pengelola

 Pemeliharaan paket dapat mengandalkan pekerjaan satu tim pengembang lagi.
 Sebelum hadiah seduhan mulai mengalir, tim harus mempertimbangkan untuk mengotomatiskan distribusi hadiah seduhan di antara mereka sendiri.
 Bagaimana distribusi terjadi harus diputuskan oleh pengelola sendiri, karena mereka berada dalam posisi terbaik untuk mengevaluasi siapa yang berkontribusi dan bagaimana mereka harus diberi penghargaan.

 Untuk mencapai itu, setiap tim (atau tim) dapat membentuk organisasi otonom terdesentralisasi (DAO) mereka sendiri dan mengotomatiskan distribusi penghargaan atau menerapkan sistem yang lebih kompleks untuk menentukan distribusi penghargaan yang memadai berdasarkan faktor eksternal seperti pemungutan suara dari semua DAO  anggota,
 atau distribusi berbasis waktu berdasarkan kontribusi berkelanjutan, penyelesaian bounty yang berhasil, dll.

## Menangani Paket “Garpu”

 Kami percaya bahwa garpu sangat penting dan sebagian besar kurang dimanfaatkan.
 Forks dapat menjadi alat yang efektif untuk mengembangkan paket yang bersaing dalam fungsionalitas, kinerja, keamanan, dan bahkan perhatian.
 Meskipun berguna, garpu harus mengenali upaya aslinya.
 Melalui pekerjaan di masa depan atau kontribusi potensial, komunitas teh dapat meningkatkan sistem untuk meminta garpu dideklarasikan, bahkan mungkin terdeteksi ketika sebuah paket dikirimkan.
 Garpu yang tidak dideklarasikan yang diungkapkan oleh pencicip teh dapat mengakibatkan sebagian dari token yang direndam disayat, dipindahkan ke pengelola paket asli, dan dikirim ke pencicip teh yang mengungkapkan garpu.

## Runtime vs. Membangun Ketergantungan

 tea mungkin tidak membedakan dependensi build dari dependensi runtime saat mendistribusikan hadiah seduhan saat peluncuran.
 Namun, asalkan komunitas teh merasa kuat untuk membuat perbedaan seperti itu, komunitas teh dapat mengusulkan peningkatan pada algoritma distribusi seduhan hadiah untuk memperhitungkan kekritisan setiap ketergantungan dan kontribusinya terhadap nilai paket yang bergantung padanya.
 Usulan-usulan ini akan dipilih dan dilaksanakan berdasarkan keputusan masyarakat.

## Remunerasi berdasarkan penggunaan

 Karena semakin banyak aplikasi yang dibangun menggunakan paket yang terdaftar dengan teh, komunitas dapat meningkatkan algoritme penghargaan sehingga alokasi dapat dipengaruhi oleh kumpulan data yang dibuktikan secara eksternal seperti penggunaan.
 Pembaruan mekanisme hadiah ini memungkinkan alokasi hadiah token teh yang lebih tinggi mengalir ke paket dengan penggunaan tertinggi sambil tetap menghormati batasan rasio seduhan yang dijelaskan di bagian token teh.
 Pengelola paket dapat menggunakan pendekatan serupa untuk mendistribusikan hadiah seduhan di seluruh dependensi mereka berdasarkan logika transparan pilihan mereka.
 Perhatikan bahwa semua informasi yang digunakan untuk memengaruhi distribusi hadiah di seluruh paket dan dependensi dalam sistem teh harus terbukti andal.


# Ucapan Terima Kasih

 Buku putih ini tidak akan ada tanpa dukungan dan dedikasi dari banyak teaophiles.
 Para penulis ingin mengucapkan terima kasih kepada Josh Kruger, Jadid Khan, dan Jacob Heider atas kontribusi mereka pada tokennomics dan banyak individu bijaksana yang secara sukarela meluangkan waktu mereka untuk memberikan umpan balik tentang isi dokumen ini.

$\parskip=0pt plus 1pt$

# Daftar Istilah

 |  istilah |  Definisi |
 |------|------------|
 |  Daun |  Denominasi terkecil dari token teh.  Sehelai daun sama dengan seperseratus juta ($10^{-8}$) teh.  |
 |  Memotong |  Tindakan menghukum yang lebih curam atau yang mempertaruhkan sebagai tanggapan atas perilaku yang bertentangan dengan aturan jaringan.  |
 |  Mempertaruhkan |  Tindakan mengunci token teh untuk mengamankan jaringan bukti kepemilikan tempat sistem teh dibangun.  |
 |  Curam |  Tindakan mengunci token teh untuk mendukung klaim Anda dan menerima hadiah (atau penalti) berdasarkan konsensus tentang validitas klaim Anda.  |


 # Referensi
