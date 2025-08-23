import 'package:flutter/material.dart';
import 'package:gsg_flutter/widgets/rating.dart';

class ServiceInfo extends StatelessWidget {
  const ServiceInfo({
    super.key,
    required this.serviceImg,
    required this.userImg,
    required this.userName,
    required this.userTitle,
    required this.details,
    required this.rate,
  });
  final String serviceImg;
  final String userImg;
  final String userName;
  final String userTitle;
  final String details;
  final double rate;
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
                width: 230,
                height: 123,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [BoxShadow(color: Colors.grey.shade700)],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(userImg),
                        radius: 15,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                userName,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                userTitle,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                details,
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontSize: 10,
                                ),
                              ),
                              SizedBox(height: 10),
                              Row(children: [Rating(rate: rate),
                              TextButton(onPressed: (){}, child: Container(padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16), decoration: BoxDecoration(color: Colors.deepPurple, borderRadius: BorderRadius.circular(8)), child: Text("Book Now", style: TextStyle(color: Colors.white),)))]),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
