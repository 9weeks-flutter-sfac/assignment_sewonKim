import 'package:assignment1/wordTile.dart';
import 'package:flutter/material.dart';

class WordCard extends StatelessWidget {
  const WordCard({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> words = [
      {"word": "apple", "meaning": "사과", "example": "I want to eat an apple"},
      {
        "word": "paper",
        "meaning": "종이",
        "example": "Could you give me a paper"
      },
      {
        "word": "resilient",
        "meaning": "탄력있는, 회복력있는",
        "example": "She's a resilient girl"
      },
      {
        "word": "revoke",
        "meaning": "취소하다",
        "example":
            "The authorities have revoked their original decision to allow development of this rural area."
      },
      {
        "word": "withdraw",
        "meaning": "철회하다",
        "example":
            "After lunch, we withdrew into her office to finish our discussion in private."
      },
    ];

    var pageController = PageController();

    return Scaffold(
      body: Container(
        child: PageView.builder(
          controller: pageController,
          itemCount: words.length,
          itemBuilder: (context, index) => WordTile(
            word: words[index]["word"].toString(),
            meaning: words[index]["meaning"].toString(),
            example: words[index]["example"].toString(),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: EdgeInsets.all(30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FloatingActionButton(
              onPressed: () {
                pageController.previousPage(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.linear);
              },
              child: Icon(Icons.arrow_back),
            ),
            FloatingActionButton(
              onPressed: () {
                pageController.nextPage(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.linear);
              },
              child: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    );
  }
}
