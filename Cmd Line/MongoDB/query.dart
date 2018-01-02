import 'package:mongo_dart/mongo_dart.dart';

main() async {
  String username = "Test User";

  //Set database connection string.
  Db db = new Db("mongodb://127.0.0.1/dart");
  //Start a stop watch (just to show the system working and see how long it takes)
  Stopwatch stopwatch = new Stopwatch()..start();

  //Create a variable used to store database collection
  DbCollection person;
  await db.open();

  //Assign the person collection.
  person = db.collection('person');  
  print('Searching for record... '); 

  //Begin search for specific user by username. 
  var result = await person.findOne({"username": username});

  //Print (console) the time it took, and the result (JSON).  
  print(stopwatch.elapsed);
  print(result);
  db.close();
}
//Thomas Boccinfuso - www.tboccinfuso.com / www.twitter.com/boccinfusoT