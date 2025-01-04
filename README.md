# blog-site












Kurulum ve Çalıştırma
Projeyi Klonlama
Projeyi yerel makinenize klonlamak için:

bash
Kodu kopyala
git clone https://github.com/kapanci/Blog-Site.git
cd Blog-Site
Bağımlılıkları Yükleme
Gerekli Ruby gem’lerini yüklemek için:

bash
Kodu kopyala
bundle install
Veritabanını Güncelleme
Migration’ları çalıştırarak veritabanını oluşturun:

bash
Kodu kopyala
rails db:migrate
Uygulamayı Başlatma
Projenin sunucusunu başlatmak için:

bash
Kodu kopyala
rails server
Uygulama, varsayılan olarak http://localhost:3000 adresinde çalışacaktır.
