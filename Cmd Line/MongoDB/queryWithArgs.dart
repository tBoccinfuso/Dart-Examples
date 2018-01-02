import 'package:mongo_dart/mongo_dart.dart';
import 'package:args/args.dart';

//Our main function now takes in a list of parameters. This will be the username we insert.
main(List<String> arguments) async {

  //Assign a new Argument Parser variable
  final ArgParser argParser = new ArgParser()
    //This option will allow you to add the parameter with either -name or -n.
    ..addOption('name', abbr: 'n', defaultsTo: 'Test User');

  //Store the passed argument into an Argument Result variable.
  ArgResults argResults;
  argResults = argParser.parse(arguments);

  //Now we store our Argument Result variable as a string to pass into our MongoDB query.
  String username = argResults['name'];

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