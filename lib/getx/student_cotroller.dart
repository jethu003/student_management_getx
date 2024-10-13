import 'package:get/get.dart';
import 'package:student_management/data_base/db_functions.dart';
import 'package:student_management/data_base_model/student_model.dart';

class StudentController extends GetxController {
  var students = <Student>[].obs; 
  final DatabaseHelper dbHelper = DatabaseHelper();

  @override
  void onInit() {
    super.onInit();
    loadStudents();  
  }

  Future<void> loadStudents() async {
    final data = await dbHelper.getStudent();
    students.assignAll(data);  
  }

  Future<void> addStudent(Student student) async {
    await dbHelper.insertStudent(student);
    loadStudents();  
  }

  
  Future<void> deleteStudent(int id) async {
    await dbHelper.deleteStudent(id);
    loadStudents();  
  }

  Future<void> updateStudent(int index, Student updatedStudent) async {
    await dbHelper.updateStudent(updatedStudent);
    loadStudents(); 
  }
}
