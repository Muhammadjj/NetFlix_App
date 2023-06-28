import 'package:flutter/material.dart';
import 'package:netflix_app/Model/model_class_data_transfer.dart';
import 'package:netflix_app/Screen/Home_Screen/home_screen_main.dart';
import 'package:netflix_app/Screen/Movie_Pages/Mulan_Movie_Page/mulan_page_main.dart';

import '../Movie_Pages/A_Quiet_Plalce_Movie_page/a_quiet_place_main.dart';
import '../Movie_Pages/Captain_America/captain_page_main.dart';
import '../Movie_Pages/Titanic_Movie_page/titanic_page_main.dart';
import '../netflix_main_Screen.dart';

class RoutesName {
  static const String netFlixMainScreen = "MainNavigationScreen";
  static const String homePage = "homePage";
  static const String movieMulan = "Mulan";
  static const String movieAQuietPlace = "A Quiet Place";
  static const String movieTitanic = "Titanic";
  static const String movieCaptainAmerica = "CaptainAmerica";

}


class RoutesMethod {
  static Route<dynamic>? onGenerate(RouteSettings routeSettings){
    if (routeSettings.name == RoutesName.netFlixMainScreen) {
      return MaterialPageRoute(builder: (context) =>const NetFlixMainPage(),);
    }else if (routeSettings.name == RoutesName.homePage) {
       return MaterialPageRoute(builder: (context) =>const HomeScreen(),);
     }
     else if(routeSettings.name == RoutesName.movieMulan){
      return MaterialPageRoute(builder: (context) => 
      MulanMoviePage(modelClass: routeSettings.arguments as ModelClass),);
     }
     else if(routeSettings.name == RoutesName.movieAQuietPlace){
      return MaterialPageRoute(builder: (context) => 
      AQuitePlaceMovie(modelClass: routeSettings.arguments as ModelClass),);
    }
    else if(routeSettings.name == RoutesName.movieTitanic){
      return MaterialPageRoute(builder: (context) => 
      TitanicMovie(modelClass: routeSettings.arguments as ModelClass),);
    }
    else if(routeSettings.name == RoutesName.movieCaptainAmerica){
      return MaterialPageRoute(builder: (context) => 
      CaptainAmericaMovie(modelClass: routeSettings.arguments as ModelClass),);
    }else{
      return MaterialPageRoute(builder:  (context) => 
      const Scaffold(body: Center(child: Text("Don't Loading NetFlix Page")),),);
    }
  }
}