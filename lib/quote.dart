class Quote {

  late String text;
  late String author;

  // Quote({required String text, required String author}) { //zaradi {} - ni pomemben vrstni red podanih podatkov v konstruktor
  //   this.text = text;
  //   this.author = author;
  // }

  //lahko tudi tako
  Quote ({required this.text, required this.author});
}