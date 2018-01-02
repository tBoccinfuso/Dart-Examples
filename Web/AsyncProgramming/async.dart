//Main function makes a call to sayHello() asynchronous function.
main () {
  sayHello();
}

//sayHello() is an asynchronous function. Give the function name followed by the keyword: async.
sayHello() async {
  //Here we are asigning values from the given functions to a variable.
  //The program moves on and runs the string functions in the background.
  String h = await stringOne();
  String w = await stringTwo();

  //combineWords() function waits to run, only once string h and w have been set will it run.
  //be sure to tell Dart you want it to run AFTER by using the keyword: await.
  String result = await combineWords(h, w);

  //print the result of combineWords function.
  print(result);
}

String stringOne() {
  return "Hello";
}
String stringTwo() {
  return "World!";
}
//This function is called only once sayHello() assigned strings to variable h and w.
String combineWords(h,w) {
  return h + " " + w;
}
//Thomas Boccinfuso - www.tboccinfuso.com / www.twitter.com/boccinfusoT