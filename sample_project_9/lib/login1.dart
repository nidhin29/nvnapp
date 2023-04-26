import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:sample_project_9/home1.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final _usercontroller = TextEditingController();
  final _passcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 246, 250, 251),
        appBar: AppBar(
          backgroundColor: Colors.blue,
        ),
        body: // Column(
            //   children: [
            //   Container(
            SingleChildScrollView(
                child: Column(
          children: [
            const Text(
              'Welcome To NVN App',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              selectionColor: Colors.amberAccent,
            ),
            Column(
              children: [
                const SizedBox(
                  child: const Text(
                    'Sign in to continue',
                    style: TextStyle(fontSize: 25),
                    textAlign: TextAlign.left,
                  ),
                  width: 305,
                  height: 100,
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.start,
            ),
            Padding(
              padding: const EdgeInsets.all(35.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(), hintText: 'Username'),
                obscureText: true,
                controller: _usercontroller,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(35.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(), hintText: 'Password'),
                obscureText: true,
                controller: _passcontroller,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  checksigin(context);
                },
                child: const Text('Sign In')),
            TextButton(onPressed: () {}, child: const Text('Forgot Password ?'))
          ],
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        ))

        //  width: 300,
        // height: 100,
        //  color: Colors.deepPurple,

        //     ),TextButton(onPressed:(){},
        //    child: const Text('.........',
        //  style: TextStyle(fontSize:40 ,
        //     fontWeight:FontWeight.bold )))
        // ],crossAxisAlignment: CrossAxisAlignment.center,
        //   ),
        );
  }

  void checksigin(BuildContext context) {
    final _user = _usercontroller.text;
    final _passw = _passcontroller.text;
    if (_user == _passw) {
      //goto home
              Navigator.of(context).push(
          MaterialPageRoute(builder:(BuildContext context){
            return HomeScreen();
          }),
        );
      
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Username and Password does'nt match"),
        backgroundColor: Colors.red,
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.all(10),
        duration: Duration(seconds: 5),
      ));
    }
  }
}
