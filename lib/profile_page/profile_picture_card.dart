import 'package:flutter/material.dart';

class ProfilePictureCard extends StatelessWidget {
  const ProfilePictureCard({
    super.key,
    required this.cardHeight,
    required this.profilePicRadius,
  });

  final double cardHeight;
  final double profilePicRadius;

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.transparent,
      margin: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: cardHeight,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: profilePicRadius,
                backgroundColor: Colors.white,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "Dayanidhi",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}