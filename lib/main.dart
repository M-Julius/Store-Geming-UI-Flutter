import 'package:flutter/material.dart';
import 'screen/splash_screen.dart';
import 'screen/register_screen.dart';
import 'screen/login_screen.dart';
import 'screen/home_screen.dart';
import 'screen/detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  /// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.black,
        accentColor: Colors.black54,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/register': (context) => RegisterScreen(),
        '/login': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
        '/detail': (context) => DetailScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
