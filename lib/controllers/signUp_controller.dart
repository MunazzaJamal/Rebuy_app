import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
 // static SignUpController get instance => Get.find();

  //TextField Controllers to get data from TextFields
  // TextEditingController email = TextEditingController();
  // TextEditingController password = TextEditingController();
  // final fullName = TextEditingController();
  // final phoneNo = TextEditingController();

  //Call this Function from Design & it will do the rest
  // void registerUser(String email, String password) {
  //   String? error = AuthenticationRepository.instance
  //       .createUserWithEmailAndPassword(email, password) as String?;
  //   if (error != null) {
  //     Get.showSnackbar(GetSnackBar(
  //       message: error.toString(),
  //     ));
  //   }
  // }

  registeruser(email, password) async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email.text.trim(),
        password: password.text.trim(),
      );
      print('User registered: ${userCredential.user?.email}');
      // Get.to
      Get.snackbar('Successful', 'You are logged in.');
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
        Get.snackbar('Error', 'The account already exists for that email.');
      } else if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else {
        print('Error: ${e.message}');
      }
    } catch (e) {
      print(e);
    }
  }
}
