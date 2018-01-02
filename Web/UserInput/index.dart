import 'dart:html';

// main() is similar to onload - meaning it runs once the page loads.
// It is good practice to put at the top of your .dart file.
main() {
  //use querySelector and JQuery like snyax to select an element.
  querySelector('#num1').style.width = '50px';
  querySelector('#num2').style.width = '50px';

  /*Adding event listeners to buttons!
    First: create a new variable with a type of ButtonInputElement and 
           select the button.
    Second: add the .Onclick.listen().
    Third: bind what type of event (in this case MouseEvent) and the functionAddNumbers() 
           that will be executed when clicked.
  */
  
  ButtonInputElement btnAdd = querySelector('#add');
  btnAdd.onClick.listen((MouseEvent e) => AddNumbers());

  ButtonInputElement btnSub = querySelector('#sub');
  btnSub.onClick.listen((MouseEvent e) => Subtract());

  ButtonInputElement btnMult = querySelector('#mult');
  btnMult.onClick.listen((MouseEvent e) => Multiply());

  ButtonInputElement btnDiv = querySelector('#divide');
  btnDiv.onClick.listen((MouseEvent e) => Divide());
}

//Function that will take out user input and convert to integers.
//This function happens to return an array of ints.
ParseNumbers() {
  var n1 = querySelector('#num1');
  var n2 = querySelector('#num2');
  var num1 = int.parse(n1.value);
  var num2 = int.parse(n2.value);
  var numbers = [num1, num2];
  return numbers;
}

//Function that runs when the 'Add' button is clicked.
AddNumbers() {
  //Takes the array of ints and stors into a variable.
  var numbers = ParseNumbers();
  //Outputs the addition of 2 numbers into the result div. Converts to a string.
  querySelector('#result').setInnerHtml((numbers[0] + numbers[1]).toString());
}

//Function that runs when the 'Sub' button is clicked.
Subtract() {
  var numbers = ParseNumbers();
  querySelector('#result').setInnerHtml((numbers[0] - numbers[1]).toString());
}

//Function that runs when the 'Mult' button is clicked.
Multiply() {
  var numbers = ParseNumbers();
  querySelector('#result').setInnerHtml((numbers[0] * numbers[1]).toString());
}

//Function that runs when the 'Divide' button is clicked.
Divide() {
  var numbers = ParseNumbers();
  querySelector('#result').setInnerHtml((numbers[0] / numbers[1]).toString());
}
//Thomas Boccinfuso - www.tboccinfuso.com / www.twitter.com/boccinfusoT