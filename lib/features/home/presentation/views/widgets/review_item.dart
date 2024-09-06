import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewItem extends StatelessWidget {
  final String name, desc, date;
  final double rate;

  const ReviewItem(
      {super.key,
      required this.name,
      required this.desc,
      required this.date,
      required this.rate});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 364,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 242, 242, 249),
        borderRadius: BorderRadiusDirectional.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  '($rate)',
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(width: 8),
                RatingBarIndicator(
                  rating: rate,
                  itemBuilder: (context, index) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  itemCount: 5,
                  itemSize: 20.0,
                ),
                const SizedBox(
                  width: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    Text(date,
                        style: const TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w300))
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                const CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Icon(
                    Icons.person_outline_outlined,
                    color: Colors.blue,
                    size: 35,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15, left: 15),
              child: Text(
                desc,
                textAlign: TextAlign.end,
              ),
            ),
    
          ],
        ),
      ),
    );
  }
}
