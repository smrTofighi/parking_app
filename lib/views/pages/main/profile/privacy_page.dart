import 'package:flutter/material.dart';

class PrivacyPage extends StatelessWidget {
  const PrivacyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: const Text('حریم شخصی'),
        centerTitle: true,

      ),
      body: Column(
        children: const [
                  Text('''«درس پلی» به حریم خصوصی کاربران خود احترام می‌گذارد و متعهد به حفاظت از اطلاعات شخصی است که شما در اختیار آن می‌گذارید. از آنجا که جمع‌آوری و پردازش اطلاعات شخصی بخش غیرقابل اجتنابی در فرایندهای مبتنی بر گوشی همراه و اینترنت است لذا به منظور آگاهی کامل از سیاست و عملکرد درس پلی در این زمینه، مطالعه این سند تحت عنوان «سیاست نامه حریم خصوصی» و هر گونه پیام دیگری که در خصوص جمع‌آوری و پردازش اطلاعات توسط درس پلی به حساب کاربری شما ارسال می‌شود، ضروری است.''')
        ],
      ),
    ));
  }
}
