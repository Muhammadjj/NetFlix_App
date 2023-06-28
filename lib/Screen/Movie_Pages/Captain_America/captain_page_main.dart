import 'package:flutter/material.dart';
import 'package:netflix_app/Model/model_class_data_transfer.dart';

import '../../../Components/Detail_Screen_page/detail_page_method.dart';

class CaptainAmericaMovie extends StatefulWidget {
  const CaptainAmericaMovie({super.key, required this.modelClass});

  final ModelClass modelClass;

  @override
  State<CaptainAmericaMovie> createState() => _MulanMoviePageState();
}

class _MulanMoviePageState extends State<CaptainAmericaMovie> {
  String views = "67.7k";
  String filmDescription = "Thriller.Drama";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DetailPageMethod(
            bigImage: widget.modelClass.bigImage,
            filmName: widget.modelClass.filmName,
            filmHours: widget.modelClass.filmHours,
            starRating: widget.modelClass.starRating,
            filmDescri: filmDescription,
            ratingViews: views,
            filmPlayIcon: Icons.play_arrow));
  }
}
