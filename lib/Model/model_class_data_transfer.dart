class ModelClass {
  ModelClass(
      {required this.bigImage,
      required this.filmName,
      required this.filmHours,
      required this.starRating});

  String bigImage;
  String filmName;
  String filmHours;
  String starRating;
}




/// ** (SearchModelClass) Using for Search class and 
/// ** update all data .
class SearchModelClass {
  SearchModelClass(
    {required this.image,
     required this.movieName,
     required this.movieDescription,
     required this.seasonNo,
     required this.starView,
     });
  String image, movieName, movieDescription, seasonNo, starView;
}