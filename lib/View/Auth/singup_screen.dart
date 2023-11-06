import 'package:flutter/material.dart';
import 'package:mcops/View/Auth/signIn_screen.dart';
import 'package:mcops/Widget/custom_button.dart';
import 'package:mcops/Widget/custom_textfield.dart';
import 'package:mcops/Widget/dimention.dart';
import 'package:mcops/Widget/otp_dialog.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late TextEditingController name;
  late TextEditingController phone;
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController Cpassword;
  late TextEditingController otpController;

  @override
  void initState() {
    name = TextEditingController();
    phone = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    Cpassword = TextEditingController();
    otpController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    name.dispose();
    phone.dispose();
    email.dispose();
    password.dispose();
    Cpassword.dispose();
    otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const SizedBox(
                  height: Dimensions.paddingSizeExtraLarge,
                ),
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    image: const DecorationImage(
                      image: AssetImage('assets/mcops_logo.png'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: Dimensions.paddingSizeDefault,
                ),
                Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: Dimensions.fontSizeLarge,
                  ),
                ),
                const SizedBox(
                  height: Dimensions.paddingSizeExtraLarge,
                ),
                CustomTextField(
                  controller: name,
                  borderColor: Colors.white,
                  showTitle: true,
                  hintText: 'Name...',
                  titleText: "Name",
                ),
                const SizedBox(
                  height: Dimensions.paddingSizeDefault,
                ),
                CustomTextField(
                  controller: email,
                  borderColor: Colors.white,
                  hintText: "Email...",
                  showTitle: true,
                  inputType: TextInputType.emailAddress,
                  titleText: "Email",
                ),
                const SizedBox(
                  height: Dimensions.paddingSizeDefault,
                ),
                CustomTextField(
                  controller: phone,
                  borderColor: Colors.white,
                  hintText: "Phone...",
                  showTitle: true,
                  titleText: "Phone",
                  inputType: TextInputType.phone,
                ),
                const SizedBox(
                  height: Dimensions.paddingSizeDefault,
                ),
                CustomTextField(
                  controller: password,
                  borderColor: Colors.white,
                  hintText: "Password...",
                  showTitle: true,
                  titleText: "Password",
                  isPassword: true,
                ),
                const SizedBox(
                  height: Dimensions.paddingSizeDefault,
                ),
                CustomTextField(
                  controller: password,
                  borderColor: Colors.white,
                  hintText: "Re-Password...",
                  showTitle: true,
                  titleText: "Re-Password",
                  isPassword: true,
                ),
                const SizedBox(
                  height: Dimensions.paddingSizeExtremeLarge,
                ),
                SizedBox(
                  width: size.width / 1.5,
                  child: CustomButton(
                    backgroundColor: Colors.black,
                    onpressed: () {
                      showDialog(
                        context: context,
                        builder: (context) =>
                            Customdialog2(otpController: otpController),
                      );
                    },
                    title: "Sign up",
                  ),
                ),
                const SizedBox(
                  height: Dimensions.paddingSizeDefault,
                ),
                CustomTextButton(
                  onpressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignInScreen(),
                        ),
                        (route) => false);
                  },
                  elevation: 0.0,
                  title: "Sign In",
                  titleColor: Colors.black,
                  titleSize: Dimensions.fontSizeLarge,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
