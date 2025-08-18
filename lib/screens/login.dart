import 'package:flutter/material.dart';
import 'package:gsg_flutter/screens/home.dart';
import 'package:gsg_flutter/widgets/custom_text_field.dart';

class Login extends StatelessWidget {
  Login({super.key});
  TextEditingController emailCont = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Center(
        child: Column(
          children: [
            Image.network(
              'https://plus.unsplash.com/premium_photo-1681487814165-018814e29155?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bG9naW58ZW58MHx8MHx8fDA%3D',
              height: 200,
            ),
            CustomTextField(hint: 'Email', cont: emailCont),
            CustomTextField(
              hint: 'password',
              isPassword: true,
              cont: passwordController,
            ),
            ElevatedButton(
              onPressed: () => _login(context),

              child: Text('login'),
            ),
          ],
        ),
      ),
    );
  }

  _login(BuildContext context) {
    // email must contain @ and . symbols
    // password must be at least 8 charchters
    
    var email = emailCont.text;
    var password = passwordController.text;
    emailCont.clear();
    passwordController.clear();
    if (email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Enter Valid Credentials')));
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Home()),
      );
    }
  }
}
