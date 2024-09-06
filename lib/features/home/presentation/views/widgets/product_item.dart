import 'package:athr_project/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductItem extends StatelessWidget {
  const ProductItem(
      {super.key,
      required this.image,
      required this.name,
      required this.desc,
      required this.price});
  final String image, name, desc, price;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'productDetails');
      },
      child: SizedBox(
        //decoration: BoxDecoration(color: Color.fromARGB(255, 248, 248, 248)),
        height: 330,
        width: 180,
        child: Card(
          elevation: 3,
          child: Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Column(
              children: [
                Container(
                  height: 60,
                  width: 180,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.contain, image: AssetImage(image))),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      textDirection: TextDirection.rtl,
                      name,
                      style: const TextStyle(
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
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    Image.asset('assets/images/gree_logo.png')
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Text(
                    textDirection: TextDirection.rtl,
                    desc,
                    style: const TextStyle(color: Colors.grey, fontSize: 11),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      'ر.س  ',
                      style: TextStyle(
                          color: Color(0xffCA7009),
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                    Text(
                      textDirection: TextDirection.rtl,
                      price,
                      style: const TextStyle(
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
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                        onTap: () {},
                        child: const Icon(FontAwesomeIcons.heart)),
                    const SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                        onTap: () {},
                        child: Container(
                            height: 36,
                            width: 120,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xff1D75B1)),
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
      ),
    );
  }
}
