import 'package:flutter/material.dart';
import 'package:gsg_flutter/data/product_model.dart';
import 'package:gsg_flutter/widgets/product_details.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key, required this.model});
  final ProductModel model;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProductDetails(model: model)),
        );
      },
      leading: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(model.image)),
        ),
      ),
      title: Text(model.title),
      subtitle: Row(
        children: [
          Text(model.rating.toString()),
          const Icon(Icons.star, color: Colors.amberAccent),
          Text('(${model.ratingCount.toString()})'),
        ],
      ),
      trailing: Text(model.price.toString()),
    );
  }
}
