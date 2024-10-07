import 'package:flutter/material.dart';

class StudentDetailscreen extends StatelessWidget {
   StudentDetailscreen({super.key});

  final List<Map<String, String>> students = [
    {
      'name': 'John Doe',
      'school': 'Greenfield High',
      'profilePicturePath': 'assets/logo.png',
    },
    {
      'name': 'Jane Smith',
      'school': 'Sunrise Academy',
      'profilePicturePath': 'assets/logo.png',
    },
    {
      'name': 'Michael Johnson',
      'school': 'Blue River School',
      'profilePicturePath': 'assets/logo.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Details'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView.builder(
            itemCount: students.length, // number of students in the list
            itemBuilder: (context, index) {
              final student = students[index];
              return Card(
                elevation: 3,
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(student['profilePicturePath']!),
                  ),
                  title: Text(student['name']!),
                  subtitle: Text(student['school']!),
                  onTap: () {
                    
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
