import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rebuy_app/controllers/signUp_controller.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final controller = Get.put(SignUpController());
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  // registeruser() async {
  //   try {} on FirebaseAuthException catch (e) {
  //     if (e.code == 'weak-password') {
  //       print('The password provided is too weak.');
  //     } else if (e.code == 'email-already-in-use') {
  //       print('The account already exists for that email.');
  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Login Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo(clr: Colors.black),
            const SizedBox(height: 100),
            SizedBox(
              width: 500,
              child: Column(
                children: [
                 TextField(
                        controller: email,
                        obscureText: false,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          labelText: 'Email',
                        ),
                      ),
                  SizedBox(height: 10), // Add spacing between TextFields
                 TextField(
                        controller: password,
                        obscureText: true, // To hide password text
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          labelText: 'Password',
                        ),
                      ),
                  SizedBox(height: 10), // Add spacing between TextFields
                  // TextField(
                  //   controller: controller.phoneNo,
                  //   obscureText: true, // To hide password text
                  //   decoration: InputDecoration(
                  //     border: const OutlineInputBorder(),
                  //     labelText: 'Password',
                  //   ),
                  // ),
                  // SizedBox(height: 10), // Add spacing between TextFields
                  // TextField(
                  //   controller: controller.fullName,
                  //   obscureText: true, // To hide password text
                  //   decoration: InputDecoration(
                  //     border: const OutlineInputBorder(),
                  //     labelText: 'Password',
                  //   ),
                  //),
                  SizedBox(height: 20), // Add spacing before the button
                  ElevatedButton(
                    onPressed: () async {
                      await controller.registeruser(email, password);
                    }, // Call the login function
                    child: Text('Register'),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () async {
                      // await Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => FirebaseLogin()));
                    }, // Call the login function
                    child: Text('Already have an account? Login'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
