# blog-site












#Kurulum ve Çalıştırma

Projeyi Klonlama

Projeyi yerel makinenize klonlamak için:

git clone https://github.com/kapanci/Blog-Site.git
cd Blog-Site

Bağımlılıkları Yükleme

Gerekli Ruby gem’lerini yüklemek için:


bundle install

Veritabanını Güncelleme

Migration’ları çalıştırarak veritabanını oluşturun:

rails db:migrate


Uygulamayı Başlatma

Projenin sunucusunu başlatmak için:

rails server

Uygulama, varsayılan olarak http://localhost:3000 adresinde çalışacaktır.
