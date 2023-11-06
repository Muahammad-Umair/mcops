import 'package:flutter/material.dart';
import 'package:mcops/Widget/custom_appbar.dart';
import 'package:mcops/Widget/custom_button.dart';
import 'package:mcops/Widget/custom_textfield.dart';
import 'package:mcops/Widget/dimention.dart';
import 'package:mcops/main.dart';

class ProfilePageScreen extends StatefulWidget {
  const ProfilePageScreen({super.key});

  @override
  State<ProfilePageScreen> createState() => _ProfilePageScreenState();
}

class _ProfilePageScreenState extends State<ProfilePageScreen> {
  late TextEditingController name;
  late TextEditingController phone;
  late TextEditingController email;
  late TextEditingController address;
  late TextEditingController postalCode;

  @override
  void initState() {
    name = TextEditingController();
    phone = TextEditingController();
    email = TextEditingController();
    address = TextEditingController();
    postalCode = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    name.dispose();
    phone.dispose();
    email.dispose();
    address.dispose();
    postalCode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: CustomAppBar(
            title: "Profile",
            backgroundColr: Colors.white,
            elevations: 0.0,
            titleColor: Colors.black,
            backbutton: true,
            centerTitle: false,
            trailing: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications,
                    color: Colors.black,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.grid_view,
                    color: Colors.black,
                  )),
            ],
          ),
        ),
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
                  height: 70,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: AssetImage('assets/profile.jpeg'),
                        fit: BoxFit.fill),
                  ),
                ),
                const SizedBox(
                  height: Dimensions.paddingSizeDefault,
                ),
                CustomTextField(
                  controller: name,
                  borderColor: Colors.white,
                  showTitle: true,
                  hintText: 'Name...',
                  titleText: "Name",
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.edit),
                    onPressed: () {},
                  ),
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
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.edit),
                    onPressed: () {},
                  ),
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
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.edit),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(
                  height: Dimensions.paddingSizeDefault,
                ),
                CustomTextField(
                  controller: address,
                  borderColor: Colors.white,
                  hintText: "Address...",
                  showTitle: true,
                  titleText: "Address",
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.edit),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(
                  height: Dimensions.paddingSizeDefault,
                ),
                CustomTextField(
                  controller: address,
                  borderColor: Colors.white,
                  hintText: "Postal Code...",
                  showTitle: true,
                  titleText: "Postal Code",
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.edit),
                    onPressed: () {},
                  ),
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
                            builder: (context) => HomeScreen(),
                          ),
                          (route) => false);
                    },
                    title: "Done",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
