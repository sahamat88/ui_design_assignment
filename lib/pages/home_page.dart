import 'package:flutter/material.dart';
import 'package:ui_design_assignment/component/course_card.dart';
import 'package:ui_design_assignment/model/course_model.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<CourseModel> courses = [
    CourseModel(
      title: "Full Stack Web Development with JavaScript (MERN)",
      duration: "২ দিন বাকি",
      batch: "ব্যাচ ৬",
      image: "images/mern.jpg",
      totalSit: "৫ সিট বাকি",
    ),
    CourseModel(
      title: "Mastering Python : From Zero to Hero",
      duration: "৫ দিন বাকি",
      batch: "ব্যাচ ৬",
      image: "images/python.jpg",
      totalSit: "৩০ সিট বাকি",
    ),
    CourseModel(
      title: "App Development with Flutter",
      duration: "২৫ দিন বাকি",
      batch: "ব্যাচ ৪",
      image: "images/flutter.jpg",
      totalSit: "১৫ সিট বাকি",
    ),
    CourseModel(
      title: "SQA: Manual & Automated Testing",
      duration: "৩৫ দিন বাকি",
      batch: "ব্যাচ ৩৬",
      image: "images/sqa.jpg",
      totalSit: "২০ সিট বাকি",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ostad UI Design")),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          itemCount: courses.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            childAspectRatio: 0.72,
          ),
          itemBuilder: (context, index) {
            return CourseCard(course: courses[index]);
          },
        ),
      ),
    );
  }
}
