import 'package:flutter/material.dart';
import 'package:plannus_proto/PresetColors.dart';

class Init extends StatelessWidget {
  const Init({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PresetColors.background,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/notebook-logo.png",
                  scale: 20,
                ),
                Image.asset(
                  "assets/PlanNUS.png",
                  scale: 2,
                ),
              ],
            ),
            Column(
              children: [
                TextButton.icon(
                  onPressed: (){Navigator.pushNamed(context, '/login');},
                  icon: Icon(
                    Icons.login_rounded,
                    color: Colors.white,
                  ),
                  label: Text(
                      "Log In",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24
                      ),
                    ),
                  style: TextButton.styleFrom(
                    backgroundColor: PresetColors.blue,
                    minimumSize: Size(200, 50),
                    padding: EdgeInsets.all(5),
                  ),
                ),
                SizedBox(height: 30,),
                TextButton.icon(
                  onPressed: (){Navigator.pushNamed(context, '/signup');},
                  icon: Icon(
                    Icons.account_box,
                    color: PresetColors.blue,
                  ),
                  label: Text(
                    "Sign Up",
                    style: TextStyle(
                        color: PresetColors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 24
                    ),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    minimumSize: Size(200, 50),
                    padding: EdgeInsets.all(5),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
