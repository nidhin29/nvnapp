import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';
import 'package:sample_project_9/login1.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.greenAccent,
      theme: ThemeData(primaryColor: Colors.black),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashState();
}

class _SplashState extends State<SplashScreen> {
  @override
  void initState() {
    gotologin();

    super.initState();
  }

  // @override
  //void didChangeDependencies() {
  // TODO: implement didChangeDependencies
  //   super.didChangeDependencies();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset('lib/assets2/images01/my_image_1.jpeg')),
    );
  }

  Future<void> gotologin() async {
    await Future.delayed(const Duration(seconds: 5));
    // MaterialPageRoute(
    // builder: (context) => LoginScreen(),
    //  );
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (BuildContext context) {
      return LoginScreen();
    }));

    //  @override
    //  void dispose() {
    // TODO: implement dispose
    //    super.dispose();
    //  }
  }
}
