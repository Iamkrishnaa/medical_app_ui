import 'package:challenge/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Schedule extends StatefulWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  _ScheduleState createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                child: const Text(
                  "Schedule",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30.0),
                ),
              ),

              //schedule type
              Container(
                height: 60,
                margin: const EdgeInsets.all(12.0),
                padding: const EdgeInsets.only(
                    top: 5, bottom: 5, left: 10, right: 10),
                decoration: BoxDecoration(
                  color: const Color(0xffE2E6EC),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CustomScheduleButton(
                      text: "Upcoming",
                      color: kPrimaryPurple,
                    ),
                    const CustomVerticalDivider(),
                    CustomScheduleButton(
                      text: "Completed",
                      textColor: Colors.grey.shade500,
                    ),
                    const CustomVerticalDivider(),
                    CustomScheduleButton(
                      text: "Cancelled",
                      textColor: Colors.grey.shade500,
                    ),
                  ],
                ),
              ),
              //nearest Visit
              const AppointmentSchedule(
                title: "Nearest Visit",
                doctorName: "Dr. Chris Frazier",
                doctorPost: "Pediatrician",
              ),
              const AppointmentSchedule(
                title: "Future Visits",
                doctorName: "Dr. Charlie Black",
                doctorPost: "Cardiologist",
              ),
              const AppointmentSchedule(
                title: "Nearest Visit",
                doctorName: "Dr. Chris Frazier",
                doctorPost: "Pediatrician",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AppointmentSchedule extends StatelessWidget {
  final String title;
  final String doctorName;
  final String doctorPost;
  const AppointmentSchedule({
    Key? key,
    required this.doctorName,
    required this.doctorPost,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20.0,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [kContainerShadow],
            ),
            child: Column(
              children: [
                ListTile(
                  contentPadding: const EdgeInsets.all(0),
                  title: Text(
                    doctorName,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  subtitle: Text(
                    doctorPost,
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  trailing: const CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.orange,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey[500],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.date_range,
                            color: Colors.grey[500],
                          ),
                          const Text(
                            "12/03/2021",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.watch_later,
                            color: Colors.grey[500],
                          ),
                          const Text(
                            "10:30 AM",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          const Text(
                            "Confirmed",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  margin: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CustomScheduleButton(
                        text: "Cancel",
                        textColor: Colors.grey.shade800,
                        color: Colors.grey.shade300,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      CustomScheduleButton(
                        text: "Reschedule",
                        textColor: Colors.white,
                        color: kPrimaryPurple,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomVerticalDivider extends StatelessWidget {
  const CustomVerticalDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 5,
        vertical: 5,
      ),
      width: 1.5,
      color: Colors.grey.shade400,
    );
  }
}

class CustomScheduleButton extends StatelessWidget {
  String text;
  Color color;
  double elevation;
  Color textColor;

  CustomScheduleButton({
    Key? key,
    required this.text,
    this.color = Colors.transparent,
    this.elevation = 0,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16.0,
            color: textColor,
          ),
        ),
        style: ElevatedButton.styleFrom(
          shadowColor: Colors.transparent,
          elevation: elevation,
          primary: color,
        ),
      ),
    );
  }
}
