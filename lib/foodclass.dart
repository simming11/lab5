class Food {
  // ignore: prefer_typing_uninitialized_variables
  final thFood;
  // ignore: prefer_typing_uninitialized_variables
  final enFood;
  // ignore: prefer_typing_uninitialized_variables
  final price;
  // ignore: prefer_typing_uninitialized_variables
  final value;

  Food(
      {required this.thFood,
      required this.enFood,
      required this.price,
      required this.value});

  static List<Food> getFood() {
    return [
      Food(
          thFood: "ผัดกระเพา",
          enFood: "patkrapow",
          price: 15.0,
          value: "patkrapow"),
      Food(
          thFood: "ผัดกุ้ง",
          enFood: "patkkung",
          price: 60.0,
          value: "patkung"),
    ];
  }
}
