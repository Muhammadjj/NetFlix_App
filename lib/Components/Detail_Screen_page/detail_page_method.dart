import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import '../../Screen/Home_Screen/home_screen_widget.dart';
import '../Colour_files/all_screen_color.dart';


String textReadMoreAndLess =
    "Mulan is a 2020 American fantasy action drama film produced by Walt Disney Pictures. Directed by Niki Caro from a screenplay by Rick Jaffa, Amanda Silver, Lauren Hynek, and Elizabeth Martin, it is a live-action adaptation of Disney's 1998 animated film of the same name, itself based on the Chinese folklore story Ballad of Mulan. The film stars Yifei Liu in the title role, alongside Donnie Yen, Tzi Ma, Jason Scott Lee, Yoson An, Ron Yuan, Gong Li, and Jet Li in supporting roles. In the film, Hua Mulan, the eldest daughter of an honored warrior, masquerades as a man to take her ailing father's place during a general conscription to counter the Rouran army in Imperial China.";

String peopleReviewsText = "It is 1941 and the world is in the throes of war. Steve Rogers (Chris Evans) wants to do his part and join America's armed forces, but the military rejects him because of his small stature.";
class DetailPageMethod extends StatelessWidget {
  const DetailPageMethod({super.key,
   required this.bigImage,
    required this.filmName,
     required this.filmHours,
      required this.starRating,
       required this.filmDescri,
        required this.ratingViews,
         required this.filmPlayIcon});

  final String bigImage;
  final String filmName;
  final String filmHours;
  final String starRating;
  final String ratingViews;
  final String filmDescri;
  final IconData filmPlayIcon;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width ;
    return Scaffold(
      backgroundColor: allScreenBackgroundColours,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: height*0.5,
              width: width,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage(bigImage),fit: BoxFit.fill)),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: circleAvatar(icon: Icons.arrow_back,color: Colors.grey.withOpacity(0.6))),
                      circleAvatar(icon: Icons.bookmark_add_outlined,color: Colors.grey.withOpacity(0.6)),
                  ],),
                   Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                     children: [
                       ListTile(
                        contentPadding:const EdgeInsets.all(0),
                         title: AutoSizeText(filmName,style:const TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
                         subtitle:  AutoSizeText("$filmDescri\t\t\t$filmHours\n$starRating\t\t$ratingViews",style:const TextStyle(fontSize: 15,color: Colors.white,),),
                         trailing: circleAvatar(
                           color: Colors.red,
                           icon: filmPlayIcon, ),
                       ),
                     ],
                   ),],),
              ),
            ),
      
                             /**   Movie Detail Screen Next Working .   */
      
                //** Movie Shorts Stories Text.
               titleText(text: "Story"),
              //** ReadMore/Less Story Text Using Package.
               Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: ReadMoreText(textReadMoreAndLess,trimLines: 4,trimExpandedText: "Hide Text",
                 trimCollapsedText: "Read More",style:const TextStyle(color: Color.fromARGB(255, 204, 204, 204,),fontSize: 13),
                 moreStyle:const TextStyle(color: Colors.red),lessStyle:const TextStyle(color: Colors.red),),
               ),
               
                                        //** video Player Part  */

              //** Video Player (Gallery) Text.
              titleText(text: "Gallery"),
              //** Video Player Using (Container) .
                Container(
                  height: height*0.25,
                  width: width*0.9,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                  color: Colors.black),
                  child:const Center(child: Icon(Icons.play_arrow,color: Colors.white,size: 40,),),
                ),
                     
                                        //** Popular Heroes Cast Part */
                // ** Text For Popular Actors.
              titleText(text: "Cast"),
                //  ** Popular Heroes Casting .
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
                
                                     //** Movies View And People Reviews */
                   SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                   child: Row(
                     children: [
                      SizedBox(width: width*0.040,),
                       const PeopleReviewsMessage(
                        leadingImage: "assest/images/andrew.webp",
                        titleText: "Andrew Tang",
                        subTitle: "@Actors17",),
                      SizedBox(width: width*0.040,),
                       const PeopleReviewsMessage(
                        leadingImage: "assest/images/fahad.jpg",
                        titleText: "Fahad Mustafa",
                        subTitle: "@Drama35",),
                      SizedBox(width: width*0.040,),
                       const PeopleReviewsMessage(
                        leadingImage: "assest/images/jawad.jpg",
                        titleText: "Jawad Jani",
                        subTitle: "@Developer45",),
                      SizedBox(width: width*0.040,),
                       const PeopleReviewsMessage(
                        leadingImage: "assest/images/mulan.jpg",
                        titleText: "Mulan",
                        subTitle: "@Mulan23",),
                      SizedBox(width: width*0.040,),
                     ],
                   ),
                 )
                                       
          ],
        ),
      ),
    );
  }
  
  


// **TCircle Avatar ko hm ny opr use kya ha .
Widget circleAvatar({required Color color,required IconData icon})=>
CircleAvatar(
  backgroundColor:color,
  child: Icon(icon,color: Colors.white,),
);


}




///** Using text for this (Title text) and using method complete 
///** Projects 
Widget titleText({required String text}){
  return  Padding(
    padding: const  EdgeInsets.all(12.0),
    child: Align(
    alignment: Alignment.topLeft,
    child: AutoSizeText(text,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),)),
  );
}




/// 
class PeopleReviewsMessage extends StatelessWidget {
  const PeopleReviewsMessage({super.key, required this.leadingImage, required this.titleText, required this.subTitle,});
   final String leadingImage;
   final String titleText;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return  Container(
      height: height*0.28,
      width: width,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
      color:const Color.fromARGB(255, 70, 70, 70)),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
        ListTile(
             leading: CircleAvatar(backgroundImage: AssetImage(leadingImage),),
             title: AutoSizeText(titleText,style:const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
             subtitle: AutoSizeText(subTitle,style:const TextStyle(color: Color.fromARGB(255, 187, 187, 187),),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(peopleReviewsText,style:const TextStyle(color: Colors.white,fontSize: 15)),
        ),
        const ListTile(
             leading: Text("* * * *",style: TextStyle(color: Colors.yellow,fontSize: 30),),
             trailing: Text("4 min ago",style: TextStyle(color: Colors.grey),),
        ),
      ],),
    );
  }
}