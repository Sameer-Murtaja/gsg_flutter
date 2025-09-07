import 'package:flutter/material.dart';
import 'package:gsg_flutter/data/freelancer_model.dart';
import 'package:gsg_flutter/routes.dart';
import 'package:gsg_flutter/widgets/rating.dart';

class FreelancerInfoWidget extends StatelessWidget {
  const FreelancerInfoWidget({
    super.key,
     required this.model
  });

  final FreelancerModel model;
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, Routes.freelancerDetails, arguments: model);
      },
      
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CircleAvatar(backgroundImage: NetworkImage(model.img), radius: 25),
            SizedBox(height: 3),
            Text(model.name),
            SizedBox(height: 3),
            Text(model.title, style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 3),
            Rating(rate: model.rate),
          ],
        ),
      ),
    );
  }
}
