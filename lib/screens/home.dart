import 'package:flutter/material.dart';
import 'package:gsg_flutter/data/freelancer_model.dart';
import 'package:gsg_flutter/routes.dart';
import 'package:gsg_flutter/screens/login.dart';
import 'package:gsg_flutter/widgets/freelancer_info_widget.dart';
import 'package:gsg_flutter/widgets/section_widget.dart';
import 'package:gsg_flutter/widgets/service_info.dart';

class Home extends StatelessWidget {
  Home({super.key, this.name});
  final String? name;
  final List<FreelancerModel> freelancers = [
    FreelancerModel(
      img:
          'https://images.unsplash.com/photo-1480455624313-e29b44bbfde1?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bWFsZSUyMHByb2ZpbGV8ZW58MHx8MHx8fDA%3D',
      name: 'Ahmed',
      title: 'Engineer',
      rate: 1,
    ),
    FreelancerModel(
      img:
          'https://www.mensjournal.com/.image/t_share/MTk2MTM2NTcwNDMxMjg0NzQx/man-taking-selfie.jpg',
      name: 'Mohamed',
      title: 'Doctor',
      rate: 3.5,
    ),
    FreelancerModel(
      img:
          'https://images.unsplash.com/photo-1480455624313-e29b44bbfde1?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bWFsZSUyMHByb2ZpbGV8ZW58MHx8MHx8fDA%3D',
      name: 'Ahmed',
      title: 'Engineer',
      rate: 5,
    ),
    FreelancerModel(
      img:
          'https://images.unsplash.com/photo-1480455624313-e29b44bbfde1?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bWFsZSUyMHByb2ZpbGV8ZW58MHx8MHx8fDA%3D',
      name: 'Ahmed',
      title: 'Engineer',
      rate: 1,
    ),
    FreelancerModel(
      img:
          'https://www.mensjournal.com/.image/t_share/MTk2MTM2NTcwNDMxMjg0NzQx/man-taking-selfie.jpg',
      name: 'Mohamed',
      title: 'Doctor',
      rate: 3.5,
    ),
    FreelancerModel(
      img:
          'https://images.unsplash.com/photo-1480455624313-e29b44bbfde1?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bWFsZSUyMHByb2ZpbGV8ZW58MHx8MHx8fDA%3D',
      name: 'Ahmed',
      title: 'Engineer',
      rate: 5,
    ),
    FreelancerModel(
      img:
          'https://images.unsplash.com/photo-1480455624313-e29b44bbfde1?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bWFsZSUyMHByb2ZpbGV8ZW58MHx8MHx8fDA%3D',
      name: 'Ahmed',
      title: 'Engineer',
      rate: 1,
    ),
    FreelancerModel(
      img:
          'https://www.mensjournal.com/.image/t_share/MTk2MTM2NTcwNDMxMjg0NzQx/man-taking-selfie.jpg',
      name: 'Mohamed',
      title: 'Doctor',
      rate: 3.5,
    ),
    FreelancerModel(
      img:
          'https://images.unsplash.com/photo-1480455624313-e29b44bbfde1?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bWFsZSUyMHByb2ZpbGV8ZW58MHx8MHx8fDA%3D',
      name: 'Ahmed',
      title: 'Engineer',
      rate: 5,
    ),
    FreelancerModel(
      img:
          'https://images.unsplash.com/photo-1480455624313-e29b44bbfde1?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bWFsZSUyMHByb2ZpbGV8ZW58MHx8MHx8fDA%3D',
      name: 'Ahmed',
      title: 'Engineer',
      rate: 1,
    ),
    FreelancerModel(
      img:
          'https://www.mensjournal.com/.image/t_share/MTk2MTM2NTcwNDMxMjg0NzQx/man-taking-selfie.jpg',
      name: 'Mohamed',
      title: 'Doctor',
      rate: 3.5,
    ),
    FreelancerModel(
      img:
          'https://images.unsplash.com/photo-1480455624313-e29b44bbfde1?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bWFsZSUyMHByb2ZpbGV8ZW58MHx8MHx8fDA%3D',
      name: 'Ahmed',
      title: 'Engineer',
      rate: 5,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/logo.png'),
        actions: [
          Image.asset('assets/bell.png'),
          SizedBox(width: 20),
          Image.asset('assets/cart.png'),
          SizedBox(width: 20),
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, Routes.login);
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  child: Text('Hello ${name ?? 'Guest'}'),
                  alignment: Alignment.centerLeft,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: 'Search',
                          prefixIcon: Icon(Icons.search),
                        ),
                      ),
                    ),
                    SizedBox(width: 30),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(Icons.sort),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Image.asset('assets/offer.png', fit: BoxFit.fitWidth),
                SizedBox(height: 20),
                SectionWidget(sectionTitle: 'Top Rated Freelancers'),
                SizedBox(height: 10),
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return FreelancerInfoWidget(model: freelancers[index]);
                    },
                    itemCount: freelancers.length,
                  ),
                ),
                SizedBox(height: 20),
                SectionWidget(sectionTitle: 'Top services'),
                SizedBox(height: 20),
                ServiceInfo(
                  serviceImg:
                      'https://thumbs.dreamstime.com/b/conceptual-hand-writing-showing-our-services-concept-meaning-occupation-function-serving-intangible-products-male-wear-160644151.jpg',
                  userImg:
                      'https://www.mensjournal.com/.image/t_share/MTk2MTM2NTcwNDMxMjg0NzQx/man-taking-selfie.jpg',
                  userName: "Ahemd",
                  userTitle: "Beautician",
                  details: "Dolon Top service for you",
                  rate: 4.9,
                ),
                ServiceInfo(
                  serviceImg:
                      'https://images.unsplash.com/photo-1454165804606-c3d57bc86b40?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2VydmljZXN8ZW58MHx8MHx8fDA%3D',
                  userImg:
                      'https://www.mensjournal.com/.image/t_share/MTk2MTM2NTcwNDMxMjg0NzQx/man-taking-selfie.jpg',
                  userName: "Ahemd",
                  userTitle: "Beautician",
                  details: "Dolon Top service for you",
                  rate: 4.9,
                ),
                ServiceInfo(
                  serviceImg:
                      'https://www.shutterstock.com/image-photo/double-exposure-business-concept-hands-260nw-1909882510.jpg',
                  userImg:
                      'https://www.mensjournal.com/.image/t_share/MTk2MTM2NTcwNDMxMjg0NzQx/man-taking-selfie.jpg',
                  userName: "Ahemd",
                  userTitle: "Beautician",
                  details: "Dolon Top service for you",
                  rate: 4.9,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// High level function
void showSnackBar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Hello')));
}
