import 'package:animate_do/animate_do.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../../Components/AppBar_Widget/appbar_file.dart';
import '../../Components/Colour_files/all_screen_color.dart';
import 'profile_screen_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: allScreenBackgroundColours,
      appBar: activityAppBar(appBarText: "Profile"),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            // ** Profile image and (Id's) 
            const ProfilePicture(circleAvatarImage: "assest/images/star_war2.jpg",),
            // ** Title text For (Your Activities).
            titleText(text: "Your Activities"),
            // ** ListTile.
            const ProfileListTile(
              leadingIcon: Icons.bookmark_added,
              title: "BookMark List",
              trailingText: "23",
            ),
            const ProfileListTile(
              leadingIcon: Icons.message,
              title: "Review",
              trailingText: "12",
            ),
            const ProfileListTile(
              leadingIcon: Icons.play_arrow,
              title: "History",
              trailingText: ">",
            ),
            const ProfileListTile(
              leadingIcon: Icons.settings,
              title: "Settings",
              trailingText: ">",
            ),
           
      
          //  **Text For (Account)
          titleText(text: "Account"),
          // **
      
          
            const ProfileListTile(
              leadingIcon: Icons.settings,
              title: "My Subscription Plan",
              trailingText: ">",
            ),
            const ProfileListTile(
              leadingIcon: Icons.password_rounded,
              title: "Change Password",
              trailingText: ">",
            ),
            const ProfileListTile(
              leadingIcon: Icons.logout_outlined,
              title: "Logout",
              trailingText: ">",
            ),
          ],
        ),
      )
    );
  }





    // ** Using text for this (Title text)
Widget titleText({required String text}){
  return  FadeInUp(
    delay:const Duration(milliseconds: 500),
    child: Padding(
      padding: const  EdgeInsets.all(12.0),
      child: Align(
      alignment: Alignment.topLeft,
      child: AutoSizeText(text,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),)),
    ),
  );
}
}
