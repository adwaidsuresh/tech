import 'package:flutter/material.dart';
import 'package:tec/authnetication/auth.dart';
import 'package:tec/view/login_page.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
            onPressed: () {
              Authentication.logout().then((value) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Login(),
                    ));
              });
            },
            child: Text('logout')),
      ),
      
    );
  }
}
