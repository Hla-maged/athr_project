import 'package:athr_project/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'widgets/option_card.dart';
import 'widgets/quantity.dart';
import 'widgets/review_item.dart';

class ProductDetails extends StatelessWidget {
  ProductDetails({super.key});

  final List<String> images = [
    'assets/images/second.png',
    'assets/images/second.png',
    'assets/images/second.png',
    'assets/images/second.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              const AppBar(),
              Container(
                height: 220,
                width: 420,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/second.png'),
                        fit: BoxFit.contain)),
              ),
              SizedBox(
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: images.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 225, 224, 224),
                                  borderRadius: BorderRadius.circular(16)),
                              child: Image.asset(images[index])),
                        );
                      }),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'مكيف كاسيت جري 1.5 حصان',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  )
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                const Text(
                  "(4.3)",
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(width: 8),
                RatingBarIndicator(
                  rating: 4.3,
                  itemBuilder: (context, index) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  itemCount: 5,
                  itemSize: 20.0,
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                    height: 25,
                    child: Image.asset('assets/images/gree_logo.png')),
              ]),
              const SizedBox(
                height: 8,
              ),
              const Text(
                textAlign: TextAlign.right,
                'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف. عوضاً عن استخدام "هنا يوجد محتوى نصي، هنا يوجد محتوى نصي" فتجعلها تبدو',
                style: TextStyle(color: Color(0xff8A8A8A), fontSize: 14),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'ر.س',
                    style: TextStyle(color: Color(0xffCA7009), fontSize: 18),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '2,750.00',
                    style: TextStyle(color: Color(0xffCA7009), fontSize: 20),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OptionCard(
                    label: '10 متر نحاس\n+توريد وتركيب',
                    price: '+ 850 ر.س',
                    selected: false,
                  ),
                  OptionCard(
                    label: 'توريد وتركيب\nبدون نحاس',
                    price: '+500  ر.س',
                    selected: false,
                  ),
                  OptionCard(
                    label: 'توريد\n فقط',
                    price: 'لا يوجد سعر إضافي',
                    selected: true,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Center(
                child: Text(
                  'حدد الكمية المطلوبة',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Quantity(),
              const SizedBox(
                height: 20,
              ),
              const CustomButton(
                  text: 'إضافة إلى عربة التسوق', icon: Icons.shopping_cart),
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'تقييمات المنتج',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffD3A100),
                  )
                ],
              ),
              const SizedBox(
                height: 3,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'عرض لجميع التقييمات على هذا المنتج',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const ReviewItem(
                  name: 'محمود الشهراني',
                  date: 'منذ 3 أشهر',
                  desc:
                      'هنا يكتب تقييم المستخدم الذي قام بتقييمه للمنتج عند الشراء',
                  rate: 4.0),
              const SizedBox(
                height: 10,
              ),
              const ReviewItem(
                  name: 'محمود الشهراني',
                  date: 'منذ 3 أشهر',
                  desc:
                      'هنا يكتب تقييم المستخدم الذي قام بتقييمه للمنتج عند الشراء',
                  rate: 4.0),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AppBar extends StatelessWidget {
  const AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 10,
        ),
        const Icon(FontAwesomeIcons.heart),
        const SizedBox(
          width: 80,
        ),
        const Text(
          'تفاصيل المنتج',
          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
        ),
        const SizedBox(
          width: 80,
        ),
        GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(Icons.arrow_forward)),
      ],
    );
  }
}
