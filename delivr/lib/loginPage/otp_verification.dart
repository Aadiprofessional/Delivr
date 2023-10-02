import 'package:flutter/material.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'OtpTitle',
            ),
            Text('OtpSubTitle'.toUpperCase(),
                style: Theme.of(context).textTheme.headline6),
            const SizedBox(height: 40.0),
            const Text(" support@codingwitht.com", textAlign: TextAlign.center),
            const SizedBox(height: 20.0),
            const SizedBox(height: 20.0),
            SizedBox(
              width: double.infinity,
              child:
                  ElevatedButton(onPressed: () {}, child: const Text('Next')),
            ),
          ],
        ),
      ),
    );
  }
}
