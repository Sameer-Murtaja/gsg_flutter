import 'package:flutter/material.dart';
import 'package:gsg_flutter/data/character_model.dart';
import 'package:gsg_flutter/data/product_model.dart';
import 'package:gsg_flutter/widgets/product_details.dart';

class CharacterWidget extends StatelessWidget {
  const CharacterWidget({super.key, required this.model});
  final CharacterModel model;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          spacing: 16,
          children: [
            Container(
              width: 90,
              height: 130,
              decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                  image: NetworkImage(model.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("fullname: ${model.fullname}"),
                Text("nickname: ${model.nickname}"),
                Text("birth date: ${model.birthDate}"),
                Text("hogwarts house: ${model.hogwartsHouse}"),
                Text("interpreted by: ${model.interpretedBy}"),
              ],
            ),
          ],
        ),
      SizedBox(height: 16,)
      ],
      
    );
  }
}
