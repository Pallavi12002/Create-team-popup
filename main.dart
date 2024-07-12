import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: TeamCreationPopup(),
      ),
    );
  }
}

class TeamCreationPopup extends StatelessWidget {
  const TeamCreationPopup({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Center(
      child: Container(
        width: 336,
        height: 196,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10.0,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              top: 15,
              left: 104.5,
              child: Container(
                width: 98,
                height: 18,
                child: const Center(
                  child: Text(
                    'Hello, Lockie',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2B3550),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 48,
              left: (336 - 336) / 2,
              child: Container(
                width: 336,
                height: 1,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFFC4C4C4),
                      width: 1.0,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 70,
              left: (336 - 336) / 2,
              child: Container(
                width: 336,
                height: 20,
                child: const Center(
                  child: Text(
                    'Please create your team.',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 136,
              left: 90,
              child: GestureDetector(
                onTap: () {
                  // Handle button tap
                  print('CREATE TEAM button tapped');
                },
                child: Container(
                  width: 156,
                  height: 36,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFB9E04),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        decoration: const BoxDecoration(
                          color: Color(0xFFFB9E04),
                          shape: BoxShape.circle,
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.add,
                            size: 16,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        'CREATE TEAM',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                        ),
                      ),
                    ],
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
