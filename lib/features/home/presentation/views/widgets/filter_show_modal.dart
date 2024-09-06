import 'package:flutter/material.dart';

import '../../../../auth/presentation/views/widgets/custom_button.dart';
import 'brand_option.dart';

class FilterShowModal extends StatefulWidget {
  const FilterShowModal({super.key});

  @override
  State<FilterShowModal> createState() => _FilterShowModalState();
}

class _FilterShowModalState extends State<FilterShowModal> {
  bool isSalesChecked = false;
  bool isLowToHighPriceChecked = false;
  bool isHighToLowPriceChecked = false;
  bool isHighToLowRatingChecked = false;
  bool isLowToHighRatingChecked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    'فلترة النتائج',
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
                  ),
                  SizedBox(
                    height: 22,
                    width: 22,
                    child: Image.asset('assets/images/filter-edit.png'),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                textAlign: TextAlign.right,
                'فلترة حسب النوع',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w800,
                    fontSize: 16),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [BrandOption(), BrandOption(), BrandOption()],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [BrandOption(), BrandOption(), BrandOption()],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [BrandOption(), BrandOption(), BrandOption()],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [BrandOption(), BrandOption(), BrandOption()],
              ),
              const Divider(),
              const Text(
                'حسب المبيعات',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w700,
                    fontSize: 14),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text('المنتجات الأكثر مبيعا'),
                  SizedBox(
                    width: 30,
                    child: Checkbox(
                      value: isSalesChecked,
                      onChanged: (val) {
                        setState(() {
                          isSalesChecked = val!;
                        });
                      },
                      shape: const CircleBorder(),
                      activeColor: const Color(0xffCA7009),
                      checkColor: Colors.white,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Divider(),
              const Text(
                'حسب السعر',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w700,
                    fontSize: 14),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text('من الأعلى إلى الأقل سعرا'),
                    SizedBox(
                      width: 30,
                      child: Checkbox(
                        value: isHighToLowPriceChecked,
                        onChanged: (val) {
                          setState(() {
                            isHighToLowPriceChecked = val!;
                          });
                        },
                        shape: const CircleBorder(),
                        activeColor: const Color(0xffCA7009),
                        checkColor: Colors.white,
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text('من الأقل إلى الأعلى سعرا'),
                    SizedBox(
                      width: 30,
                      child: Checkbox(
                        value: isLowToHighPriceChecked,
                        onChanged: (val) {
                          setState(() {
                            isLowToHighPriceChecked = val!;
                          });
                        },
                        shape: const CircleBorder(),
                        activeColor: const Color(0xffCA7009),
                        checkColor: Colors.white,
                      ),
                    )
                  ],
                ),
              ]),
              const SizedBox(
                height: 5,
              ),
              const Divider(),
              const Text(
                'حسب التقييم',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w700,
                    fontSize: 14),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text('من الأعلى إلى الأقل تقييما'),
                    SizedBox(
                      width: 30,
                      child: Checkbox(
                        value: isHighToLowRatingChecked,
                        onChanged: (val) {
                          setState(() {
                            isHighToLowRatingChecked = val!;
                          });
                        },
                        shape: const CircleBorder(),
                        activeColor: const Color(0xffCA7009),
                        checkColor: Colors.white,
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text('من الأقل إلى الأعلى تقييما'),
                    SizedBox(
                      width: 30,
                      child: Checkbox(
                        value: isLowToHighRatingChecked,
                        onChanged: (val) {
                          setState(() {
                            isLowToHighRatingChecked = val!;
                          });
                        },
                        shape: const CircleBorder(),
                        activeColor: const Color(0xffCA7009),
                        checkColor: Colors.white,
                      ),
                    )
                  ],
                ),
              ]),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 10),
                child: CustomButton(
                  text: 'فلترة',
                  Navigate: 'containerDetails',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ));
  }
}
