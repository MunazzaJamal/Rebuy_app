import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rebuy_app/controllers/signUp_controller.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});
  SignUpController controller = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('SignUp Screen'),
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
                    controller: controller.emailController,
                    obscureText: false,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  ),
                  SizedBox(height: 10), // Add spacing between TextFields
                  TextField(
                    controller: controller.passwordController,
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

                  Obx(() {
                    return controller.isLoading.value
                        ? CircularProgressIndicator()
                        : ElevatedButton(
                            onPressed: () async {
                              await controller.registeruser();
                            },
                            child: Text('Register'),
                          );
                  }),

                  // ElevatedButton(
                  //   onPressed: () async {
                  //     await controller.registeruser(email, password);
                  //   }, // Call the login function
                  //   child: Text('Register'),
                  // ),
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
