# Blog-Site
Bu proje, Ruby on Rails kullanılarak geliştirilmiş bir blog platformudur. Kullanıcılar, blog yazıları oluşturabilir, düzenleyebilir, silebilir ve diğer blog yazılarına yorum yapabilir. Projede kullanıcı kimlik doğrulama ve yetkilendirme işlemleri gerçekleştirilmiştir.

## Özellikler:

    -Kullanıcı giriş/çıkış sistemi (Devise kullanılarak).
    -Blog gönderisi oluşturma, düzenleme, silme.
    -Blog gönderilerine yorum ekleme.
    -Sadece gönderi sahibi veya yorum sahibi işlemleri gerçekleştirebilir (yetkilendirme).

## Kullanılan Teknolojiler:
        -Ruby 3.x
    -Ruby on Rails 7.x
    -SQLlite (Veritabanı)
    -HTML, CSS, Bootstrap (Ön yüz tasarımı)
    -JavaScript (Dinamik işlemler)

## Dosya Yapısı ve Açıklamalar:
app/

-Uygulamanın ana kodlarının bulunduğu dizindir.

    controllers/:
    Kullanıcı isteklerini işleyen ve uygun yanıtları döndüren controller dosyalarını içerir.

        -posts_controller.rb: Blog gönderileriyle ilgili işlemler.
        -comments_controller.rb: Yorum işlemleri.
    
    models/:
    Veritabanı ile iletişim kuran ve iş mantığını içeren modelleri barındırır.
        -post.rb: Blog gönderileriyle ilgili veri yapısı ve iş kuralları.
        -comment.rb: Yorumlarla ilgili veri yapısı ve iş kuralları.
        -user.rb: Kullanıcı doğrulama ve yetkilendirme.
    
    views/:
    Kullanıcıya gösterilen HTML sayfalarını içerir.
        -posts/: Blog gönderileriyle ilgili sayfalar (index, show, new, edit).
        -comments/: Yorumlarla ilgili kısmi görünümler (partial files).
        -layouts/: Uygulama genelinde kullanılan ortak şablonlar (header, footer).
        
config/

-Uygulamanın yapılandırma ayarlarını içerir.

        -routes.rb: Uygulama içerisindeki URL yönlendirme ayarları.

db/

-Veritabanı dosyalarını ve migration (veri tabanı şema değişiklikleri) dosyalarını içerir.


public/

-Statik dosyalar (örneğin, görseller) bu dizinde tutulur.




### Kurulum ve Çalıştırma
#### Projeyi Klonlama

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
