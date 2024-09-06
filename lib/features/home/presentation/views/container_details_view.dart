import 'package:athr_project/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'widgets/container_detailes_appbar.dart';
import 'widgets/container_details_product_item.dart';

class ContainerDetailsView extends StatelessWidget {
  const ContainerDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const ContainerDetailsAppBar(),
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
                            child: ContainerDetailsProductItem(
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
                height: 70,
              )
            ],
          ),
        ),
        floatingActionButton: const Padding(
          padding: EdgeInsets.all(12),
          child: CustomButton(
            Navigate: 'requestPrice',
            text: 'طلب عرض سعر',
            icon: Icons.add,
          ),
        ));
  }
}
