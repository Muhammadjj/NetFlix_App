import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CarouselViseContainer extends StatelessWidget {
  const CarouselViseContainer({super.key,
   required this.bigImage,
    this.filmName,
    this.filmDescription,
    this.filmPlayIcon,
    this.onTap});

  final String bigImage;
  final String? filmName;
  final String? filmDescription;
  final IconData? filmPlayIcon;
  final GestureTapCallback? onTap;
  
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
                title: AutoSizeText("$filmName",style:const TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
                subtitle:  AutoSizeText("$filmDescription",style:const TextStyle(fontSize: 20,color: Colors.white,),),
                trailing: CircleAvatar(backgroundColor: Colors.red,child: Icon(filmPlayIcon,color: Colors.white,),),
                ),
              )
        ],
      ),
      ),
    );
  }
}
