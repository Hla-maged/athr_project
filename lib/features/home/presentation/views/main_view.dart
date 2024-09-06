import 'package:athr_project/features/home/presentation/views/projects_view.dart';
import 'package:flutter/material.dart';

import 'cart_view.dart';
import 'home_view.dart';
import 'more_view.dart';
import 'widgets/custom_navigation_item.dart';
import 'works_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  final List<Widget> screens = [
    const HomeView(),
    const ProjectsView(),
    const CartView(),
    const WorksView(),
    const MoreView(),
  ];
  int selected = 0;

  void onTap(int index) {
    setState(() {
      selected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selected,
        children: screens,
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () => onTap(4),
              child: CustomNavigationBarItem(
                  selected: selected == 4,
                  image: 'assets/images/more.png',
                  text: 'المزيد'),
            ),
            GestureDetector(
              onTap: () => onTap(3),
              child: CustomNavigationBarItem(
                  selected: selected == 3,
                  image: 'assets/images/works.png',
                  text: 'أعمالنا'),
            ),
            GestureDetector(
              onTap: () => onTap(2),
              child: CustomNavigationBarItem(
                  selected: selected == 2,
                  image: 'assets/images/projects.png',
                  text: 'مشاريعنا'),
            ),
            GestureDetector(
              onTap: () => onTap(1),
              child: CustomNavigationBarItem(
                  selected: selected == 1,
                  image: 'assets/images/cart.png',
                  text: 'العربة'),
            ),
            GestureDetector(
              onTap: () => onTap(0),
              child: CustomNavigationBarItem(
                  selected: selected == 0,
                  image: 'assets/images/home.png',
                  text: 'الرئيسية'),
            ),
          ],
        ),
      ),
    );
  }
}
