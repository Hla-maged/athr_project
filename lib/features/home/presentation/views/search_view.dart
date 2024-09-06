import 'package:flutter/material.dart';

import 'widgets/AppBar.dart';
import 'widgets/search_textfeild.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Appbar(text: 'البحث',),
            SizedBox(
              height: 30,
            ),
            SearchTextFeild(),
            SizedBox(
              height: 180,
            ),
            Center(
              child: Icon(
                Icons.youtube_searched_for,
                color: Colors.grey,
                size: 100,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'عذرا , لا توجد نتائج للبحث',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

