import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Container(
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(children: [
                  TextSpan(
                      text:
                          '인생은 롤러코스터와 같아.\n 둘 다 오르막과 내리막이 있으니까.\n 하지만 두려움에 떨거나 즐기는 것은 너의 선택이야.\n\n',
                      style: TextStyle(
                        color: Colors.lightBlue,
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        height: 2.5,
                      )),
                  TextSpan(
                      text:
                          '내가 좋아하는 것에만 집중하기로 했다.\n 그 밖의 것들까지 신경쓰기엔 인생은 너무 짧으니깐 \n\n',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                        height: 2.5,
                      )),
                  TextSpan(
                      text: '타인의 시선에 갇혀살지 않기를\n 오늘의 내가, 나에게 당당하고 솔직하기를.\n',
                      style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                        height: 2.5,
                      )),
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
