import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:student_management/getx/student_cotroller.dart';

class ProfileScreen extends StatelessWidget {
  final int index;

  ProfileScreen({
    super.key,
    required this.index,
  });

  final StudentController studentController = Get.find<StudentController>();

  @override
  Widget build(BuildContext context) {
    var student = studentController.students[index];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${student.name}'s Profile",
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        backgroundColor: const Color(0xFF2C2E3A),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: FileImage(File(student.profilePicturePath))),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                student.name,
                style: const TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              const SizedBox(height: 10),
              Text(
                'School: ${student.schoolname}',
                style: const TextStyle(fontSize: 30, color: Colors.grey),
              ),
              const SizedBox(height: 10),
              Text(
                'Age: ${student.age}',
                style: const TextStyle(fontSize: 30, color: Colors.grey),
              ),
              const SizedBox(height: 20),
              Text(
                'Age: ${student.fathername}',
                style: const TextStyle(fontSize: 30, color: Colors.grey),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
