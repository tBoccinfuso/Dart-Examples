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