# Tasarım Gereksinimleri

## Taslağı hazırlayan: Trevor Smale (MIT'den uyarlanmıştır)

### Projenin ilham kaynağı olan eski projeler:

[Rice Üniversitesi Makina Mühendisliği Modeli](http://oedk.rice.edu/Sys/PublicProfile/47585242/1063096)

Özellikleri:
- 3 Tuşlu kolay kullanılabilen ayarlar (soluk (tidal) hacmi ayarları + -)
- Yüksek/Düşük basınç alarmları
- CNC üretime yatkın
- Küçük ve hafif.

Problemleri:  

- Çok çeşitli malzeme gereksinimi (yapımı karmaşıklaştırıyor ve zorlaştırıyor)
- Kırılgan parçalar 
- Havalandırmasız/soğutmalı elektronikler
- Neme karşı toleransı az
- Uygun açık kaynak dosyaları yok.

[MIT Araştırma Grubuı Tasarımı](https://web.mit.edu/2.75/projects/DMD_2010_Al_Husseini.pdf)

Özellikleri:
- Çok güvenilir kam milli mekanizma
- Basit/tekrarlanabilir motor devresi
- 3 tuşlu kolay kullanılabilen ayarlar
- Hava sızdırmaz yapı

Problemleri:

- Çok çeşitli malzeme gereksinimi (yapımı karmaşıklaştırıyor ve zorlaştırıyor)
- İsterlerin üzerinde sağlamlık ve dayanıklılık
- Özel parçalar

### Tıbbi Konular

- Kullanıcı dakikadaki nefes sayısını (nefes/dk), tuşlar veya ekran üzerinden girebilecek
- İnspirasyon./ekspirasyon oranı, soluk hacmi ayarları
- Desteklenen  modlar:
    - PCV (Pressure-controlled Ventilator - Basınç kontrollü solunum destek cihazı)
    - VCV (Volume Control Ventilator- Hacim kontrollü solunum destek çihazı)
    - Ayrıca: Yardım kontrolu  (Not: yardım kontrolu, hastanın nefes almasını algılama işlemidir, ve destek moduna göre değişik şekilde uygulanır.)
- Positive end-expiratory pressure (PEEP) - Soluk sonu pozitif basınç
- Maksimum basınç sınırlandırması
- Maskeye yerleştirilmiş nem kontrol yeteneği
- Enfeksiyon kontrolü ( cihaz kolay temizlenebilen bir muhafaza içinde olacak)
- Cihazda kullanılmayan alan sayısı minimum olacak

### Elektronikler ve Kullanıcı Arabirimi
- Kullanıcı arabirimi şartnamesi (LCD ve tuşlar)
- Geri bildirim sensörleri, PEEP,düşük voltaj, yüksek ve düşük basınç durumları için şartname
- Görsel açıklamalar buraya gelecek.

### Mekanik kısımlar

- Taşınabilir / Sabit (Sabit cihaz tasarımı farklı bir yere konabilir)
  (Greg: Bence sabit tasarım .  Rice/MIT tasarımları geliştirme dünyası içindi.Bu proje kaynakları kısıtlı hastahaneleri hedefiiyor)

-  1:4 RN:Pt ratio oranıyla bağımsız çalışma ( Sensörler ve otomatik ayarlamalarla  hastahane ortamında bağımsız olarak çalışabilmeli)

- Sağlam mekanik, elektronik ve yazılım sistemleri  (Basit, korozyona ve titreşime dayanıklı,   en iyi kristal osilatör)

- Kolayca bulunabilen ve onarılabilen parçalar  (3D baskı)

- Minimum güç gereksinimi (Verimli motor kontrolörü)

  

### Ekonomik

- Düşük maliyet (100 dolar altı )
- Kısa vade için standard yazıcıların basma kapasitesine sığmalı
- Olası uzun vade hedefi: 3D baskı yerine yüksek üretim kapasiteli alternatif sistemler 
- Tercihen her ükede bulunabilen hazır  parçalar

### Kullanıcı Arabirimi

- Güç kaybı, solunum devresi sorunları, yüksek hava yolu basıncı ve  pil bitmesi için  alarmlar
- Ayarların ve durumun görüntülenmesi
- Standart bağlantı girişleri
- Yanlışlıkla ayarları  değiştirmeyi engellemek için tuş/kontrol kilitleri

### Tekrarlanabilirlik

- Ölçümlerde hata payı %10'u geçmeyecek
- Nefes frekansı hatası dakikada bir nefesten fazla olmayacak (yaklaşık olarak 30 nefeste 1)

## @Simon Kiersey tarafından Slack'da yazılan notlar (Medium  makalesinden uyarlanmıştır (kaynağı eksik))

- Güvenilir olmalı.  14 gün - 24 saat  kesintisiz çalışmalı  (% 100 görev döngüsü). Gerekirse, cihaz  14 günlük x 24 saatlik  kullanımdan sonra değiştirilebilir.
- Devir/Nefes başına verilen hava  veya hava-O2 karışımı hacmi için en az iki ayar desteklenmeli. Bu ayarlar nefes başına 450ml +/- 10ml ve nefes başına 350ml +/- 10ml'dir.
- Bu hava  veya hava-O2 karışımını 350 mm H2O  basıncında sağlayabilmeli.
- Hastaya takılı hava borusuna   her zaman 150 mm H20  basıncı verebilmeli.
- Dakikada 12 ila 20  nefes (devir) arasında ayarlanabilir bir kapasiteye sahip olabilmeli.
- 1.5 saniyeden fazla olmamak kaydıyla en az 400ml hava  veya hava-02 karışımı verebilmeli. Havanın hastaya verilme  hızının ayarlanabilmesi arzu edilir ama zorunlu değildir.
- Yangın riskini önlemek için  O2'ye karşı   güvenli  bileşenlerden üretilmesi ve cihazda yüksek sıcaklıkta bölgelerin olmaması gerekir.
- Bilincini kaybetmiş hastaya nefes verebilmelidir. Cihazın bir hastanın nefes aldığını algılayabilme ve o nefese destek verebilmesi  arzu edilir ancak zorunlu değildir.
- Saf hava, veya hava-oksijen karışımını hastaya verebilmelidir. Karışımdaki oksijen miktarı % 50-% 100 oranlarına çıkabilir. Hazır oksijen bulmakta sorun olmayacağı düşünülmekle beraber   ticari  O2 yoğunlaştırıcı makinesine  bağlanma  yeteneği faydalı  bir özellik olabilir.
- Hastanedeki oksijen sistemleri (borulu veya tüplü)  için bağlantılar olmalıdır.  (Oksijen tüpleri standart olduğu için  O2 ucu  mevcut olmalıdır)
- Standart ticari  kateter uçları  (15mm Erkek 22mm Dişi) ile uyumlu olmalıdır.
- Arızalara karşı güvenli olmalıdır.  İdeal olarak arıza durumunda  anlaşılabilir alarm vermelidir. Basınç kaybı ve O2 kaybı (bunlarla sınırlı olmamak şartıyla) alarm verilecek arızalardır.

