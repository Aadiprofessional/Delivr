import 'package:delivr/loginPage/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  bool CheckBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(
            'images/otp3.png',
          ),
          Padding(
            padding: const EdgeInsets.all(27.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Enter Mobile Number',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 0, 0, 0)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 251, 176, 2)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      hintText: 'eg.9034955450'),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: CheckBoxValue,
                      onChanged: (bool? newValue) {
                        setState(() {
                          CheckBoxValue = newValue!;
                        });
                      },
                      activeColor: const Color(0xffFBAF02),
                    ),
                    Flexible(
                        child: RichText(
                      text: TextSpan(
                        text: 'By signing up I agree to the',
                        style: DefaultTextStyle.of(context).style.copyWith(
                              color: Colors.black,
                              fontSize: 8.0,
                            ),
                        children: const <TextSpan>[
                          TextSpan(
                            text: ' Terms of use',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                          TextSpan(text: ' and '),
                          TextSpan(
                            text: 'Privacy Policy',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                          TextSpan(text: '.'),
                        ],
                      ),
                    ))
                  ],
                ),
                Center(
                  child: Positioned(
                      bottom: 30,
                      left: 20,
                      right: 20,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: const Color.fromARGB(255, 251, 176, 2),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 110,
                              vertical: 20,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(60),
                            )),
                        child: const Text(
                          'Send OTP',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 11,
                            color: Colors.white,
                          ),
                        ),
                      )),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const Text("Don't have an account?"),
                  TextButton(
                    onPressed: () => Get.to(() => const SignupScreen()),
                    child: const Text(
                      'Sign up',
                      style: TextStyle(
                        color: Color.fromARGB(255, 251, 174, 2),
                        fontSize: 15,
                      ),
                    ),
                  ),
                ]),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
