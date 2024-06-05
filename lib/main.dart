import 'package:flutter/material.dart';
import 'package:clover/main_page.dart';
import 'package:clover/login.dart';
import 'package:clover/student_id.dart';
import 'package:clover/signup.dart';
import 'package:clover/trade.dart';
import 'package:clover/community.dart';
import 'package:clover/reserve.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) => const MainPage(),
        '/login' : (context) => const LoginPage(),
        '/id' : (context) => const StudentIdPage(),
        '/signup' : (context) => const SignUpPage(),
        '/trade' : (context) => const TradePage(),
        '/comunity' : (context) => const CommunityPage(),
        '/reserve' : (context) => const ReservePage()
      },
    );
  }
}
