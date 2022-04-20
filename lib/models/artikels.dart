import 'package:flutter/material.dart';

import 'artikel.dart';

class Artikels with ChangeNotifier {
  final List<Artikel> _items = [
    Artikel(
      id: 'p1',
      title: 'Pejabat Kemendag Jadi Tersangka Ekspor CPO, Jokowi: Usut Tuntas Mafia Minyak Goreng, Ungkap Siapa Yang Bermain',
      description: 'Pejabat Kemendag Jadi Tersangka Ekspor CPO, Jokowi: Usut Tuntas Mafia Minyak Goreng, Ungkap Siapa Yang Bermain. "Kemarin dari Kejaksaan Agung sudah menetapkan empat tersangka urusan minyak goreng ini dan saya minta diusut tuntas sehingga kita bisa tahu siapa ini yang bermain ini bisa mengerti," kata Jokowi sebagaimana dikutip melalui YouTube Sekretariat Presiden.',
      date: '1/2/2022',
      imageUrl:
      'https://media.suara.com/pictures/653x366/2022/04/20/31807-jokowi-dan-prabowo.jpg',
    ),
    Artikel(
      id: 'p2',
      title: 'Berbagi Kebahagiaan di Bulan Ramadhan, Kemnaker Gelar Bakti Sosial',
      description: 'Berbagi Kebahagiaan di Bulan Ramadhan, Kemnaker Gelar Bakti Sosial. "Kepada yang menerima bantuan, mohon maaf bantuan yang kami berikan itu, tidak sebanding dengan kebutuhan bapak/ibu. Tapi ini dengan niat baik dan tulus bapak/ibu semua yang dikoordinasi Dharma Wanita Persatuan Kemnaker ini, bentuk kebersamaan kami kepada bapak/ibu semua," ujar Menaker Ida dalam siaran pers yang diterima Suara.com, Selasa (2/2/2022).',
      date: '2/22022',
      imageUrl:
      'https://media.suara.com/pictures/653x366/2022/04/19/23861-kemnaker.jpg',
    ),
    Artikel(
      id: 'p3',
      title: 'BNPT Sebut NII Induk Jaringan Teror di Indonesia, Ini Alasannya',
      description:
      'BNPT Sebut NII Induk Jaringan Teror di Indonesia, Ini Alasannya. Menurutnya, penangkapan terhadap 16 anggota NII menjadi langkah tepat oleh Detasemen Khusus (Densus) 88 Antiteror Mabes Polri. Penangkapan terhadap anggota NII yang ingin menggulingkan pemerintahan sah sebelum 2024 itu adalah langkah preventive justice (pencegahan) dan antisipasi dini, tambahnya.',
      date: '3/3/2022',
      imageUrl:
      'https://media.suara.com/pictures/653x366/2022/04/20/39010-bnpt.jpg',
    ),
    Artikel(
      id: 'p4',
      title: 'Dinas ESDM Babel Segera Ke Dirjen Minerba',
      description: 'Dinas ESDM Babel Segera Ke Dirjen Minerba. Pemerintah pusat dengan Peraturan Presiden (Perpres) Nomor 55 Tahun 2022 yang diteken Presiden RI Joko Widodo pada 11 April 2022, mendelegasikan perizinan pertambangan non mineral kembali ke pemerintah daerah. ',
      date: '4/4/2022',
      imageUrl:
      'https://media.suara.com/pictures/653x366/2022/04/20/dinas-esdm-babel-segera-ke-dirjen-minerba.jpg',
    ),
    Artikel(
      id: 'p5',
      title: 'Kasus Korupsi Mafia Minyak Goreng Ditangani Kejaksaan Agung, Ke Mana KPK?',
      description:
      'Kasus Korupsi Mafia Minyak Goreng Ditangani Kejaksaan Agung, Ke Mana KPK?. Kejaksaan Agung baru saja mengumumkan pengidikan korupsi mafia minyak goreng dengan tersangka Dirjen Perdagangan Luar Negeri Kementerian Perdagangan Indrasari Wisnu Wardhana. Namun ada yang jadi sorotan dari momen ini yakni soal kinerja Komisi Pemberantasan Korupsi.',
      date: '1/1/2022',
      imageUrl:
      'https://media.suara.com/pictures/653x366/2019/12/26/83269-febri-diansyah.jpg',
    ),
    Artikel(
      id: 'p6',
      title: 'Ferdinand Hutahaean Divonis 5 Bulan Penjara',
      description:
      'Ferdinand Hutahaean Divonis 5 Bulan Penjara. Terdakwa kasus dugaan penistaan agama Ferdinand Hutahaean menjalani sidang pembacaan vonis di PN Jakarta Pusat, Jakarta, Selasa (19/4/2022). Majelis Hakim menjatuhkan vonis lima bulan penjara kepada Ferdinand terkait kasus tulisan "Allahmu lemah" di akun media sosialnya.',
      date: '1/1/2022',
      imageUrl:
      'https://media.suara.com/pictures/970x544/2022/04/19/26218-ferdinand-hutahean.jpg',
    ),
  ];
  // var _showFavoritesOnly = false;

  List<Artikel> get items {

    return [..._items];
  }

  List<Artikel> get favoriteItems {
    return _items.where((prodItem) => prodItem.isFavorite).toList();
  }

  Artikel findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  void addProduct() {
    // _items.add(value);
    notifyListeners();
  }
}
