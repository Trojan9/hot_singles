import 'package:flutter/material.dart';
import 'package:hot_singles/utils/validation.dart';
import 'package:hot_singles/widget/textform/customtextform.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _repasswordController = TextEditingController();
  final _formKey = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: CustomTextField(
          hintText: 'Email Address',
          title: 'Email',
          maxLines: 1,
          controller: _emailController,
          validator: (val) => Validate.validateEmail(val),
        ),
      ),
    );
  }
}
