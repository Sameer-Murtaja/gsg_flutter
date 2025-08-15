import 'package:flutter/material.dart';
import 'package:gsg_flutter/widgets/rating.dart';

class FreelancerInfo extends StatelessWidget {
  const FreelancerInfo({
    super.key,
    required this.img,
    required this.name,
    required this.title,
    required this.rate
  });
  final String img;
  final String name;
  final String title;
  final double rate;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CircleAvatar(backgroundImage: NetworkImage(img), radius: 25),
          SizedBox(height: 3),
          Text(name),
          SizedBox(height: 3),
          Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 3),
          Rating(rate: rate)
        ],
      ),
    );
  }
}
