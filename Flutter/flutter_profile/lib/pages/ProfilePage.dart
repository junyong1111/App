import 'package:flutter/material.dart';
import 'package:flutter_profile/components/profile_buttons.dart';
import 'package:flutter_profile/components/profile_count_info.dart';
import 'package:flutter_profile/components/profile_drawer.dart';
import 'package:flutter_profile/components/profile_header.dart';
import 'package:flutter_profile/components/profile_tab.dart';
import 'package:flutter_profile/theme.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: ProfileDrawer(),
      appBar: _buildAppBar(),
      body: Column(
        children: [
          ProfileHeader(),
          ProfileCountInfo(),
          ProfileButtons(),
          ProfileTab(),
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    theme();
    return AppBar(
      leading: Icon(Icons.arrow_back_ios_new),
      title: Text(
        "Profile",
        style: TextStyle(color: Colors.black),
      ),
      centerTitle: true,
    );
  }
}
