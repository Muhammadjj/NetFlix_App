import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/Model/model_class_data_transfer.dart';
import 'package:netflix_app/Screen/Routes_Method/routes_method.dart';

import '../../Components/Colour_files/all_screen_color.dart';
import 'home_screen_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeScreen> {

  // ** Movie (mulan) all transfer Data.
  var mulanImage = "assest/images/mulan.jpg";
  var mulanFilmName = "Mulan";
  var mulanFilmHours = "2h 50m";
  var mulanFilmRating = "*4.5";
  // ** Movie (A Quiet Place) all transfer Data.
  var aQuietPlaceImage = "assest/images/a_quiet_place.jpg";
  var aQuietPlaceFilmName = "A Quite Place";
  var aQuietPlaceFilmHours = "2h 30m";
  var aQuietPlaceFilmRating = "*2.3";
  // ** Movie (Titanic) all transfer Data.
  var titanicImage = "assest/images/titanic.jpg";
  var titanicFilmName = "Titanic";
  var titanicFilmHours = "3h 10m";
  var titanicFilmRating = "*4.7";
  // ** Movie (CaptainAmerica) all transfer Data.
  var captainAmericaImage = "assest/images/captain.webp";
  var captainAmericaFilmName = "Captain America";
  var captainAmericaFilmHours = "2h 40m";
  var captainAmericaFilmRating = "*7.8";

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    // var width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: allScreenBackgroundColours,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    //** 1st Carousel
                    CarouselViseContainer(
                      onTap: tapThisMovieMulan,
                      ratingScrollImage: mulanImage,
                      filmName: mulanFilmName,
                      filmHours: mulanFilmHours,
                      filmRatingStar: mulanFilmRating,
                    ),
                    // **2nd Carousel
                     CarouselViseContainer(
                      onTap: tapThisAQuietPlaceMovie,
                      ratingScrollImage: aQuietPlaceImage,
                      filmName: aQuietPlaceFilmName,
                      filmHours: aQuietPlaceFilmHours,
                      filmRatingStar: aQuietPlaceFilmRating,
                    ),
                    // **3rd
                     CarouselViseContainer(
                      onTap: tapThisTitanicMovie,
                      ratingScrollImage: titanicImage,
                      filmName: titanicFilmName,
                      filmHours: titanicFilmHours,
                      filmRatingStar: titanicFilmRating,
                    ),
                    // **4th Carousel
                     CarouselViseContainer(
                      onTap: tapThisCaptainAmericaMovie,
                      ratingScrollImage: captainAmericaImage,
                      filmName: captainAmericaFilmName,
                      filmHours: captainAmericaFilmHours,
                      filmRatingStar: captainAmericaFilmRating,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              // ** (Latest) Movie Text .
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AutoSizeText("Latest",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white,),maxLines: 1,),
                    AutoSizeText("See all",
                      style: TextStyle(fontSize: 14, color: Colors.white,), maxLines: 1,),
                  ],
                ),
              ),

              // ** Latest Movies 1st br.
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      MovieRatingScroll(
                        onTap: tapThisMovieMulan,
                        ratingScrollImage: mulanImage,
                        filmName: mulanFilmName,
                        filmHours: mulanFilmHours,
                        filmRatingStar: mulanFilmRating,
                      ),
              const SizedBox(width: 17,),
                    MovieRatingScroll(
                        onTap: tapThisAQuietPlaceMovie,
                        ratingScrollImage: aQuietPlaceImage,
                        filmName: aQuietPlaceFilmName,
                        filmHours: aQuietPlaceFilmHours,
                        filmRatingStar: aQuietPlaceFilmRating,
                      ),
              const SizedBox(width: 17,),
                      MovieRatingScroll(
                        onTap: tapThisCaptainAmericaMovie,
                        ratingScrollImage: captainAmericaImage,
                        filmName: captainAmericaFilmName,
                        filmHours: captainAmericaFilmHours,
                        filmRatingStar: captainAmericaFilmRating,
                      ),
              const SizedBox(width: 17,),
                      MovieRatingScroll(
                        onTap: tapThisTitanicMovie,
                        ratingScrollImage: titanicImage,
                        filmName: titanicFilmName,
                        filmHours: titanicFilmHours,
                        filmRatingStar: titanicFilmRating,
                      ),
              const SizedBox(width: 17,),
                      MovieRatingScroll(
                        onTap: tapThisMovieMulan,
                        ratingScrollImage: mulanImage,
                        filmName: mulanFilmName,
                        filmHours: mulanFilmHours,
                        filmRatingStar: mulanFilmRating,
                      ),
              
                    ],
                  ),
                ),
              ),


              // ** trending Movie Card.
              SizedBox(height: height*0.02,),
              const TrendingMovieCard(),


              // ** Popular Movies Heroes Text.
              SizedBox(height: height*0.02,),
              const Padding(
                 padding:  EdgeInsets.all(12.0),
                 child: Align(
                  alignment: Alignment.topLeft,
                  child: AutoSizeText("Popular Actors",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
               ),
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
               
              // ** Latest Movies Repeat 2nd br.
              const Padding(
                 padding:  EdgeInsets.all(12.0),
                 child: Align(
                  alignment: Alignment.topLeft,
                  child: AutoSizeText("Trends",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
               ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      MovieRatingScroll(
                        onTap: tapThisMovieMulan,
                        ratingScrollImage: mulanImage,
                        filmName: mulanFilmName,
                        filmHours: mulanFilmHours,
                        filmRatingStar: mulanFilmRating,
                      ),
              const SizedBox(width: 17,),
                    MovieRatingScroll(
                        onTap: tapThisAQuietPlaceMovie,
                        ratingScrollImage: aQuietPlaceImage,
                        filmName: aQuietPlaceFilmName,
                        filmHours: aQuietPlaceFilmHours,
                        filmRatingStar: aQuietPlaceFilmRating,
                      ),
              const SizedBox(width: 17,),
                      MovieRatingScroll(
                        onTap: tapThisCaptainAmericaMovie,
                        ratingScrollImage: captainAmericaImage,
                        filmName: captainAmericaFilmName,
                        filmHours: captainAmericaFilmHours,
                        filmRatingStar: captainAmericaFilmRating,
                      ),
              const SizedBox(width: 17,),
                      MovieRatingScroll(
                        onTap: tapThisTitanicMovie,
                        ratingScrollImage: titanicImage,
                        filmName: titanicFilmName,
                        filmHours: titanicFilmHours,
                        filmRatingStar: titanicFilmRating,
                      ),
              const SizedBox(width: 17,),
                      MovieRatingScroll(
                        onTap: tapThisMovieMulan,
                        ratingScrollImage: mulanImage,
                        filmName: mulanFilmName,
                        filmHours: mulanFilmHours,
                        filmRatingStar: mulanFilmRating,
                      ),
              
                    ],
                  ),
                ),
              ),

            ],
          ),
        ));
  }

//** Tap this Mulan Movie.
 void tapThisMovieMulan() {
    Navigator.pushNamed(context, RoutesName.movieMulan,
    arguments:ModelClass(bigImage: mulanImage, filmName: mulanFilmName, filmHours: mulanFilmHours, starRating: mulanFilmRating));
    }

//** Tap This AQuietPlace Movie.
  void tapThisAQuietPlaceMovie() {
    Navigator.pushNamed(context, RoutesName.movieMulan,
        arguments:ModelClass(bigImage: aQuietPlaceImage, filmName: aQuietPlaceFilmName, filmHours: aQuietPlaceFilmHours, starRating: aQuietPlaceFilmRating));
  }

//** Tap This Titanic Movie.
  void tapThisTitanicMovie() {
       Navigator.pushNamed(context, RoutesName.movieTitanic,
       arguments:ModelClass(bigImage: titanicImage, filmName: titanicFilmName, filmHours: titanicFilmHours, starRating: titanicFilmRating) );
}

//** Tap This Captain America Movie.
  void tapThisCaptainAmericaMovie() {
      Navigator.pushNamed(context, RoutesName.movieCaptainAmerica,
      arguments:ModelClass(bigImage: captainAmericaImage, filmName: captainAmericaFilmName, filmHours: captainAmericaFilmHours, starRating: captainAmericaFilmRating) );
 }
}
