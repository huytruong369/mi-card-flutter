import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/avata.jpg'),
            ),
            const Text(
              'Harry Truong',
              style: TextStyle(
                fontSize: 43,
                color: Colors.white,
                fontFamily: 'Cabin',
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                fontFamily: 'Smooch',
                color: Colors.white,
                fontSize: 36,
                fontWeight: FontWeight.w500,
                letterSpacing: 1.3,
              ),
            ),
            const SizedBox(
              height: 23,
              width: 150,
              child: Divider(
                color: Colors.white,
                thickness: 2,
              ),
            ),
            Card(
              color: Colors.white,
              margin: const EdgeInsets.symmetric(
                horizontal: 19,
                vertical: 9,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 9,
                  horizontal: 13,
                ),
                child: Row(
                  children: const [
                    Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      '035 234 6803',
                      style: TextStyle(
                        fontFamily: 'Smooch',
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                        fontSize: 33,
                        letterSpacing: 1.3,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(
                horizontal: 19,
                vertical: 9,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.alternate_email,
                  color: Colors.teal,
                  size: 29,
                ),
                title: Text(
                  'yuhtruong1995@gmail.com',
                  style: TextStyle(
                    color: Colors.teal,
                    fontFamily: 'Smooch',
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
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
