# FLUTTER STATE MANAGEMENT (BLOC)
<h4>EPHEMERAL STATE</h4>
<p>Digunakan Ketika tidak ada bagian lain pada widget tree yang membutuhkan untuk mengakses data widgetnya dengan contoh PageView, BottomNavigationBar, Switch Button. Pada Ephemeral State tidak perlu State yang kompleks hanya membutuhkan StatefulWidget dengan menggunakan fungsi SetState().</p>
<h4>APP STATE</h4>
<p>Digunakan ketika bagian yang lain suatu aplikasi membutuhkan akse ke data state widget dengan contoh Login, Pengaturan prefrensi pengguna, keranjang belanja, wishlist user, dll. App State bisa dikatakan dimana informasi yang user pilih di suatu screen yang mana informasi itu akan muncul pada screen yang berbeda.</p>
<h4>BLoC</h4>
<p>BLoC (Business Logic Component) memisahkan antara business logic dan UI. Tujuan dari BLoC sendiri adalah membuat code program aplikasi kita menjadi mudah dibaca, terstruktur, maintainable, dan testable. BLoC memiliki tiga nilai inti yaitu Simple, Powerful, dan Testable. Simple sendiri mengartikan dengan mudah dipahami dan bisa digunakan oleh developer dengan berbagai tingkat keterampilan. yang kedua Powerful, dengan kata lain Powerful adalah dapat membantu pembuatan aplikasi yang kompleks yang tersusun dari komponen-komponen yang lebih kecil. dan yang ketiga yaitu Testable, yaitu mudah untuk di test.</p>


