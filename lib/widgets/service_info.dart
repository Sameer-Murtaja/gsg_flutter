import 'package:flutter/material.dart';

class ServiceInfo extends StatelessWidget {
  const ServiceInfo({super.key, required this.serviceImg});
  final String serviceImg;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.centerRight,
          children: [
            Container(
              width: 197,
              height: 154,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(serviceImg),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Positioned(
              right: -160,
              child: Container(
                width: 216,
                height: 123,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
