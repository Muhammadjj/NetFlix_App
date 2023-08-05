import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/Model/model_class_data_transfer.dart';
import 'package:netflix_app/Screen/Routes_Method/routes_method.dart';
import '../../Components/Colour_files/all_screen_color.dart';
import '../../Components/Detail_Screen_page/detail_page_method.dart';
import 'home_screen_widget.dart';

class HomeScreen extends StatefulWidget {
   const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeScreen> {



  ///  ** Movies Using ModelClass List ya data Home Screen pr bhi view 
  ///  ** ho ga aur hm (Navigator) ka zrya aga data ko transfer bhi kr raha 
  ///  ** ha
   List<ModelClass> list1OfModelClass = [
    ModelClass(bigImage: "assest/images/mulan.jpg",filmHours: "2h 50m",filmName: "Mulan",starRating: "*4.5",),
    ModelClass(bigImage: "assest/images/a_quiet_place.jpg",filmHours: "2h 30m",filmName: "A Quite Place",starRating: "*2.3"),
    ModelClass(bigImage: "assest/images/titanic.jpg",filmHours: "3h 10m",filmName: "Titanic",starRating: "*4.5"),
    ModelClass(bigImage: "assest/images/captain.webp",filmHours: "2h 40m",filmName: "Captain America",starRating: "*7.8"),
   ];

  ///  ** Movies Using ModelClass List ya data Home Screen pr bhi view 
  ///  ** ho ga aur hm (Navigator) ka zrya aga data ko transfer bhi kr raha 
  ///  ** ha
   List<ModelClass> list2OfModelClass = [
    ModelClass(bigImage: "assest/images/entrapment1.jpeg",filmHours: "2h 30m",filmName: "Entrapment",starRating: "*30.5",),
    ModelClass(bigImage: "assest/images/johnwick1.jpg",filmHours: "3h 00m",filmName: "John Wick",starRating: "*44.8"),
    ModelClass(bigImage: "assest/images/prisonbreak1.jpg",filmHours: "2h 25m",filmName: "Prison Break",starRating: "*80.5"),
    ModelClass(bigImage: "assest/images/sisu.jpg",filmHours: "2h 40m",filmName: "Sisu",starRating: "*77.8"),
   ];
   
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(backgroundColor: allScreenBackgroundColours,

        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
                SizedBox(
                height: height*0.45,
                width: width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: list1OfModelClass.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CarouselViseContainer(
                      onTap: () {
                        Navigator.pushNamed(context, RoutesName.movieAQuietPlace,
                        arguments: ModelClass(
                          bigImage: list1OfModelClass[index].bigImage,
                           filmName: list1OfModelClass[index].filmName,
                            filmHours: list1OfModelClass[index].filmHours,
                             starRating: list1OfModelClass[index].starRating,));
                      },
                      ratingScrollImage: list1OfModelClass[index].bigImage,
                       filmName: list1OfModelClass[index].filmName,
                        filmHours: list1OfModelClass[index].filmHours,
                         filmRatingStar: list1OfModelClass[index].starRating);
                  },
                ),
              ),


               SizedBox(height: height*0.01,),
              // ** (Latest) Movie Text .
               Padding(
                padding:const EdgeInsets.all(4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // ** Text For Latest Movies.
                    titleText(text: "Latest"),
                    const AutoSizeText("See all",
                      style: TextStyle(fontSize: 14, color: Colors.white,), maxLines: 1,),
                  ],
                ),
              ),

              // ** Latest Movies 1st br.
              SizedBox(
                  height: height*0.3,
                  width: width,
                  child: ListView.builder(
                    itemCount: list1OfModelClass.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return MovieRatingScroll(
                        onTap: () {
                          Navigator.pushNamed(context, RoutesName.movieAQuietPlace,
                          arguments: ModelClass(
                            bigImage: list1OfModelClass[index].bigImage,
                             filmName: list1OfModelClass[index].filmName,
                              filmHours: list1OfModelClass[index].filmHours,
                               starRating: list1OfModelClass[index].starRating
                               ));
                        },
                        ratingScrollImage: list1OfModelClass[index].bigImage,
                        filmName: list1OfModelClass[index].filmName,
                        filmHours: list1OfModelClass[index].filmHours,
                        filmRatingStar: list1OfModelClass[index].starRating,
                      );
                    },
                  ),
                ),
                

                // ** Second (ListView.builder) show Paid Movies Text.
                titleText(text: "Paid Movies"),
                // ** Second (ListView.builder) show Paid Movies Text.
                SizedBox(
                  height: height*0.3,
                  width: width,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: list1OfModelClass.length,
                    itemBuilder: (BuildContext context, int index) {
                      return MovieRatingScroll(
                        onTap: () {
                          Navigator.pushNamed(context, RoutesName.movieAQuietPlace,
                          arguments:  ModelClass(
                            bigImage: list2OfModelClass[index].bigImage, 
                            filmName: list2OfModelClass[index].filmName, 
                            filmHours: list2OfModelClass[index].filmHours, 
                            starRating: list2OfModelClass[index].starRating));
                        },
                        ratingScrollImage: list2OfModelClass[index].bigImage, 
                        filmName: list2OfModelClass[index].filmName, 
                        filmHours: list2OfModelClass[index].filmHours, 
                        filmRatingStar: list2OfModelClass[index].starRating);
                    },
                  ),
                ),

              // ** trending Movie Card.
              SizedBox(height: height*0.02,),
              const TrendingMovieCard(),


              // ** Popular Movies Heroes Text.
              SizedBox(height: height*0.01,),
              titleText(text: "Popular Actors"),
              // const Padding(
              //    padding:  EdgeInsets.all(12.0),
              //    child: Align(
              //     alignment: Alignment.topLeft,
              //     child: AutoSizeText("Popular Actors",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
              //  ),
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
              titleText(text: "Trends"),
              // const Padding(
              //    padding:  EdgeInsets.all(12.0),
              //    child: Align(
              //     alignment: Alignment.topLeft,
              //     child: AutoSizeText("Trends",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
              //  ),
                

                SizedBox(
                  height: height*0.3,
                  width: width,
                  child: ListView.builder(
                    itemCount: list1OfModelClass.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return MovieRatingScroll(
                        onTap: () {
                          Navigator.pushNamed(context, RoutesName.movieAQuietPlace,
                          arguments: ModelClass(
                            bigImage: list1OfModelClass[index].bigImage,
                             filmName: list1OfModelClass[index].filmName,
                              filmHours: list1OfModelClass[index].filmHours,
                               starRating: list1OfModelClass[index].starRating
                               ));
                        },
                        ratingScrollImage: list1OfModelClass[index].bigImage,
                        filmName: list1OfModelClass[index].filmName,
                        filmHours: list1OfModelClass[index].filmHours,
                        filmRatingStar: list1OfModelClass[index].starRating,
                      );
                    },
                  ),
                ),

            ],
          ),
        ));
  }

// //** Tap this Mulan Movie.
//   tapThisMovieMulan() {
//     Navigator.pushNamed(context, RoutesName.movieMulan,
//     arguments:ModelClass(bigImage: mulanImage, filmName: mulanFilmName, filmHours: mulanFilmHours, starRating: mulanFilmRating));
//     }

// //** Tap This AQuietPlace Movie.
//   void tapThisAQuietPlaceMovie() {
//     Navigator.pushNamed(context, RoutesName.movieAQuietPlace,
//         arguments:ModelClass(bigImage: aQuietPlaceImage, filmName: aQuietPlaceFilmName, filmHours: aQuietPlaceFilmHours, starRating: aQuietPlaceFilmRating));
//   }

// //** Tap This Titanic Movie.
//   void tapThisTitanicMovie() {
//        Navigator.pushNamed(context, RoutesName.movieTitanic,
//        arguments:ModelClass(bigImage: titanicImage, filmName: titanicFilmName, filmHours: titanicFilmHours, starRating: titanicFilmRating) );
// }

// //** Tap This Captain America Movie.
//   void tapThisCaptainAmericaMovie() {
//       Navigator.pushNamed(context, RoutesName.movieCaptainAmerica,
//       arguments:ModelClass(bigImage: captainAmericaImage, filmName: captainAmericaFilmName, filmHours: captainAmericaFilmHours, starRating: captainAmericaFilmRating) );
//  }
}
