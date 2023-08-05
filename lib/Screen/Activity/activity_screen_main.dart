import 'package:animate_do/animate_do.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/Components/Colour_files/all_screen_color.dart';

import '../../Components/AppBar_Widget/appbar_file.dart';
import 'activity_screen_widget.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ActivityScreen> {
  List<ActivityListTile> activityListTile = [
    const ActivityListTile(
      image: "assest/images/jawad.jpg",
      title: "Jawad Jani",
      subtitle: "@jawad_305 has liked your post",
    ),
    const ActivityListTile(
      image: "assest/images/asghar.jpg",
      title: "Asghar",
      subtitle: "@asghar_104 has liked your post",
    ),
    const ActivityListTile(
      image: "assest/images/andrew.webp",
      title: "Jawad Jani",
      subtitle: "@andrew_45 has liked your post\nmention your in their story",
    ),
    const ActivityListTile(
      image: "assest/images/captain.webp",
      title: "Captain America",
      subtitle: "@captain_390 has liked your post",
    ),
    const ActivityListTile(
      image: "assest/images/jawad.jpg",
      title: "Jawad Jani",
      subtitle: "@jawad_305 has liked your post",
    ),
    const ActivityListTile(
      image: "assest/images/jawad.jpg",
      title: "Jawad Jani",
      subtitle: "@jawad_305 has liked your post",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var heightMediaQuery = MediaQuery.sizeOf(context).height;
    var widthMediaQuery = MediaQuery.sizeOf(context).width;
    // var bottom = heightMediaQuery -
    return Scaffold(
        backgroundColor: allScreenBackgroundColours,
        appBar: activityAppBar(appBarText: "Activity"),
        body: ListView(children: [
          titleText(text: "Today"),
          SizedBox(
            height: 700,
            width: 300,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: activityListTile.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    activityListTile[index],
                  ],
                );
              },
            ),
          ),

          // //  ** Title text For (this Week)
          titleText(text: "This Week"),

          //   const ActivityListTile(
          //     image: "assest/images/fahad.jpg",
          //     title: "Fahad Mustafa",
          //     subtitle: "@fahad_20 has liked your reviews",
          //   ),
          //   const ActivityListTile(
          //     image: "assest/images/mulan.jpg",
          //     title: "Ayesha",
          //     subtitle: "@captain_390 has mentioned you in\ntheir story",
          //   ),
          //   const ActivityListTile(
          //     image: "assest/images/star_war2.jpg",
          //     title: "Hamad",
          //     subtitle: "@captain_120 has replied to your\ncomment",
          //   ),
          //   const ActivityListTile(
          //     image: "assest/images/titanic.jpg",
          //     title: "Mahi",
          //     subtitle: "@captain_390 has liked your post",
          //   ),
        ]));
  }

  // ** Using text for this (Title text)
  Widget titleText({required String text}) {
    return FadeInUp(
      delay: const Duration(milliseconds: 500),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Align(
            alignment: Alignment.topLeft,
            child: AutoSizeText(
              text,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            )),
      ),
    );
  }
}
