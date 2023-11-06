import 'package:flutter/material.dart';
import 'package:mcops/View/profile%20page/profile_page.dart';
import 'package:mcops/Widget/custom_textfield.dart';

class Customdialog2 extends StatefulWidget {
  late TextEditingController otpController;
  Customdialog2({super.key, required this.otpController});

  @override
  State<Customdialog2> createState() => _Customdialog2State();
}

class _Customdialog2State extends State<Customdialog2> {
  bool loading = false;
  bool loadingsubmitbutton = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AlertDialog(
      backgroundColor: Colors.white,
      content: Container(
        height: size.height * 0.33,
        width: size.width,
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 5,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Verification code",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: size.height * 0.005,
              ),
              Text(
                "Kindly enter the one time verification code recieved in your sms",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey.shade600,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Verification code",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade800,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      child: CustomTextField(
                        controller: widget.otpController,
                        hintText: "",
                        fillColor: Colors.white,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () async {
                            setState(() {
                              loading = true;
                            });

                            // bool result =
                            // await Auth.resendOtp(context: context);
                            //
                            // if (result) {
                            //   setState(() {
                            //     loading = false;
                            //   });
                            // }
                            Future.delayed(Duration(seconds: 2)).then((value) {
                              setState(() {
                                loading = false;
                              });
                            });
                          },
                          child: Row(
                            children: [
                              loading
                                  ? Padding(
                                      padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0, vertical: 10)
                                          .copyWith(left: 0, right: 10),
                                      child: SizedBox(
                                        height: 25,
                                        width: 25,
                                        child: CircularProgressIndicator(
                                          color: Colors.red,
                                        ),
                                      ),
                                    )
                                  : SizedBox(
                                      height: 0,
                                    ),
                              Text(
                                'Resend Otp',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
// style: TextButton.styleFrom(
//   backgroundColor: Colors.red,
// ),
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    SizedBox(
                      width: size.width * 0.6,
                      height: size.height * 0.06,
                      child: ElevatedButton(
                        onPressed: () async {
                          // setState(() {
                          //   loadingsubmitbutton = true;
                          // });
                          // bool result = await Auth.verifyOtp(
                          //   otp: widget.otpController.text,
                          //   context: context,
                          // );
                          //
                          // if (result) {
                          //   setState(() {
                          //     loadingsubmitbutton = false;
                          //   });
                          //   await sharedPreferences.setBool("islogin", true);
                          //   await ApiService.checkbalance(context);
                          //   Navigator.pushNamedAndRemoveUntil(
                          //       context, Routes.NavScreen, (route) => false);
                          // }

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProfilePageScreen(),
                            ),
                          );

                          // setState(() {
                          //   loadingsubmitbutton = false;
                          // });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            loadingsubmitbutton
                                ? Padding(
                                    padding: const EdgeInsets.symmetric(
                                            horizontal: 10.0, vertical: 10)
                                        .copyWith(left: 0, right: 10),
                                    child: SizedBox(
                                      height: 25,
                                      width: 25,
                                      child: CircularProgressIndicator(
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                : SizedBox(
                                    height: 0,
                                  ),
                            Text(
                              "Submit",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
// backgroundColor: Color(0xFFC62828),
                            backgroundColor: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )
// padding: EdgeInsets.symmetric(horizontal: 32.0),
                            ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
