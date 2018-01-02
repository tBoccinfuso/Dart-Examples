import 'dart:io';
import 'package:path/path.dart' as path;

main() async{
  //Create a new WebApp directory with a public folder included.
  var directory = await new Directory('WebApp/public/').create(recursive: true);

  //Create css folder with a style.css file included.
  var cssDir = await new Directory('${directory.path}/css').create(recursive: true);
  var cssFile = await new File('${directory.path}/css/style.css').writeAsString('/* CSS FILE */');

  //Create a javascript folder with a script.js file included.
  var jsDir = await new Directory('${directory.path}/javascript').create(recursive: true);
  var jsFile = await new File('${directory.path}/javascript/script.js')
    .writeAsString('''
  function sayHello() {
    alert("Hello World!");
  }''');

  //Create a new index.html file with starter code included.
  var htmlFile = await new File('${directory.path}index.html')
    .writeAsString('''<!doctype html>
      <html lang="en">
      <head>
        <meta charset="utf-8">
        <title>Page Title</title>
        <link rel="stylesheet" href="css/style.css">
      </head>
      <body>
        <script src="javascript/script.js"></script>
      </body>
      </html>''');
    
}
//Thomas Boccinfuso - www.tboccinfuso.com / www.twitter.com/boccinfusoT