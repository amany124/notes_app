in vs code terminal put these commands
git init
git add .   // to add all files in the first time
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/amany124/notes_app.git
git push -u origin main
=============================================================

to deal with hive and store objects 
*read the doucumentation* 
https://docs.hivedb.dev/#/

in our code 
// first we want to tell hive that we will store object of type note model so we have to make type adapter to this note model object 
// you can make this type adapter or generate that code 

// *to generate the type adapter related to our model* 
// we have to
// give type id to the class model and field id
// import 'package:hive/hive.dart';

part 'note_model.g.dart'; 
 // *note_model is the name of the file that has our model class .g indecates that he will generate file related to this file .*

@HiveType(typeId: 0)
class noteModel extends HiveObject{
  @HiveField(0)
  final String title;
   @HiveField(1)
  final String subtitle;
   @HiveField(2)
  final String date;
   @HiveField(3)
  final int color;

  noteModel(
      {required this.title,
      required this.subtitle,
      required this.date,
      required this.color});
}

 *and in terminal we write this command to generate the file*
// flutter packages pub run build_runner build

// *then we have to intialize hive in the main function and open the box to store the data in it*

import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/widgets/constants.dart';

void main() async {
  await Hive.initFlutter();
 await Hive.openBox(knotesBox);
  runApp(const notesApp());
}