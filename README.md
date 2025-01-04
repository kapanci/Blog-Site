# Blog-Site
Bu proje, Ruby on Rails kullanılarak geliştirilmiş bir blog platformudur. Kullanıcılar, blog yazıları oluşturabilir, düzenleyebilir, silebilir ve diğer blog yazılarına yorum yapabilir. Projede kullanıcı kimlik doğrulama ve yetkilendirme işlemleri gerçekleştirilmiştir.

###Özellikler:

    -Kullanıcı giriş/çıkış sistemi (Devise kullanılarak).
    -Blog gönderisi oluşturma, düzenleme, silme.
    -Blog gönderilerine yorum ekleme.
    -Sadece gönderi sahibi veya yorum sahibi işlemleri gerçekleştirebilir (yetkilendirme).






###Kurulum ve Çalıştırma

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
