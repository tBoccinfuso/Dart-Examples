import 'dart:io';

void main() {
  final filename = 'index.html';
  new File(filename).writeAsString('''<!doctype html>
    <html lang="en">
    <head>
      <meta charset="utf-8">
      <title>Page Title</title>
      <meta name="author" content="SitePoint">
      <link rel="stylesheet" href="css/styles.css">
    </head>
    <body>
      <script src="js/scripts.js"></script>
    </body>
    </html>''');  
}
//Thomas Boccinfuso - www.tboccinfuso.com / www.twitter.com/boccinfusoT