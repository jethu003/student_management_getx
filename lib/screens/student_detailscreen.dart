import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:student_management/getx/student_cotroller.dart';
import 'package:student_management/screens/edit_student_screen.dart';
import 'package:student_management/screens/profile_screen.dart';

class StudentDetailscreen extends StatelessWidget {
  final StudentController studentController = Get.find<StudentController>();

  StudentDetailscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2C2E3A),
        title: const Text(
          'STUDENT LIST',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Obx(
            () => ListView.builder(
              itemCount: studentController.students.length,
              itemBuilder: (context, index) {
                var student = studentController.students[index];
                return Card(
                  child: ListTile(
                    onTap: () {
                      Get.to(ProfileScreen(index: index));
                    },
                    leading: CircleAvatar(
                      backgroundImage:
                          FileImage(File(student.profilePicturePath)),
                    ),
                    title: Text(student.name),
                    subtitle: Text('School: ${student.schoolname}'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.edit),
                          onPressed: () {
                            Get.to(EditStudentScreen(index: index));
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () {
                            Get.defaultDialog(
                              title: 'Delete Student',
                              middleText:
                                  'Are you sure you want to delete ${student.name}?',
                              confirmTextColor: Colors.white,
                              onConfirm: () {
                                studentController.deleteStudent(student.id);
                                Get.back();
                              },
                              onCancel: () {},
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
