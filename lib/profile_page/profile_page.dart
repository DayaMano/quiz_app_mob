import 'package:flutter/material.dart';
import 'package:quiz_app_mob/profile_page/profile_page_option.dart';
import 'package:quiz_app_mob/profile_page/profile_picture_card.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final cardHeight = screenHeight * 0.3; // 40% of screen height

    final screenWidth = MediaQuery.of(context).size.width;
    final profilePicRadius = screenWidth * 0.1; // 10% of screen width

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ProfilePictureCard(
          cardHeight: cardHeight,
          profilePicRadius: profilePicRadius,
        ),
        const ProfilePageOption(),
      ],
    );
  }
}
