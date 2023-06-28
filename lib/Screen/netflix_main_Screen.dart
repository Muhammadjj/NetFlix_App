// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:netflix_app/Screen/Home_Screen/home_screen_main.dart';
import 'package:netflix_app/Screen/Profile/profile_screen_main.dart';
import 'package:netflix_app/Screen/Routes_Method/routes_method.dart';
import 'package:netflix_app/Screen/Search/search_screen_main.dart';
import '../Components/Colour_files/all_screen_color.dart';
import 'Activity/activity_screen_main.dart';

void main() {
  runApp(const NetFlix());
  SystemChrome.setSystemUIOverlayStyle(
   const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Colors.black,
      systemNavigationBarIconBrightness: Brightness.light));
}

class NetFlix extends StatelessWidget {
  const NetFlix({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NetFlix App',
      
      theme: ThemeData(primarySwatch: Colors.grey,),
      initialRoute: RoutesName.netFlixMainScreen,
      onGenerateRoute: RoutesMethod.onGenerate,
    );
  }
}

class NetFlixMainPage extends StatefulWidget {
  const NetFlixMainPage({super.key});

  @override
  State<NetFlixMainPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<NetFlixMainPage> {
  var selected = 0;

   void onTaps(int index){
    setState(() {
      selected = index;
    });
   }
  // ** List hm ny as laya bnye q ky hmy wo all Classes chaya the jn ko hmm ny 
  // ** BottomNavigationBar ma View krwana ha .
  List listOfBottomBarShowClasses =[
     const HomeScreen(),
     const SearchScreen(),
     const ActivityScreen(),
     const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar:BottomNavigationBar(
      currentIndex: selected,
      onTap: onTaps,
      iconSize: 25,
      selectedItemColor: Colors.red,
      showUnselectedLabels: true,
      items:  [
       BottomNavigationBarItem(icon: const Icon(Icons.home),label:"Home",backgroundColor: bottomNavigationBarBackgroundColours),
       BottomNavigationBarItem(icon:const Icon(Icons.search), label:"Search",backgroundColor: bottomNavigationBarBackgroundColours),
       BottomNavigationBarItem(icon:const Icon(Icons.favorite_outline), label:"Activity",backgroundColor: bottomNavigationBarBackgroundColours),
       BottomNavigationBarItem(icon:const Icon(Icons.person_pin), label:"Profile",backgroundColor: bottomNavigationBarBackgroundColours),
      ]),
      
      body: listOfBottomBarShowClasses[selected],
    );
  }
}
