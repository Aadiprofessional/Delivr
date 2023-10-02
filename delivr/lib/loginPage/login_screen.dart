import 'package:delivr/loginPage/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 130,
          ),
          SizedBox(
            height: 100,
            width: 500,
            child: Image.asset(
              'images/login.png',

              // width: double.infinity,
              // height: double.infinity,
              // fit: BoxFit.scaleDown,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromARGB(10, 24, 30, 34)),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromARGB(10, 24, 30, 34)),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        prefixIcon: const Icon(
                          Icons.person_outline_outlined,
                          color: Color.fromARGB(255, 50, 47, 47),
                        ),
                        hintText: 'Email',
                        filled: true,
                        fillColor: const Color.fromARGB(90, 217, 219, 224),
                        border: const OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromARGB(0, 255, 255, 255)),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromARGB(7, 202, 202, 202)),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        prefixIcon: const Icon(
                          Icons.fingerprint,
                          color: Color.fromARGB(255, 50, 47, 47),
                        ),
                        hintText: 'password',
                        filled: true,
                        fillColor: const Color.fromARGB(134, 217, 219, 224),
                        border: const OutlineInputBorder(),
                        suffixIcon: const IconButton(
                          onPressed: null,
                          icon: Icon(Icons.remove_red_eye_sharp),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Row(
                      children: [CheckboxExample(), Text('Remember me')],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: 300,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 251, 176, 2),
                          onPrimary: const Color.fromARGB(255, 0, 0, 0),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 90, vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(57.0),
                          ),
                        ),
                        child: const Text(
                          'Login',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Forget Password?',
                          style: TextStyle(
                            color: Color.fromARGB(255, 113, 113, 113),
                            fontSize: 13,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    // height: 5,
                    width: 80,
                    child: Divider(
                      color: Color.fromARGB(90, 96, 96, 96),
                      thickness: 1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(3, 0, 3, 0),
                    child: Text(
                      'or continue with',
                      style: TextStyle(
                          fontSize: 14, color: Color.fromARGB(90, 96, 96, 96)),
                    ),
                  ),
                  SizedBox(
                    // height: 5,
                    width: 80,
                    child: Divider(
                      color: Color.fromARGB(90, 96, 96, 96),
                      thickness: 1,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 20), // Adjust the horizontal padding as needed
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              OutlinedButton.icon(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(57.0),
                  ),
                ),
                icon: Image.asset(
                  'images/facebook.png',
                  width: 20,
                ),
                label: const Text(
                  'Facebook',
                  style: TextStyle(color: Color.fromARGB(255, 24, 30, 34)),
                ),
              ),
              const Spacer(),
              OutlinedButton.icon(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(57.0),
                  ),
                ),
                icon: Image.asset(
                  'images/google.png',
                  width: 20,
                ),
                label: const Text(
                  'Google',
                  style: TextStyle(color: Color.fromARGB(255, 24, 30, 34)),
                ),
              ),
            ]),
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
    ));
  }
}

class CheckboxExample extends StatefulWidget {
  const CheckboxExample({super.key});

  @override
  State<CheckboxExample> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return const Color.fromARGB(255, 218, 214, 10);
      }
      return const Color.fromARGB(255, 251, 176, 2);
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}
