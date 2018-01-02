import 'package:mongo_dart/mongo_dart.dart';

main() async {  
  String username = "Test User"; 

  //Set database connection string. 
  Db db = new Db("mongodb://127.0.0.1/dart");

  //Start a stop watch (just to show the system working and see how long it takes)
  Stopwatch stopwatch = new Stopwatch()..start();

  //Create a variable used to store database collection
  DbCollection test;
  await db.open();

  //Assign the person collection.
  test = db.collection('person');
  var data = [{"username": username}];

  //Drop the record if already in the database.
  await test.drop();
  print('Inserting record in:');

  //Insert each object. In this case we only have one.
  for (var elem in data) {
  await test.insert(elem);
  }
  //Confirm time it took to insert.
  print(stopwatch.elapsed);
  print('Document added!');
   db.close();
}
//Thomas Boccinfuso - www.tboccinfuso.com / www.twitter.com/boccinfusoT