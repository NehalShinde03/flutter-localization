enum Language{
  english("English", "en", "assets/image/USA.jpeg"),
  italian("Italian","it", "assets/image/Italy.jpeg"),
  spanish("Spanish","es", "assets/image/Spain.jpeg"),
  arabic("Arabic","ar", "assets/image/Arabic.jpeg"),
  french("French","fr", "assets/image/French.jpeg"),
  turkish("Turkish","tr", "assets/image/Turkey.jpeg");

  final String value, code, image;
  const Language(this.value, this.code, this.image);
}