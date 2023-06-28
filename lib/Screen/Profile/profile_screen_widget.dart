import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({super.key,
   required this.circleAvatarImage});
  final String circleAvatarImage;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return FadeInUp(
      delay:const Duration(milliseconds: 500),
      child: SizedBox(
        height: height * 0.15,
        width: width,
        child: Row(
          children: [
            Expanded(
                child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.black,
                backgroundImage: AssetImage(circleAvatarImage),)),
      
             Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("Hamad Ahmed",style: TextStyle(color: Colors.white),maxLines: 1,),
                    Icon(Icons.pending,color: Colors.white,)],),
                    const Text("jawad@gmail.com",style: TextStyle(color: Colors.grey),),
                    ElevatedButton(onPressed: (){},
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.amber)), 
                    child: const Text("Premium"))
                  
                  ]),
                ),
              )),
          ],
        ),
      ),
    );
  }
}




class ProfileListTile extends StatelessWidget {
  const ProfileListTile({super.key,
   required this.leadingIcon,
    required this.title, required this.trailingText});
  
  final IconData  leadingIcon;
  final String title;
  final String trailingText;
  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      delay: const Duration(milliseconds: 500),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 8,
          shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
          color:const Color.fromARGB(255, 71, 71, 71),
          child: ListTile(
            // dense: true,
            leading:Icon(leadingIcon,color: Colors.grey,),
            title: Text(title,style:const TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 17),maxLines: 1,),
            trailing: Text(trailingText,style: const TextStyle(color: Colors.white,fontSize: 20),maxLines: 1,),
          ),
        ),
      ),
    );
  }
}