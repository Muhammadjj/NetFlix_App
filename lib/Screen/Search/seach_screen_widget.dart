import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';


class AutoTextField extends StatelessWidget {
  const AutoTextField({super.key});

  @override
  Widget build(BuildContext context) {
    // var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return  Padding(
    padding: const EdgeInsets.only(top: 40),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
       SizedBox(
        width: width*0.8,
         child:const TextField(
          decoration: InputDecoration(
            hintText: "Search for Movies...",
            hintStyle: TextStyle(color: Colors.grey),
            prefixIcon: Icon(Icons.search,color: Colors.grey,),
            suffixIcon: Icon(Icons.settings_voice,color: Colors.grey,)), ),
       ),
       const CircleAvatar(
        backgroundColor: Color.fromARGB(255, 252, 170, 255),
        child: Icon(Icons.filter_hdr_rounded,color: Colors.red,),)
    ],
   ),
 );
  }
}




// class c extends StatelessWidget {
//   const MoviesAndSeries({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var height = MediaQuery.of(context).size.height;
//     var width = MediaQuery.of(context).size.width;
//     return Container(
//       height: height*0.3,
//       width: width,
//       color: Colors.red,
      
//     );
//   }
// }




// ** Show This TrendingMovieCard
class MoviesAndSeries extends StatelessWidget {
  const MoviesAndSeries({super.key,
   required this.image,
    required this.seasonNo,
     required this.movieName,
      required this.movieDescription,
       required this.starView,
        required this.onTap});
  
  final String image;
  final String seasonNo;
  final String movieName;
  final String movieDescription;
  final String starView;
  final GestureTapCallback onTap;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: height*0.26,
        width: width*0.9,
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 170,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.amber),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(image: AssetImage(image),fit: BoxFit.fill,)),
              )),
            Expanded(
              flex: 2,
              child: Padding(
                padding:const EdgeInsets.all(8.0),
                child: SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       AutoSizeText(seasonNo,style:const TextStyle(fontSize: 17,color:Color.fromARGB(255, 189, 189, 189) ),),
                       AutoSizeText(movieName,style:const TextStyle(fontSize: 28,color:Colors.white,fontWeight: FontWeight.bold ),),
                       AutoSizeText(movieDescription,style:const TextStyle(fontSize: 17,color:Color.fromARGB(255, 189, 189, 189) ),),
                        Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.red,
                            child: Icon(Icons.play_arrow),
                          ),
                          AutoSizeText(starView,style:const TextStyle(color: Colors.yellow,fontSize: 20),)
                       ],)
                    ],
                  ),
                ),
              )),
          ],
        ),
      ),
    );
  }
}