import 'package:flutter/material.dart';

import 'filter_show_modal.dart';

class ContainerDetailsAppBar extends StatelessWidget {
  const ContainerDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          const Text('فلترة النتائج'),
          SizedBox(
            height: 20,
            width: 20,
            child: GestureDetector(
                onTap: () => filterModal(context),
                child: Image.asset('assets/images/filter-edit.png')),
          ),
          const SizedBox(
            width: 60,
          ),
          const Text(
            'مكيف جداري',
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
          ),
          const SizedBox(
            width: 80,
          ),
          GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const Icon(Icons.arrow_forward)),
        ],
      ),
    );
  }

  void filterModal(BuildContext context) {
    showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(30),
          ),
        ),
        builder: (context) {
          return const FilterShowModal();
        });
  }
}
