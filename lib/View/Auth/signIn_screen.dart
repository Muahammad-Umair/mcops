import 'package:flutter/material.dart';
import 'package:mcops/View/Auth/singup_screen.dart';
import 'package:mcops/Widget/custom_button.dart';
import 'package:mcops/Widget/custom_textfield.dart';
import 'package:mcops/Widget/dimention.dart';
import 'package:mcops/main.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late TextEditingController email;
  late TextEditingController password;

  @override
  void initState() {
    email = TextEditingController();
    password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                  "Login",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: Dimensions.fontSizeLarge,
                  ),
                ),
                const SizedBox(
                  height: Dimensions.paddingSizeLarge,
                ),
                const Text(
                  "Hey, Enter your detail to sign in to your account",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: Dimensions.paddingSizeExtraLarge,
                ),
                const SizedBox(
                  height: Dimensions.paddingSizeExtraLarge,
                ),
                CustomTextField(
                  controller: email,
                  borderColor: Colors.white,
                  showTitle: true,
                  hintText: 'Email...',
                  titleText: "Email",
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
                  height: Dimensions.paddingSizeExtremeLarge,
                ),
                SizedBox(
                  width: size.width / 1.5,
                  child: CustomButton(
                    backgroundColor: Colors.black,
                    onpressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                          (route) => false);
                    },
                    title: "Sign In",
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
                        builder: (context) => const SignUpScreen(),
                      ),
                      (route) => false,
                    );
                  },
                  elevation: 0.0,
                  title: "Sign Up",
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
