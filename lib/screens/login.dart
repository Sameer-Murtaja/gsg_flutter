import 'package:flutter/material.dart';
import 'package:gsg_flutter/routes.dart';

import 'package:gsg_flutter/widgets/custom_text_field.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailCont = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.network(
                'https://plus.unsplash.com/premium_photo-1681487814165-018814e29155?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bG9naW58ZW58MHx8MHx8fDA%3D',
                height: 200,
              ),
              CustomTextField(
                hint: 'Email',
                cont: emailCont,
                validate: (email) {
                  if (email!.contains('@') && email.contains('.')) return null;
                  return 'Enter Valid Email';
                },
              ),
              CustomTextField(
                validate: (password) {
                  if (password!.length >= 8) return null;
                  return 'Weak Password';
                },
                hint: 'password',
                isPassword: true,
                cont: passwordController,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Routes.signup);
                },
                child: Text('didnt have an account?'),
              ),
              ElevatedButton(
                onPressed: () => _login(context),
                child: isLoading ? CircularProgressIndicator() : Text('login'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _login(BuildContext context) async {
    setState(() {
      isLoading = true;
    });
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      isLoading = false;
    });
    if (_formKey.currentState!.validate()) {
      // search how to pass params in named args
      // search about recommended way of navigation in flutter ? and why
      // what is the difference between Navigator 1.0 and Navigator 2.0
      Navigator.pushReplacementNamed(context, Routes.home);
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => Home(name: emailCont.text)),
      // );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Enter Valid Credentials'),
          duration: Duration(milliseconds: 500),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
}
