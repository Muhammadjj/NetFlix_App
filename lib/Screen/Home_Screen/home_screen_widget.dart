import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';


/// ** ya wala Container hm ny jo Home page ma use kya ha sb sa opr Carousal 
/// ** as ka laya ha 
class CarouselViseContainer extends StatelessWidget {
  const CarouselViseContainer({super.key,
   
    this.onTap,
     required this.ratingScrollImage,
      required this.filmName,
       required this.filmHours,
        required this.filmRatingStar});

 final GestureTapCallback? onTap;
  final String ratingScrollImage;
  final String filmName;
  final String filmHours;
  final String filmRatingStar;
  
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height * 0.45,
        width: width,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage(ratingScrollImage),fit: BoxFit.fill)),
        child:  Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: ListTile(
                title: AutoSizeText(filmName,style:const TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
                subtitle:  AutoSizeText("$filmHours\t\t\t$filmRatingStar",style:const TextStyle(fontSize: 17,color: Colors.white,),),
                ),
                ),
              
        ],
      ),
      ),
    );
  }
}




// **Show This Scrollable  (MovieRatingScroll) Views.
class MovieRatingScroll extends StatelessWidget {
  const MovieRatingScroll({super.key, this.onTap,
    required this.ratingScrollImage,
    required this.filmName,
    required this.filmHours,
    required this.filmRatingStar});

 final GestureTapCallback? onTap;
 final String ratingScrollImage;
  final String filmName;
  final String filmHours;
  final String filmRatingStar;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
             height: height*0.25,
             width: width*0.4,
             decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
             child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(image: AssetImage(ratingScrollImage),fit: BoxFit.fill,)),
          ),
           Text(filmName,style:const TextStyle(color: Colors.white),maxLines: 1,),
           Row(
            children: [
              AutoSizeText(filmHours,style:const TextStyle(color: Color.fromARGB(255, 189, 189, 189)),maxLines: 1,),
              SizedBox(width: width*0.18,),
              Text(filmRatingStar,style:const TextStyle(color: Color.fromARGB(255, 189, 189, 189)),maxLines: 1,)],),
        ],
      ),
    );
  }
}



// ** Show This TrendingMovieCard
class TrendingMovieCard extends StatelessWidget {
  const TrendingMovieCard({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height*0.26,
      width: width*0.9,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
        color:const Color.fromARGB(255, 88, 88, 88),),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 170,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.amber),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child:const Image(image: AssetImage("assest/images/star_war2.jpg"),fit: BoxFit.fill,)),
            )),
         const Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     AutoSizeText("Season 3",style: TextStyle(fontSize: 17,color:Color.fromARGB(255, 189, 189, 189) ),),
                     AutoSizeText("Wakanda Vision",style: TextStyle(fontSize: 24,color:Colors.white,fontWeight: FontWeight.bold ),),
                     AutoSizeText("Thriller.Adventure",style: TextStyle(fontSize: 17,color:Color.fromARGB(255, 189, 189, 189) ),),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.red,
                          child: Icon(Icons.play_arrow),
                        ),
                        Icon(Icons.star,color: Colors.yellow,size: 20,)
                     ],)
                  ],
                ),
              ),
            )),
        ],
      ),
    );
  }
}



class PopularHeroes extends StatelessWidget {
  const PopularHeroes({super.key, required this.image, required this.firstHeroName, required this.lastHeroName});
 final String image;
 final String firstHeroName;
 final String lastHeroName;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: height*0.2,
        width: width*0.30,
        child: Column(children: [
          SizedBox(
            height: height*0.15,
            child:ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child:  Image(image: AssetImage(image),fit: BoxFit.fill,)),),
           Text("$firstHeroName\n$lastHeroName",style:const TextStyle(color: Colors.white),),
        ],)),
    );
  }
}