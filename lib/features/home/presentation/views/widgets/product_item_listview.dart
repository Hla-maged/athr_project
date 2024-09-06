import 'package:athr_project/features/home/presentation/views/widgets/product_item.dart';
import 'package:flutter/material.dart';

class ProductListViewItem extends StatelessWidget {
  const ProductListViewItem({super.key, required this.image, required this.name, required this.desc, required this.price});
  final String image,name,desc,price;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 290,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          reverse: true,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(3),
              child: ProductItem(
                name:name,
                 
                price:price,
              
                desc: desc
                ,
              
                image: image,
              ),
            );
          }),
    );
  }
}
