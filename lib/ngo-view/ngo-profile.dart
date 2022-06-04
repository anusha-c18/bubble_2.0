import 'package:bubble/model/NGO_Profile.dart';
import 'package:bubble/utils/NGO_User_Prefs.dart';
import 'package:flutter/material.dart';
import 'package:bubble/styles.dart';
import 'package:bubble/model/NGO_Profile.dart';
import 'package:bubble/widgets/ProfileWidget.dart';

class NGOProfile extends StatefulWidget {
  const NGOProfile({Key? key}) : super(key: key);

  @override
  State<NGOProfile> createState() => _NGOProfileState();
}

class _NGOProfileState extends State<NGOProfile> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myNGOProfile;
    return Center(
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              ProfileWidget(imagePath: user.logo_link, onClicked: () async {})

            ],

          ),
        );
  }
}
