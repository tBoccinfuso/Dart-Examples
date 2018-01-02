//Create a new user class with a few different fields.
class User {
  int id;
  String first;
  String last;
  String username;

  //User(); is the consructor for this class. You must provide all 4 arguments.
  User(this.id, this.first, this.last, this.username);
}

main() {
  //Define a new User by passing in values to our new User() constructor.
  var user1 = new User(1, 'John', 'Doe', 'jdoe');

  //prints out 'jdoe'
  print(user1.username);
}
//Thomas Boccinfuso - www.tboccinfuso.com / www.twitter.com/boccinfusoT