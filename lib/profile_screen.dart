import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Roboto",
      ),
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset("assets/images/beach.jpg"),
                Transform.translate(
                  offset: const Offset(0, 160),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: ClipOval(
                          child: Image.asset(
                            "assets/images/dog.jpg",
                            width: 200.0,
                            height: 200.0,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                      const ProfileDetail(),
                      Container(
                        margin: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            createActionButton(Icons.restaurant, "Feed"),
                            createActionButton(Icons.favorite, "Pet"),
                            createActionButton(Icons.directions_walk, "Walk"),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Column createActionButton(IconData iconData, String action) {
    return Column(
      children: [
        Icon(iconData),
        Text(
          action,
          style: const TextStyle(
            fontSize: 16.0,
          ),
        )
      ],
    );
  }
}

class ProfileDetail extends StatelessWidget {
  const ProfileDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Wolfram Barkovich",
            style: TextStyle(
              fontSize: 36.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              children: List.generate(
                5,
                (index) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
              ),
            ),
          ),
          createPropertyText("Age", "4"),
          createPropertyText("Status", "Good Boy"),
        ],
      ),
    );
  }

  Row createPropertyText(String key, String value) {
    return Row(
      children: [
        Text(
          "$key:",
          style: const TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          value,
          style: const TextStyle(fontSize: 18.0),
        ),
      ],
    );
  }
}
