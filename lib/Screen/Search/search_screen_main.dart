import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/Model/model_class_data_transfer.dart';
import 'package:netflix_app/Screen/Routes_Method/routes_method.dart';

import '../../Components/Colour_files/all_screen_color.dart';
import '../Home_Screen/home_screen_widget.dart';
import 'seach_screen_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SearchScreen> {

  // ** Star War
  var image = "assest/images/star_war2.jpg";
  var movieName = "Star War";
  var movieDescription = "Fight.Movie";
  var seasonNo = "SeasonNo 1";
  var starView = "*3.6";
  @override
  Widget build(BuildContext context) {
    // var height = MediaQuery.of(context).size.height;
    // var width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: allScreenBackgroundColours,
        body:  SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              //** Auto Searching Text Field .
              const AutoTextField(),
        
                                      //** Popular Heroes Part */
              // ** Popular Heros Text.
              titleText(text: "Actors"),
                //  ** Popular Heroes.
                 const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                   child:  Row(children: [
                       PopularHeroes(
                        image: "assest/images/hrithik.jpg",
                        firstHeroName: "Hrithik",lastHeroName: "Roshan",
                      ),
                       PopularHeroes(
                        image: "assest/images/andrew.webp",
                        firstHeroName: "Andrew",lastHeroName: "Jhn",
                      ),
                       PopularHeroes(
                        image: "assest/images/fahad.jpg",
                        firstHeroName: "Fahad",lastHeroName: "Mustafa",
                      ),
                       PopularHeroes(
                        image: "assest/images/hrithik.jpg",
                        firstHeroName: "Hrithik",lastHeroName: "Roshan",
                      ),
                   ],),
                 ),
        
        
        
                //  ** Movies and Series text.
                titleText(text: "Movies & Series"),
                 MoviesAndSeries(
                  onTap: starWarMovie,
                  image: image,
                  movieName: movieName,
                  movieDescription: movieDescription,
                  seasonNo: seasonNo,
                  starView: starView,
                ),
        
        
            ],
          ),
        ));
  }

   starWarMovie(){
    Navigator.pushNamed(context, RoutesName.movieMulan,arguments: ModelClass(
      bigImage: image, filmName: movieName, filmHours: seasonNo, starRating: starView));
  }

  // ** Using text for this (Title text)
Widget titleText({required String text}){
  return  Padding(
    padding: const  EdgeInsets.all(12.0),
    child: Align(
    alignment: Alignment.topLeft,
    child: AutoSizeText(text,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),)),
  );
}
}
