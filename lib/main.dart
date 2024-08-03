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
      home: Scaffold(
        backgroundColor: const Color(0xFF535E60),
        appBar: AppBar(
          title: const Text("Profile"),
          titleTextStyle: const TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 26),
          actions: const [
            Icon(Icons.camera_alt, size: 30),
            SizedBox(width: 20),
            Icon(
              Icons.more_vert,
              size: 30,
            ),
            SizedBox(width: 20),
          ],
        ),
        body: const Center(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
          child: Column(
            children: [
              SizedBox(height: 80),
              CircleAvatar(
                radius: 80,
                backgroundColor: Color(0xFFC4C4C4),
                child: Image(
                  image: AssetImage('assest/images/image.png'),
                ),
              ),
              SizedBox(height: 50),
              TypeBar(title: 'User Name ', icon: Icons.person),
              TypeBar(title: "Phone Number", icon: Icons.call),
              TypeBar(title: "Email ID", icon: Icons.mail),
            ],
          ),
        )),
      ),
    );
  }
}

class TypeBar extends StatelessWidget {
  final String title;
  final IconData icon;
  const TypeBar({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 350,
          height: 58,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 22),
                ),
                Icon(icon, size: 30),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
