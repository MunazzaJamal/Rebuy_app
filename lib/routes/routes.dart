import 'package:get/get.dart';
import 'package:rebuy_app/routes/route_names.dart';
import 'package:rebuy_app/screens/signUp_screen.dart';
import 'package:rebuy_app/screens/splash_screen.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: RoutesName.splash,
          page: () => SplashScreen(),
          transition: Transition.leftToRight,
          transitionDuration: const Duration(seconds: 3),
        ),
        GetPage(
          name: RoutesName.signUp, // Define the new route for HomeScreen2
          page: () => SignupScreen(),
          transition: Transition
              .rightToLeftWithFade, // You can use a different transition
        ),
      ];
}
