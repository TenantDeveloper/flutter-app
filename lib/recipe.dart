class Recipe {
  int id;
  String label;
  List<String> imgUrl;
  String description;
  double price;
  Recipe( this.id ,this.label , this.imgUrl , this.description , this.price);


  static List<Recipe> dummyData =  [
    Recipe(
      1,
      'IPad 2',
      ['assets/images/1.jpg', 'assets/images/2.jpg' , 'assets/images/3.jpg'],
      "this ipad from apple inc. and lorem ipsom his ipad from apple inc. and lorem ipsom his ipad from apple inc. and lorem ipsom his ipad from apple inc. and lorem ipsom",
      17000
    ),
    Recipe(
      2,
      'Huweie Pad',
        ['assets/images/2.jpg', 'assets/images/3.jpg' , 'assets/images/4.png'],
        "this ipad from apple inc. and lorem ipsom his ipad from apple inc. and lorem ipsom his ipad from apple inc. and lorem ipsom his ipad from apple inc. and lorem ipsom",
        15000
    ),
    Recipe(
       3,
      'Apple Watch',
        ['assets/images/3.jpg', 'assets/images/4.png' , 'assets/images/5.jpg'],
        "this ipad from apple inc. and lorem ipsom his ipad from apple inc. and lorem ipsom his ipad from apple inc. and lorem ipsom his ipad from apple inc. and lorem ipsom",
        7000
    ),
    Recipe(
      4,
      'IPad 3',
        ['assets/images/4.png', 'assets/images/5.jpg' , 'assets/images/6.jpg'],
        "this ipad from apple inc. and lorem ipsom his ipad from apple inc. and lorem ipsom his ipad from apple inc. and lorem ipsom his ipad from apple inc. and lorem ipsom",
        3000
    ),
    Recipe(
      5,
      'Shawmi watch',
        ['assets/images/4.png', 'assets/images/5.jpg' , 'assets/images/6.jpg'],
        "this ipad from apple inc. and lorem ipsom his ipad from apple inc. and lorem ipsom his ipad from apple inc. and lorem ipsom his ipad from apple inc. and lorem ipsom",
        2000
    ),
    Recipe(
      6,
      'Nokia s3',
        ['assets/images/4.png', 'assets/images/5.jpg' , 'assets/images/6.jpg'],
        "this ipad from apple inc. and lorem ipsom his ipad from apple inc. and lorem ipsom his ipad from apple inc. and lorem ipsom his ipad from apple inc. and lorem ipsom",
        3000
    ),
  ];
}