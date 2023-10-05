import 'package:flutter/material.dart';
import 'package:secret_cat_sdk/api/api.dart';

class UploadPage extends StatelessWidget {
  const UploadPage({super.key});

  @override
  Widget build(BuildContext context) {
    var textController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: false,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/backgroundImage.png'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 350,
              padding: EdgeInsets.only(bottom: 10),
              child: TextField(
                controller: textController,
                maxLines: 8,
                minLines: 7,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.lightBlue,
                          width: 3,
                        )),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: '이곳에 당신의 비밀을 알려주세요.'),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                if (textController.text != '') {
                  var shareSecret = SecretCatApi.addSecret(textController.text);
                  if (shareSecret != null) {
                    Navigator.pop(context);
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text('비밀이 누설되었습니다.')));
                  }
                  ;
                }
              },
              child: Text('비밀 말해주기'),
              style: ElevatedButton.styleFrom(
                  textStyle:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                  fixedSize: Size(350, 40)),
            )
          ],
        ),
      ),
    );
  }
}
