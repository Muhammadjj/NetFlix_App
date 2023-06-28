import 'package:flutter/material.dart';
import 'package:netflix_app/Model/model_class_data_transfer.dart';

import '../../../Components/Detail_Screen_page/detail_page_method.dart';

class AQuitePlaceMovie extends StatefulWidget {
  const AQuitePlaceMovie({super.key, required this.modelClass});

  final ModelClass modelClass;

  @override
  State<AQuitePlaceMovie> createState() => _MulanMoviePageState();
}

class _MulanMoviePageState extends State<AQuitePlaceMovie> {

  String views ="5.7M";
  String filmDescri = "Horror Drama";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailPageMethod(
        // ** Fetching Data Model Class 
      bigImage: widget.modelClass.bigImage,
      filmName: widget.modelClass.filmName,
      filmHours: widget.modelClass.filmHours,
      starRating: widget.modelClass.starRating,
      // ** ya data hm ny Detail Page ma dya howa ha jo hm khud sa adr Class sa 
      // ** la raha ha 
      ratingViews: views,
      filmDescri: filmDescri,
      filmPlayIcon: Icons.play_arrow,
    ));
  }
}
