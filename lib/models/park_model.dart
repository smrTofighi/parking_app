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
      descripton:
          'ماشین خود را با خیال راحت پارک کنید و امنیت آن را برای شما تضمین میکنیم. هدف ما جلب رضایت مشتری بوده و برای مشتری احترامی خاص قائل هستیم.',
      price: 5000,
      count: 150,
      image:
          'https://1mashhad.ir/wp-content/uploads/2017/11/%D9%BE%D8%A7%D8%B1%DA%A9%DB%8C%D9%86%DA%AF-%D9%87%D8%A7%DB%8C-%D8%B9%D9%85%D9%88%D9%85%DB%8C-%D9%85%D8%B4%D9%87%D8%AF-1.jpg',
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
      image:
          'https://optimpark.com/wp-content/uploads/2022/07/%D9%BE%D8%A7%D8%B1%DA%A9%DB%8C%D9%86%DA%AF-%D8%B9%D9%85%D9%88%D9%85%DB%8C.jpg',
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
      image:
          'https://mosafersalam.com/wp-content/uploads/2019/09/parking-Blog-compressor.jpg',
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
      image:
          'https://smartparking.ir/wp-content/uploads/2020/10/%D8%A7%D9%87%D9%85%DB%8C%D8%AA-%D8%B7%D8%B1%D8%A7%D8%AD%DB%8C-%D9%BE%D8%A7%D8%B1%DA%A9%DB%8C%D9%86%DA%AF.jpg',
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
      image: 'https://www.tticctv.com/files/thumbs/0/792.parking.jpg',
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
      image:
          'https://newsmedia.tasnimnews.com/Tasnim/Uploaded/Image/1400/08/22/1400082215235347624041974.jpg',
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
      image: 'https://sadaf22.com/media/uploads/2020/02/29/unnamed-20.jpg',
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
      image: 'https://media.imna.ir/d/2021/01/18/3/1676628.jpg',
      openTime: '7:00 - 22:00'),
];
