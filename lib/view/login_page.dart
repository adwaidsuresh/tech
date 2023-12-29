// import 'dart:math';
// import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tec/authnetication/google_auth.dart';
import 'package:tec/extension/responsive.dart';
import 'package:tec/view/main_page.dart';
// import 'package:flutter/services.dart';

class Login extends ConsumerWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: context.width(516),
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'asset/Rectangle 52.png',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: context.width(51),
          ),
          Text(
            'Dive in without delay',
            style: TextStyle(
              // fontFamily: 'font1',
              fontWeight: FontWeight.w900,
              fontSize: context.width(20),
            ),
          ),
          SizedBox(
            height: context.width(8),
          ),
          SizedBox(
            width: context.width(328),
            height: context.width(40),
            child: Center(
              child: Text(
                'Lorem ipsum dolor sit amet consectetur.\n                      Neque et nulla et.',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff7A7A7A),
                  fontSize: context.width(16),
                ),
              ),
            ),
          ),
          SizedBox(
            height: context.width(69),
          ),
          Container(
            width: context.width(185),
            height: context.width(49),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                context.width(10),
              ),
              border: Border.all(color: Colors.black),
            ),
            child: InkWell(
              onTap: () async {
                   try {
              UserCredential result = await Authentication.signInWithGoogle();
              if (result.user != null) {
                print('Signed in with Google: ${result.user!.displayName}');
              }
            } catch (e) {
              print('Error: $e');
            }
          },
              
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('asset/google 4.png'),
                  Text(
                    'Sign in',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: context.width(14),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
