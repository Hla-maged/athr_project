import 'package:athr_project/constants.dart';
import 'package:flutter/material.dart';

import 'product_item_listview.dart';
import 'container_type.dart';
import 'custom_appbar.dart';
import 'read_more.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});
  static const List<ContainerType> containers = [
    ContainerType(
      image: 'assets/images/first.png',
      text: 'مكيف اسبلت',
      color: orange,
    ),
    ContainerType(
      image: 'assets/images/second.png',
      text: 'مكيف جداري',
      color: blue,
    ),
    ContainerType(
      image: 'assets/images/third.png',
      text: 'مكيف مخفي',
      color: red,
    ),
    ContainerType(
        color: green, image: 'assets/images/fourth.png', text: 'مكيف كاسيت'),
    ContainerType(
      image: 'assets/images/fifth.png',
      text: 'مكيف باكيج',
      color: babyblue,
    ),
    ContainerType(
      image: 'assets/images/sixth.png',
      text: 'مكيف دولابي',
      color: purple,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14),
      child: CustomScrollView(slivers: [
        SliverToBoxAdapter(
            child: Column(children: [
          const CustomAppBar(),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 200,
            width: 360,
            child: Image.asset('assets/images/photo.png'),
          ),
        ])),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 20,
          ),
        ),
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1.2,
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10),
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return containers[index];
            },
            childCount: containers.length,
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 30,
          ),
        ),
        const SliverToBoxAdapter(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ReadMore(),
              SizedBox(
                width: 60,
              ),
              Text('الأكثر مبيعا',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900))
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'أكثر منتجاتنا تحقيقا للمبيعات',
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 25,
          ),
        ),
        const SliverToBoxAdapter(
            child: ProductListViewItem(
          name: 'مكيف كاسيت جري\n 1.5 حصان',
          price: '2,750.00',
          desc: 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما',
          image: 'assets/images/second.png',
        )),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 60,
          ),
        ),
        const SliverToBoxAdapter(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ReadMore(),
              SizedBox(
                width: 30,
              ),
              Text('فتحات التكييف الألومنيوم',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900))
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'مبيعات فتحات التكييف الألومنيوم المتاحة لدينا',
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 25,
          ),
        ),
        const SliverToBoxAdapter(
            child: ProductListViewItem(
          name: 'فتحة تكييف هواء معدني\n مصنعة من الألومنيوم',
          price: '2,750.00',
          desc: 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما',
          image: 'assets/images/Mask Group 2375 1.png',
        )),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 30,
          ),
        ),
      ]),
    );
  }
}
