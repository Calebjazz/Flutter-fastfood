
class FoodItem {
  final String name;
  final String imagePath;
  final double price;
  final int categoryIndex;

  FoodItem({
    required this.name,
    required this.imagePath,
    required this.price,
    required this.categoryIndex,
  });
}


List<FoodItem> allFoods = [
  // American  (0)
  FoodItem(name: "Hot Dog", imagePath: "assets/images/hotdog.jpg", price: 8.99, categoryIndex: 0),
  FoodItem(name: "Cheese Burger", imagePath: "assets/images/cheese burger.png", price: 9.49, categoryIndex: 0),
  FoodItem(name: "Fries", imagePath: "assets/images/fries.jpg", price: 4.99, categoryIndex: 0),
  FoodItem(name: "BBQ Ribs", imagePath: "assets/images/ribs.jpg", price: 12.99, categoryIndex: 0),
  FoodItem(name: "Onion Rings", imagePath: "assets/images/onion rings.jpg", price: 5.49, categoryIndex: 0),
  FoodItem(name: "Steak Sandwich", imagePath: "assets/images/steak sandwich.jpg", price: 10.99, categoryIndex: 0),
  FoodItem(name: "Buffalo Wings", imagePath: "assets/images/buffalo wings.jpg", price: 7.99, categoryIndex: 0),
  FoodItem(name: "Milkshake", imagePath: "assets/images/milkshake.jpg", price: 3.99, categoryIndex: 0),
  FoodItem(name: "Club Sandwich", imagePath: "assets/images/club sandwich.jpg", price: 6.99, categoryIndex: 0),
  FoodItem(name: "Mac & Cheese", imagePath: "assets/images/mac and cheese.jpg", price: 5.99, categoryIndex: 0),

  // French (1)
  FoodItem(name: "Croissant", imagePath: "assets/images/croissant.jpg", price: 5.49, categoryIndex: 1),
  FoodItem(name: "Baguette", imagePath: "assets/images/baguette.jpg", price: 3.49, categoryIndex: 1),
  FoodItem(name: "Crepe", imagePath: "assets/images/crepe.jpg", price: 6.99, categoryIndex: 1),
  FoodItem(name: "Quiche", imagePath: "assets/images/quiche.jpg", price: 8.99, categoryIndex: 1),
  FoodItem(name: "Ratatouille", imagePath: "assets/images/ratatouille.jpg", price: 9.99, categoryIndex: 1),
  FoodItem(name: "French Fries", imagePath: "assets/images/fries.jpg", price: 4.99, categoryIndex: 1),
  FoodItem(name: "Steak Frites", imagePath: "assets/images/steak frietes.jpg", price: 14.99, categoryIndex: 1),
  FoodItem(name: "Madeleines", imagePath: "assets/images/madeleines.jpg", price: 4.49, categoryIndex: 1),
  FoodItem(name: "Eclair", imagePath: "assets/images/eclair.jpg", price: 3.99, categoryIndex: 1),
  FoodItem(name: "Soufflé", imagePath: "assets/images/souffle.jpg", price: 7.99, categoryIndex: 1),

  // Asian  (2)
  FoodItem(name: "Sushi", imagePath: "assets/images/sushi.jpg", price: 12.50, categoryIndex: 2),
  FoodItem(name: "Ramen", imagePath: "assets/images/ramen.jpg", price: 11.99, categoryIndex: 2),
  FoodItem(name: "Dumplings", imagePath: "assets/images/dumplings.jpg", price: 9.49, categoryIndex: 2),
  FoodItem(name: "Fried Rice", imagePath: "assets/images/fried rice.jpg", price: 8.49, categoryIndex: 2),
  FoodItem(name: "Spring Rolls", imagePath: "assets/images/spring rolls.jpg", price: 6.99, categoryIndex: 2),
  FoodItem(name: "Sweet & Sour Pork", imagePath: "assets/images/pork.jpg", price: 10.99, categoryIndex: 2),
  FoodItem(name: "Kung Pao Chicken", imagePath: "assets/images/kungpao chicken.jpg", price: 9.99, categoryIndex: 2),
  FoodItem(name: "Pad Thai", imagePath: "assets/images/pad thai.jpg", price: 11.49, categoryIndex: 2),
  FoodItem(name: "Pho Soup", imagePath: "assets/images/pho soup.jpg", price: 10.50, categoryIndex: 2),
  FoodItem(name: "Bao Buns", imagePath: "assets/images/bao buns.jpg", price: 7.99, categoryIndex: 2),

  // Italian  (3)
  FoodItem(name: "Pizza", imagePath: "assets/images/pizza.jpg", price: 9.99, categoryIndex: 3),
  FoodItem(name: "Pasta Carbonara", imagePath: "assets/images/pasta carbonara.jpg", price: 12.49, categoryIndex: 3),
  FoodItem(name: "Lasagna", imagePath: "assets/images/lasagna.jpg", price: 13.99, categoryIndex: 3),
  FoodItem(name: "Risotto", imagePath: "assets/images/rissotto.jpg", price: 11.99, categoryIndex: 3),
  FoodItem(name: "Bruschetta", imagePath: "assets/images/bruschetta.jpg", price: 5.99, categoryIndex: 3),
  FoodItem(name: "Gelato", imagePath: "assets/images/gelato.jpg", price: 4.99, categoryIndex: 3),
  FoodItem(name: "Tiramisu", imagePath: "assets/images/tiramisu.jpg", price: 6.49, categoryIndex: 3),
  FoodItem(name: "Calzone", imagePath: "assets/images/calzone.jpg", price: 10.99, categoryIndex: 3),
  FoodItem(name: "Gnocchi", imagePath: "assets/images/gnocchi.jpg", price: 9.99, categoryIndex: 3),
  FoodItem(name: "Minestrone Soup", imagePath: "assets/images/minestrone soup.jpg", price: 7.99, categoryIndex: 3),

  // Mexican  (4)
  FoodItem(name: "Tacos", imagePath: "assets/images/tacos.jpg", price: 7.49, categoryIndex: 4),
  FoodItem(name: "Burrito", imagePath: "assets/images/burrito.jpg", price: 8.99, categoryIndex: 4),
  FoodItem(name: "Nachos", imagePath: "assets/images/nachos.jpg", price: 6.99, categoryIndex: 4),
  FoodItem(name: "Quesadilla", imagePath: "assets/images/quesadilla.jpg", price: 7.99, categoryIndex: 4),
  FoodItem(name: "Churros", imagePath: "assets/images/churros.jpg", price: 4.49, categoryIndex: 4),
  FoodItem(name: "Tamales", imagePath: "assets/images/tamales.jpg", price: 8.50, categoryIndex: 4),
  FoodItem(name: "Guacamole", imagePath: "assets/images/guacamole.jpg", price: 5.49, categoryIndex: 4),
  FoodItem(name: "Enchiladas", imagePath: "assets/images/enchiladas.jpg", price: 9.49, categoryIndex: 4),
  FoodItem(name: "Fajitas", imagePath: "assets/images/fajitas.jpg", price: 10.49, categoryIndex: 4),
  FoodItem(name: "Tostadas", imagePath: "assets/images/tostadas.jpg", price: 6.99, categoryIndex: 4),

  // Local (5)
  FoodItem(name: "Ugali & Nyama", imagePath: "assets/images/ugali nyama choma.jpg", price: 6.00, categoryIndex: 5),
  FoodItem(name: "Chapati", imagePath: "assets/images/chapati.jpg", price: 2.00, categoryIndex: 5),
  FoodItem(name: "Mandazi", imagePath: "assets/images/mandazi.jpg", price: 1.50, categoryIndex: 5),
  FoodItem(name: "Mishikaki", imagePath: "assets/images/mishkaki.jpg", price: 5.50, categoryIndex: 5),
  FoodItem(name: "Supu", imagePath: "assets/images/supu.jpg", price: 4.99, categoryIndex: 5),
  FoodItem(name: "Pilau", imagePath: "assets/images/pilau.jpg", price: 6.50, categoryIndex: 5),
  FoodItem(name: "Wali na Maharage", imagePath: "assets/images/wali maharage.jpg", price: 4.00, categoryIndex: 5),
  FoodItem(name: "Vitumbua", imagePath: "assets/images/vitumbua.jpg", price: 2.50, categoryIndex: 5),
  FoodItem(name: "Samaki", imagePath: "assets/images/samaki.jpg", price: 6.00, categoryIndex: 5),
  FoodItem(name: "Nyama Choma", imagePath: "assets/images/nyama choma.jpg", price: 7.50, categoryIndex: 5),
];
