import 'package:flutter/material.dart';
import "package:quiz_app_mob/shared/constant.dart" as constant;

class ProfilePageOption extends StatefulWidget {
  const ProfilePageOption({super.key});

  @override
  State<ProfilePageOption> createState() => _ProfilePageOptionState();
}

class _ProfilePageOptionState extends State<ProfilePageOption> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: Column(
        children: [
          ProfilePageSelectionItem(
            itemIcon: Icons.edit,
            title: constant.profileEdit,
          ),
          ProfilePageSelectionItem(
            itemIcon: Icons.language,
            title: constant.language,
          ),
          ProfilePageSelectionItem(
            itemIcon: Icons.logout,
            title: constant.logout,
          )
        ],
      ),
    );
  }
}

class ProfilePageSelectionItem extends StatelessWidget {
  const ProfilePageSelectionItem({
    super.key,
    required this.itemIcon,
    required this.title,
  });

  final IconData itemIcon;
  final String title;

  @override
  Widget build(BuildContext context) {
    double textScaleFactor = MediaQuery.textScalerOf(context).scale(2);
    return Padding(
      padding: const EdgeInsets.all(8),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6 * textScaleFactor),
          border: Border.all(color: Colors.white),
        ),
        child: ListTile(
          leading: Icon(
            itemIcon,
            color: Colors.white,
            size: 30.0,
          ),
          title: Text(
            title,
            style: TextStyle(fontSize: 8 * textScaleFactor),
          ),
        ),
      ),
    );
  }
}
