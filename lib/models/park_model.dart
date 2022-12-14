class ParkModel {
  String? name;
  String? image;
  String? number;
  bool? isOpen;
  bool? isSaved;
  String? location;
  String? descripton;
  String? openTime;
  int? price;
  int? count;
  int? type;

  ParkModel({
    required this.name,
    required this.number,
    required this.isOpen,
    required this.isSaved,
    required this.location,
    required this.descripton,
    required this.price,
    required this.count,
    required this.image,
    required this.openTime,
  });
}

List<ParkModel> parkCarList = [
  ParkModel(
      name: 'پارکینگ طبقاتی زائر',
      number: '02537755210',
      isOpen: true,
      isSaved: false,
      location: 'قم، بلوار زائر ',
      descripton: 'سلام این تست است تمام',
      price: 5000,
      count: 150,
      image: 'https://cdn.yjc.news/files/fa/news/1401/3/15/16156862_661.jpg',
      openTime: '7:00 - 22:00'),
  ParkModel(
      name: 'پارکینگ عمومی شهید کاظمی',
      number: '**********',
      isOpen: true,
      isSaved: false,
      location: 'قم، بلوار شهید منتظری ',
      descripton: 'سلام این تست است تمام',
      price: 5000,
      count: 150,
      image: 'https://cdn.yjc.news/files/fa/news/1401/3/15/16156862_661.jpg',
      openTime: '7:00 - 22:00'),
  ParkModel(
      name: 'پارکینگ عمومی سیرنگ',
      number: '02537755210',
      isOpen: false,
      isSaved: false,
      location: 'قم، خیابان امام خمینی ',
      descripton: 'سلام این تست است تمام',
      price: 5000,
      count: 150,
      image: 'https://cdn.yjc.news/files/fa/news/1401/3/15/16156862_661.jpg',
      openTime: '7:00 - 22:00'),
  ParkModel(
      name: 'پارکینگ طبقاتی معلم',
      number: '02537755210',
      isOpen: false,
      isSaved: false,
      location: 'قم، خیابان معلم ',
      descripton: 'سلام این تست است تمام',
      price: 5000,
      count: 150,
      image: 'https://cdn.yjc.news/files/fa/news/1401/3/15/16156862_661.jpg',
      openTime: '7:00 - 22:00'),
  ParkModel(
      name: 'پارکینگ شبانه روزی شعبانی',
      number: '02537755210',
      isOpen: true,
      isSaved: false,
      location: 'قم، بلوار حضرت معصومه ',
      descripton: 'سلام این تست است تمام',
      price: 5000,
      count: 1,
      image: 'https://cdn.yjc.news/files/fa/news/1401/3/15/16156862_661.jpg',
      openTime: '7:00 - 22:00'),
  ParkModel(
      name: 'پارکینگ حرم',
      number: '02537755210',
      isOpen: true,
      isSaved: false,
      location: 'قم، بلوار پیامبر اعظم ',
      descripton: 'سلام این تست است تمام',
      price: 1000,
      count: 150,
      image: 'https://cdn.yjc.news/files/fa/news/1401/3/15/16156862_661.jpg',
      openTime: 'شبانه روزی'),
  ParkModel(
      name: 'پارکینگ سعدی',
      number: '02537755210',
      isOpen: true,
      isSaved: false,
      location: 'قم، راهور، بلوار محلاتی ',
      descripton: 'سلام این تست است تمام',
      price: 5000,
      count: 150,
      image: 'https://cdn.yjc.news/files/fa/news/1401/3/15/16156862_661.jpg',
      openTime: '7:00 - 22:00'),
  ParkModel(
      name: 'پارکینگ شرقی حرم',
      number: '02537755210',
      isOpen: true,
      isSaved: false,
      location: 'قم، خیابان شهید صبوری، خیابان عشق علی',
      descripton: 'سلام این تست است تمام',
      price: 5000,
      count: 150,
      image: 'https://cdn.yjc.news/files/fa/news/1401/3/15/16156862_661.jpg',
      openTime: '7:00 - 22:00'),
  ParkModel(
      name: 'پارکینگ شهید مطهری',
      number: '02537755210',
      isOpen: true,
      isSaved: false,
      location: 'قم، خیابان شهید صبوری، خیابان عشق علی',
      descripton: 'سلام این تست است تمام',
      price: 5000,
      count: 150,
      image: 'https://cdn.yjc.news/files/fa/news/1401/3/15/16156862_661.jpg',
      openTime: '7:00 - 22:00'),
];
