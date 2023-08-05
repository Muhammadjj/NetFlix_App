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
  /// Todo: Using (SearchModelClass) because of Search Page all DATA Update krna ka laya use kya ha 
  List<SearchModelClass> listSearchModelClass = [
    SearchModelClass(image: "assest/images/prisonbreak1.jpg",movieName: "Prison Break",movieDescription: "Fight.Movie",seasonNo: "SeasonNo 1",starView: "*3.6"),
    SearchModelClass(image: "assest/images/mulan.jpg",movieName: "Mulan",movieDescription: "Fight.Movie",seasonNo: "SeasonNo 2",starView: "*40.5"),
    SearchModelClass(image: "assest/images/sisu.jpg",movieName: "Sisu",movieDescription: "Fight.Movie",seasonNo: "SeasonNo 3",starView: "*80.23"),
    SearchModelClass(image: "assest/images/johnwick1.jpg",movieName: "John Wick",movieDescription: "Fight.Movie",seasonNo: "SeasonNo 4",starView: "*30.60"),
  ];
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: allScreenBackgroundColors,
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
                 SizedBox(
                  height: height*0.5,
                  width: width*0.9,
                   child: ListView.builder(
                    scrollDirection: Axis.vertical,
                     itemCount: listSearchModelClass.length,
                     itemBuilder: (BuildContext context, int index) {
                       return MoviesAndSeries(
                        onTap: () {
                          Navigator.pushNamed(context, RoutesName.movieAQuietPlace,
                          /// Todo: Using (ModelClass) because of all pages transfer data as ki waja sa ho raha ha.Aur All Movies Pages ma data Transfer hm ase ModelClass ki waja sa kr raha ha 
                          arguments: ModelClass(
                            bigImage: listSearchModelClass[index].image,
                            filmName: listSearchModelClass[index].movieName, 
                            filmHours: listSearchModelClass[index].movieDescription, 
                            starRating: listSearchModelClass[index].starView)
                            );
                        },
                        image: listSearchModelClass[index].image, 
                        seasonNo: listSearchModelClass[index].seasonNo, 
                        movieName: listSearchModelClass[index].movieName, 
                        movieDescription: listSearchModelClass[index].movieDescription, 
                        starView: listSearchModelClass[index].starView);
                     },
                   ),
                 ),
        
        
            ],
          ),
        ));
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
