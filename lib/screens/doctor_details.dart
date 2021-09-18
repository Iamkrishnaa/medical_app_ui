import 'package:challenge/const.dart';
import 'package:challenge/models/doctor.dart';
import 'package:challenge/models/review.dart';
import 'package:flutter/material.dart';

class DoctorDetails extends StatefulWidget {
  final Doctor doctor;
  DoctorDetails({required this.doctor});

  @override
  _DoctorDetailsState createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {
  final GlobalKey<ScaffoldState> _scaffolfKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _scaffolfKey.currentState
              ?.showBottomSheet((context) => _buildBottomSheet(context));
        },
        backgroundColor: kPrimaryPurple,
        child: const Icon(
          Icons.add,
          size: 30,
        ),
      ),
      key: _scaffolfKey,
      backgroundColor: kPrimaryPurple,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const CircleAvatar(
              radius: 40,
              backgroundColor: Colors.amber,
              child: Icon(
                Icons.person,
                size: 40,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                widget.doctor.doctorName,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Text(
                widget.doctor.post,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.grey.shade200,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircleAvatar(
                    backgroundColor: Color(0xff9F97E2),
                    radius: 30,
                    child: Icon(
                      Icons.phone,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  CircleAvatar(
                    backgroundColor: Color(0xff9F97E2),
                    radius: 30,
                    child: Icon(
                      Icons.message,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 12.0, top: 25),
              decoration: const BoxDecoration(
                color: Color(0xffF3F5FF),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "About Doctor",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      widget.doctor.about,
                      style: const TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Reviews",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[800],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            "⭐ ${widget.doctor.rating}",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[800],
                            ),
                          ),
                          Text(
                            " (${widget.doctor.reviews.length.toString()})",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[500],
                            ),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "View All",
                          style: TextStyle(
                            color: kPrimaryPurple,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 170,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: widget.doctor.reviews.length,
                        itemBuilder: (builder, index) {
                          Review review = widget.doctor.reviews[index];
                          return Container(
                            margin: const EdgeInsets.all(10),
                            width: 350,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [kContainerShadow]),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ListTile(
                                    leading: CircleAvatar(
                                      backgroundColor: Colors.amber[500],
                                      child: const Icon(
                                        Icons.person,
                                        color: Colors.white,
                                      ),
                                    ),
                                    title: Text(
                                      review.reviewer,
                                      style: const TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                      ),
                                    ),
                                    subtitle: Text(review.duration + " ago"),
                                    trailing: Chip(
                                      backgroundColor: const Color(0xfffff7e6),
                                      label: Text(
                                        review.rating.toString(),
                                        style: const TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black54,
                                        ),
                                      ),
                                      avatar: const Text("⭐"),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 18.0),
                                    child: Text(
                                      review.review,
                                      style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.grey[700],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                  //location
                  Container(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "Location",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey[800],
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(12.0),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: const Color(0xffa8b7c2),
                        radius: 30,
                        child: Icon(
                          Icons.location_on,
                          color: kPrimaryPurple,
                          size: 40,
                        ),
                      ),
                      title: const Text("Lotus Medical Center"),
                      subtitle: const Text("3516 W. Gray St"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _buildBottomSheet(BuildContext context) {
    return Container(
      height: 130,
      padding: const EdgeInsets.only(top: 30, left: 20, right: 50, bottom: 2),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Consulation Price",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[600]),
              ),
              Text(
                "\$ 52",
                style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.grey[800]),
              ),
            ],
          ),
          SizedBox(
            height: 55,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: kPrimaryPurple,
              ),
              onPressed: () {},
              child: const Text(
                "Book Appointment",
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
