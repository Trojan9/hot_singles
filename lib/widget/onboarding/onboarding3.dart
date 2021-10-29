import 'package:flutter/material.dart';
import 'package:hot_singles/utils/buttons/custom_button.dart';
import 'package:hot_singles/utils/buttons/textbutton.dart';
import 'package:hot_singles/utils/colors.dart';
import 'package:hot_singles/utils/spacing.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hot_singles/widget/appname.dart';

class Onboarding3 extends StatefulWidget {
  final Function() notifyParent;

  const Onboarding3({Key? key, required this.notifyParent}) : super(key: key);

  @override
  State<Onboarding3> createState() => _Onboarding3State();
}

class _Onboarding3State extends State<Onboarding3> {
  void skip() {
    // print("okay");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/4.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: FittedBox(
          fit: BoxFit.fill,
          child: Padding(
            padding: const EdgeInsets.only(left: 38.0, right: 38.0),
            child: Column(
              children: [
                verticalSpaceLarge,
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Appname(
                      size: 20,
                    ),
                  ),
                ),
                verticalSpaceMedium,
                SizedBox(
                  height: MediaQuery.of(context).size.height / 2,
                ),
                SizedBox(
                    width: MediaQuery.of(context).size.width / 1.5,
                    child: Center(
                      child: Text(
                        "Hot singles looking to link up with their taste, join now to meet up with various people.",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                    )),
                verticalSpaceMedium,
                CustomButton(
                  title: 'Login you in...',
                  fontSize: 13,
                  height: 50,
                  busy: false,
                  buttonColor: logocolor,
                  onPressed: () {
                    // final Map<String, String> data = {
                    //   "email": _emailController.text,
                    //   "password": _passwordController.text
                    // };
                    // if (_formKey.currentState.validate()) {
                    //   print(data);
                    //   model.loginUser(data);
                    // }
                  },
                  borderColor: logocolor,
                  newWidget: null,
                  width: MediaQuery.of(context).size.width / 1.5,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 8,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
