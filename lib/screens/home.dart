import 'package:challenge/const.dart';
import 'package:challenge/models/doctor.dart';
import 'package:challenge/models/review.dart';
import 'package:challenge/screens/doctor_details.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CustomChip> symptoms = [
    CustomChip(
      emoji: "😪",
      value: "Temperature",
    ),
    CustomChip(
      emoji: "🤧",
      value: "Snuffle",
    ),
    CustomChip(
      emoji: "😪",
      value: "Sneeze",
    ),
    CustomChip(
      emoji: "😵",
      value: "Cough",
    ),
  ];

  List<Doctor> doctors = [
    Doctor(
      doctorName: "Dr. Chris Frazier",
      post: "Pediatrician",
      rating: 5.0,
      about:
          "Dr. Chris Frazier is best Pediatrician in Nepal. He has contributed a lot.",
      reviews: <Review>[
        Review(
          duration: "2 days",
          rating: 5.0,
          review: "Many Thanks to you doctor. You are great.",
          reviewer: "Sandesh Adhikari",
        ),
        Review(
          duration: "2 days",
          rating: 4.8,
          review: "Many Thanks to you doctor. You are great.",
          reviewer: "Sandesh Adhikari",
        ),
      ],
    ),
    Doctor(
      doctorName: "Dr. Viola Dunn",
      post: "Therapist",
      rating: 4.9,
      about:
          "Dr. Viola Dunn is best Therapist in Nepal. He has contributed a lot.",
      reviews: <Review>[
        Review(
          duration: "2 days",
          rating: 5.0,
          review: "Many Thanks to you doctor. You are great.",
          reviewer: "Sandesh Adhikari",
        ),
        Review(
          duration: "2 days",
          rating: 4.8,
          review: "Many Thanks to you doctor. You are great.",
          reviewer: "Sandesh Adhikari",
        ),
      ],
    ),
    Doctor(
      doctorName: "Dr. Gaurav Poudel",
      post: "Gufarist",
      rating: 2.0,
      about:
          "Dr. Gaurav Poudel is best Gufarist in Nepal. He has contributed a lot.",
      reviews: <Review>[
        Review(
          duration: "2 days",
          rating: 5.0,
          review: "Many Thanks to you doctor. You are great.",
          reviewer: "Sandesh Adhikari",
        ),
      ],
    ),
    Doctor(
      doctorName: "Dr. Roshan Adhikari",
      post: "Emulist",
      rating: 2.9,
      about:
          "Dr. Roshan Adhikari is best Emulist in Nepal. He has contributed a lot.",
      reviews: <Review>[
        Review(
          duration: "2 days",
          rating: 5.0,
          review: "Many Thanks to you doctor. You are great.",
          reviewer: "Sandesh Adhikari",
        ),
        Review(
          duration: "2 days",
          rating: 4.8,
          review: "Many Thanks to you doctor. You are great.",
          reviewer: "Sandesh Adhikari",
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //topbar
              Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Elsie Adkins  👋",
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 30.0),
                    ),
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                          "https://www.pngrepo.com/png/9378/512/woman.png"),
                    ),
                  ],
                ),
              ),

              //second item in col
              Container(
                height: 200,
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: kPrimaryPurple,
                            boxShadow: [kContainerShadow]),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.add,
                                  size: 40,
                                  color: kPrimaryPurple,
                                ),
                              ),
                              ListTile(
                                contentPadding: const EdgeInsets.all(0),
                                title: const Text(
                                  "Clinic Visit",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18.0,
                                  ),
                                ),
                                subtitle: Text(
                                  "Make an appointment",
                                  style: TextStyle(
                                    color: Colors.grey[200],
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [kContainerShadow],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: const Color(0xffF0EEFA),
                                child: Icon(
                                  Icons.home_sharp,
                                  size: 40,
                                  color: kPrimaryPurple,
                                ),
                              ),
                              ListTile(
                                contentPadding: const EdgeInsets.all(0),
                                title: const Text(
                                  "Home Visit",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18.0,
                                  ),
                                ),
                                subtitle: Text(
                                  "Call the doctor home",
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //symptoms
              Container(
                margin: const EdgeInsets.only(left: 12.0, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "What are your symptoms?",
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    SizedBox(
                      height: 70,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: symptoms,
                      ),
                    ),
                  ],
                ),
              ),
              //popular doctors
              Container(
                margin: const EdgeInsets.only(left: 12.0, top: 20, right: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "What are your symptoms?",
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        DoctorWidget(doctor: doctors[0]),
                        DoctorWidget(doctor: doctors[1])
                      ],
                    ),
                    Row(
                      children: [
                        DoctorWidget(doctor: doctors[2]),
                        DoctorWidget(doctor: doctors[3])
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DoctorWidget extends StatelessWidget {
  Doctor doctor;

  DoctorWidget({required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (builder) => DoctorDetails(doctor: doctor),
            ),
          );
        },
        child: Container(
          margin: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [kContainerShadow],
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: const Color(0xffF0EEFA),
                  child: Icon(
                    Icons.person,
                    size: 50,
                    color: kPrimaryPurple,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    doctor.doctorName,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Text(
                    doctor.post,
                    style: const TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black54,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Chip(
                    backgroundColor: const Color(0xfffff7e6),
                    label: Text(
                      doctor.rating.toString(),
                      style: const TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ),
                    avatar: const Text("⭐"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomChip extends StatelessWidget {
  String emoji;
  String value;

  CustomChip({required this.emoji, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      height: 60,
      decoration: BoxDecoration(
        color: const Color(0xffdde2eb),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 18.0,
              right: 10,
            ),
            child: Text(
              emoji,
              style: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 18.0,
              left: 8,
            ),
            child: Text(
              value,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
