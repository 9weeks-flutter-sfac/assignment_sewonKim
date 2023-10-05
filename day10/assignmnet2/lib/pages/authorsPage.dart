import 'package:flutter/material.dart';
import 'package:secret_cat_sdk/api/api.dart';

class AuthorsPage extends StatelessWidget {
  const AuthorsPage({super.key});

  @override
  Widget build(BuildContext context) {
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
              colorFilter: ColorFilter.mode(Colors.black38, BlendMode.darken)),
        ),
        child: FutureBuilder(
          future: SecretCatApi.fetchAuthors(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Container(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4),
                    itemCount: snapshot.data?.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage(
                                snapshot.data![index].avatar ??
                                    'assets/images/secretLogo.png'),
                            radius: 35,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(snapshot.data![index].username),
                        ],
                      );
                    }),
              );
            }
            return SizedBox();
          },
        ),
      ),
    );
  }
}
