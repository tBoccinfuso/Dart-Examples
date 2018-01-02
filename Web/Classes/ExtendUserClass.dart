//Create a new user class with a few different fields.
class User {
  int id = 1;
  String role = "User";
  String first = "John";
  String last = "Doe";
  String username = "jDoe";
}

class AdminUser extends User {
  String role = "Admin";
}

main() {
  //Define a new User by passing in values to our new User() constructor.
  var user = new User();

  //Create a new Admin User using out AdminUser() constructor.
  var adminUser = new AdminUser();

  //prints out 'User' as we have now set this user set to be a normal user.
  print(user.role);
  //prints out 'Admin' as we have now set this user to have an admin role.
  print(adminUser.role);
}
//Thomas Boccinfuso - www.tboccinfuso.com / www.twitter.com/boccinfusoT