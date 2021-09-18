import 'package:challenge/models/review.dart';

class Doctor {
  String doctorName;
  String post;
  double rating;
  String about;
  List<Review> reviews;

  Doctor({
    required this.doctorName,
    required this.post,
    required this.rating,
    this.about = "NA",
    required this.reviews,
  });
}
