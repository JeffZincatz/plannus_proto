import 'package:flutter/material.dart';
import 'package:plannus_proto/PresetColors.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PresetColors.background,
      body: SafeArea(
        child: Center(
          child: FractionallySizedBox(
            widthFactor: 0.8,
            child: ListView(
              shrinkWrap: true,
              children: [
                Text(
                  "Get started with us today and end your procrastination!",
                  style: TextStyle(
                    fontSize: 36,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.1,),
                TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: 'Enter your username',
                    labelText: 'Username',
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.email),
                    hintText: 'Enter your email',
                    labelText: 'Email',
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.lock),
                    hintText: 'Enter your password',
                    labelText: 'Password',
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.lock),
                    hintText: 'Repeat your password',
                    labelText: 'Password',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    child: Text(
                      "Get Started!",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: PresetColors.blueAccent,
                      padding: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
