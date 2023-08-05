import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
class ActivityListTile extends StatelessWidget {
  const ActivityListTile({super.key,
   required this.image,
    required this.title, 
    required this.subtitle
    });


  final String image;
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FadeInUp(
        delay:const Duration(milliseconds: 500),
        child: Card(
          elevation: 8,
          shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color:const Color.fromARGB(255, 71, 71, 71),
          child: ListTile(
            dense: true,
            leading: CircleAvatar(backgroundColor: Colors.white,backgroundImage: AssetImage(image),radius: 30,),
            title: Text(title,style:const TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 20),maxLines: 1,),
            subtitle: Text(subtitle,style: const TextStyle(color: Color.fromARGB(255, 190, 190, 190),),maxLines: 2,),
          ),
        ),
      ),
    );
  }
}
