import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("로그인", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: const Image(
                image: AssetImage("assets/images/team_clover_logo.png"),
                width: 250,
                height: 250,
              ),
            ),
            Container(
              width: 300.0,
              child: const TextField(
                decoration: InputDecoration(
                  filled: true,
                  labelText: 'Username',
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              width: 300.0,
              child: const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  labelText: 'Password',
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 10),
              child: TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  print("로그인 버튼 클릭");
                },
                child: const Text("로그인"),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 15),
              child: InkWell(
                onTap: () {
                  print("카카오 로그인 버튼 클릭");
                },
                child: Ink(
                  width: 200,
                  height: 50,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/images/kakao_login_medium_narrow.png'),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: InkWell(
                onTap: () {
                  print("네이버 로그인 버튼 클릭");
                },
                child: Ink(
                  width: 200,
                  height: 50,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/btnG_naver.png'),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
