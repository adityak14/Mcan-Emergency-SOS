import 'package:firebase_database/firebase_database.dart';

class Todo {
  String key;
  String subject;
  bool completed;
  String userId;
  String cname;
  String cphone;

  Todo( this.userId, this.cname, this.cphone);

  Todo.fromSnapshot(DataSnapshot snapshot) :
    key = snapshot.key,
    userId = snapshot.value["userId"],
    //subject = snapshot.value["subject"],
    cname = snapshot.value["cname"],
    cphone = snapshot.value["cphone"],
    completed = snapshot.value["completed"];

  toJson() {
    return {
      "userId": userId,
      //"subject": subject,
      "cname":cname,
      "cphone":cphone,
      "completed": completed,
    };
  }
}