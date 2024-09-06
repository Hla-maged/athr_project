import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../constants.dart';
import 'widgets/AppBar.dart';

class SearchResultsView extends StatelessWidget {
  const SearchResultsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const Appbar(
              text: 'نتائج البحث',
            ),
            SizedBox(
              child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  Wrap(
                    children: List.generate(6, (index) {
                      return SizedBox(
                        width: (MediaQuery.of(context).size.width - 10) / 2,
                        child: const Padding(
                          padding: EdgeInsets.only(left: 2, bottom: 12),
                          child: ProductItem(
                            image: 'assets/images/second.png',
                          ),
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (MediaQuery.of(context).size.width) / 2,
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 8, left: 3, right: 3),
          child: Column(
            children: [
              Container(
                height: 90,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.contain, image: AssetImage(image))),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    textDirection: TextDirection.rtl,
                    'مكيف كاسيت جري\n 1.5 حصان',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Image.asset('assets/images/gree_logo.png')],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                const Text(
                  "(4.3)",
                  style: TextStyle(fontSize: 16, color: Color(0xffD3A100)),
                ),
                const SizedBox(width: 8),
                RatingBarIndicator(
                  rating: 4.3,
                  itemBuilder: (context, index) => const Icon(
                    Icons.star,
                    color: Color(0xffD3A100),
                  ),
                  itemCount: 5,
                  itemSize: 20.0,
                ),
              ]),
              const SizedBox(
                height: 5,
              ),
              const Text(
                textDirection: TextDirection.rtl,
                'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما',
                style: TextStyle(color: Colors.grey, fontSize: 10),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'ر.س  ',
                    style: TextStyle(
                        color: Color(0xffCA7009),
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                  Text(
                    textDirection: TextDirection.rtl,
                    '2,750.00',
                    style: TextStyle(
                        color: Color(0xffCA7009),
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  GestureDetector(
                      onTap: () {}, child: const Icon(FontAwesomeIcons.heart)),
                  const SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                      onTap: () {},
                      child: Container(
                          height: 36,
                          width: 120,
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xff1D75B1)),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(6),
                                child: Text(
                                  'أضف للعربة',
                                  style: TextStyle(
                                      color: KPrimaryColor, fontSize: 17),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.shopping_cart,
                                color: KPrimaryColor,
                                size: 20,
                              )
                            ],
                          )))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
