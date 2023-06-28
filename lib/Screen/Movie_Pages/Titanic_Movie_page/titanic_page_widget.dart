// import 'package:auto_size_text/auto_size_text.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CarouselViseContainers extends StatelessWidget {
  const CarouselViseContainers({super.key,
   required this.bigImage,
   required this.filmName,
   required this.filmHours,
   required this.starRating,});

  final String bigImage;
  final String filmName;
  final String filmHours;
  final String starRating;
  
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.45,
      width: width,
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage(bigImage),fit: BoxFit.fill)),
      child:  Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: ListTile(
              title: AutoSizeText(filmName,style:const TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
              subtitle:  AutoSizeText(filmHours,style:const TextStyle(fontSize: 20,color: Colors.white,),),
              isThreeLine: true,
              trailing: Text(starRating)
              ),
            )
      ],
    ),
    );
  }
}
