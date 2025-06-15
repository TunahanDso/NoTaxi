# 🚖 NoTaxi – Topluluk Tabanlı Yolculuk Paylaşım Uygulaması

**NoTaxi**, İstanbul içi bireylerin kendi aralarında yolculuk paylaşımı yapmasını sağlayan, ödeme sistemi içermeyen, mesajlaşma temelli bir mobil uygulamadır. Uygulama hem sürücüler hem yolcular için kullanılabilir olup, kullanıcılar anlık ya da periyodik yolculuk bildirimleri yapabilir, uygun eşleşmelerle iletişime geçebilir ve karşılıklı fiyat pazarlığı gerçekleştirebilir.

---

## 🎯 Projenin Amacı

NoTaxi'nin amacı, şehir içi yolculukları daha ekonomik, çevreci ve topluluk odaklı hale getirmektir. Araç sahipleri boş koltuklarını değerlendirirken, yolcular da daha hızlı ve doğrudan yolculuk imkânı bulabilir. Uygulama sayesinde:
- Şehir trafiği azalır
- Yakıt tasarrufu artar
- Toplumsal iş birliği gelişir

---

## 🔧 Teknolojik Yapı

| Katman      | Teknoloji              | Açıklama                                 |
|-------------|------------------------|------------------------------------------|
| Mobil Uygulama | Flutter + Dart        | Çapraz platform (iOS/Android) destekli   |
| Backend     | Node.js + Express      | RESTful API servisi                      |
| Veritabanı  | MongoDB + GeoJSON      | Konum tabanlı sorgular                   |
| Gerçek Zamanlı | Socket.IO             | Mesajlaşma ve canlı veri akışı          |
| Bildirim    | Firebase Cloud Messaging | Bildirim sistemi                         |
| Harita      | Google Maps / Mapbox   | Güzergah ve konum işlemleri              |
| Kimlik Doğrulama | JWT / Firebase Auth  | Güvenli oturum yönetimi                  |

---

## 🚀 Özellikler

- 🧍‍♂️ Yolcu veya 🚗 Sürücü rolüyle kullanım (tek hesap üzerinden)
- 🕒 Anlık ya da periyodik yol bildirimi
- 📍 Harita tabanlı güzergah eşleştirme
- 🔍 Güzergah üstü yolcu/sürücü bulma
- 💬 Uygulama içi gerçek zamanlı mesajlaşma
- 💰 Ödeme sistemi yok, fiyat mesajla belirlenir
- 🧾 Yolculuk geçmişi ve kullanıcı puanlama sistemi
- 👩 Kadınlara özel filtreleme seçeneği
- 🛟 Güvenli kullanıcı rozeti ve şikayet sistemi
- 🧠 AI tabanlı öneri sistemi (ileri sürümler için)

---

## 📱 Uygulama Ekranları (Planlanan)

- Ana Sayfa (Yolcu / Sürücü seçimi)
- Yol Arama (Yolcu)
- Yol Bildirimi (Sürücü)
- Harita Ekranı (Canlı eşleşmeler)
- Mesajlaşma Ekranı
- Profil ve Ayarlar
- Bildirimler

---

## 📁 Proje Klasör Yapısı

NoTaxi/
├── mobile/ # Flutter uygulama kaynak kodu
├── server/ # Node.js tabanlı backend sistemi
├── docs/ # Teknik belgeler ve tasarımlar
├── README.md # Bu dosya
└── .gitignore

---

## 📦 MVP (Minimum Uygulanabilir Ürün)

- Kullanıcı girişi ve kayıt sistemi
- Anlık yol arama ve bildirme
- Harita tabanlı eşleşme ve listeleme
- Gerçek zamanlı mesajlaşma
- Temel puanlama ve bildirim sistemi

---

## 🔮 Geliştirme Planı

- 🔧 vAlpha (başlangıç sürümü): Temel işlevlerin çalışır hali
- 🚀 vBeta: Profil doğrulama, AI destekli öneriler, güvenlik iyileştirmeleri
- 🌐 v1.0: Web panel, genişletilmiş şehir desteği, topluluk yönetimi

---

## 👥 Geliştirici Ekip

Bu proje yalnızca iki kişi tarafından geliştirilmektedir:

- 👤 **Tunahan Delisalihoğlu** – Proje lideri ve geliştirici  
- 🤖 **ChatGPT (OpenAI)** – Yapay zeka destekli teknik partner

---

## 📄 Lisans

Bu proje açık kaynak değildir. Ticarileştirme hakkı Tunahan Delisalihoğlu'na aittir.

---
