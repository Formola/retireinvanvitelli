import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final String dummyAvatar =
      "https://therminic2018.eu/wp-content/uploads/2018/07/dummy-avatar-300x300.jpg";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(dummyAvatar),
                ),
              ),
              const Text(
                "Name Surname",
                style: TextStyle(fontSize: 24.0),
              ),
              const Text(
                "@username",
                style: TextStyle(fontSize: 18.0, color: Colors.black54),
              ),
              TextField(
                controller: TextEditingController()..text = "Name Username",
                decoration: const InputDecoration(label: Text("Username")),
              ),
              TextField(
                controller: TextEditingController()..text = "dummy@dummy.com",
                decoration: const InputDecoration(label: Text("Email")),
              ),
              TextField(
                controller: TextEditingController()
                  ..text = "Via Dummy 3, Dummyland",
                decoration: const InputDecoration(label: Text("Address")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
