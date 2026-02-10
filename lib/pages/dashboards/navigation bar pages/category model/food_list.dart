
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
  FoodItem(name: "Hot Dog", imagePath: "assets/images/hotdog.jpeg", price: 8.99, categoryIndex: 0),
  FoodItem(name: "Cheese Burger", imagePath: "assets/images/cheeseburger.jpeg", price: 9.49, categoryIndex: 0),
  FoodItem(name: "Fries", imagePath: "assets/images/fries.jpeg", price: 4.99, categoryIndex: 0),
  FoodItem(name: "BBQ Ribs", imagePath: "assets/images/ribs.jpeg", price: 12.99, categoryIndex: 0),
  FoodItem(name: "Onion Rings", imagePath: "assets/images/onionrings.jpeg", price: 5.49, categoryIndex: 0),
  FoodItem(name: "Steak Sandwich", imagePath: "assets/images/steak.jpeg", price: 10.99, categoryIndex: 0),
  FoodItem(name: "Buffalo Wings", imagePath: "assets/images/wings.jpeg", price: 7.99, categoryIndex: 0),
  FoodItem(name: "Milkshake", imagePath: "assets/images/milkshake.jpeg", price: 3.99, categoryIndex: 0),
  FoodItem(name: "Club Sandwich", imagePath: "assets/images/club.jpeg", price: 6.99, categoryIndex: 0),
  FoodItem(name: "Mac & Cheese", imagePath: "assets/images/maccheese.jpeg", price: 5.99, categoryIndex: 0),

  // French (1)
  FoodItem(name: "Croissant", imagePath: "assets/images/croissant.jpeg", price: 5.49, categoryIndex: 1),
  FoodItem(name: "Baguette", imagePath: "assets/images/baguette.jpeg", price: 3.49, categoryIndex: 1),
  FoodItem(name: "Crepe", imagePath: "assets/images/crepe.jpeg", price: 6.99, categoryIndex: 1),
  FoodItem(name: "Quiche", imagePath: "assets/images/quiche.jpeg", price: 8.99, categoryIndex: 1),
  FoodItem(name: "Ratatouille", imagePath: "assets/images/ratatouille.jpeg", price: 9.99, categoryIndex: 1),
  FoodItem(name: "French Fries", imagePath: "assets/images/fries.jpeg", price: 4.99, categoryIndex: 1),
  FoodItem(name: "Steak Frites", imagePath: "assets/images/steakfrite.jpeg", price: 14.99, categoryIndex: 1),
  FoodItem(name: "Madeleines", imagePath: "assets/images/madeleines.jpeg", price: 4.49, categoryIndex: 1),
  FoodItem(name: "Eclair", imagePath: "assets/images/eclair.jpeg", price: 3.99, categoryIndex: 1),
  FoodItem(name: "Soufflé", imagePath: "assets/images/souffle.jpeg", price: 7.99, categoryIndex: 1),

  // Asian  (2)
  FoodItem(name: "Sushi", imagePath: "assets/images/sushi.jpeg", price: 12.50, categoryIndex: 2),
  FoodItem(name: "Ramen", imagePath: "assets/images/ramen.jpeg", price: 11.99, categoryIndex: 2),
  FoodItem(name: "Dumplings", imagePath: "assets/images/dumplings.jpeg", price: 9.49, categoryIndex: 2),
  FoodItem(name: "Fried Rice", imagePath: "assets/images/friedrice.jpeg", price: 8.49, categoryIndex: 2),
  FoodItem(name: "Spring Rolls", imagePath: "assets/images/springrolls.jpeg", price: 6.99, categoryIndex: 2),
  FoodItem(name: "Sweet & Sour Pork", imagePath: "assets/images/sweetpork.jpeg", price: 10.99, categoryIndex: 2),
  FoodItem(name: "Kung Pao Chicken", imagePath: "assets/images/kungpao.jpeg", price: 9.99, categoryIndex: 2),
  FoodItem(name: "Pad Thai", imagePath: "assets/images/padthai.jpeg", price: 11.49, categoryIndex: 2),
  FoodItem(name: "Pho Soup", imagePath: "assets/images/pho.jpeg", price: 10.50, categoryIndex: 2),
  FoodItem(name: "Bao Buns", imagePath: "assets/images/bao.jpeg", price: 7.99, categoryIndex: 2),

  // Italian  (3)
  FoodItem(name: "Pizza", imagePath: "assets/images/pizza.jpeg", price: 9.99, categoryIndex: 3),
  FoodItem(name: "Pasta Carbonara", imagePath: "assets/images/carbonara.jpeg", price: 12.49, categoryIndex: 3),
  FoodItem(name: "Lasagna", imagePath: "assets/images/lasagna.jpeg", price: 13.99, categoryIndex: 3),
  FoodItem(name: "Risotto", imagePath: "assets/images/risotto.jpeg", price: 11.99, categoryIndex: 3),
  FoodItem(name: "Bruschetta", imagePath: "assets/images/bruschetta.jpeg", price: 5.99, categoryIndex: 3),
  FoodItem(name: "Gelato", imagePath: "assets/images/gelato.jpeg", price: 4.99, categoryIndex: 3),
  FoodItem(name: "Tiramisu", imagePath: "assets/images/tiramisu.jpeg", price: 6.49, categoryIndex: 3),
  FoodItem(name: "Calzone", imagePath: "assets/images/calzone.jpeg", price: 10.99, categoryIndex: 3),
  FoodItem(name: "Gnocchi", imagePath: "assets/images/gnocchi.jpeg", price: 9.99, categoryIndex: 3),
  FoodItem(name: "Minestrone Soup", imagePath: "assets/images/minestrone.jpeg", price: 7.99, categoryIndex: 3),

  // Mexican  (4)
  FoodItem(name: "Tacos", imagePath: "assets/images/tacos.jpeg", price: 7.49, categoryIndex: 4),
  FoodItem(name: "Burrito", imagePath: "assets/images/burrito.jpeg", price: 8.99, categoryIndex: 4),
  FoodItem(name: "Nachos", imagePath: "assets/images/nachos.jpeg", price: 6.99, categoryIndex: 4),
  FoodItem(name: "Quesadilla", imagePath: "assets/images/quesadilla.jpeg", price: 7.99, categoryIndex: 4),
  FoodItem(name: "Churros", imagePath: "assets/images/churros.jpeg", price: 4.49, categoryIndex: 4),
  FoodItem(name: "Tamales", imagePath: "assets/images/tamales.jpeg", price: 8.50, categoryIndex: 4),
  FoodItem(name: "Guacamole", imagePath: "assets/images/guacamole.jpeg", price: 5.49, categoryIndex: 4),
  FoodItem(name: "Enchiladas", imagePath: "assets/images/enchiladas.jpeg", price: 9.49, categoryIndex: 4),
  FoodItem(name: "Fajitas", imagePath: "assets/images/fajitas.jpeg", price: 10.49, categoryIndex: 4),
  FoodItem(name: "Tostadas", imagePath: "assets/images/tostadas.jpeg", price: 6.99, categoryIndex: 4),

  // Local (5)
  FoodItem(name: "Ugali & Nyama", imagePath: "assets/images/ugali_nyama.jpeg", price: 6.00, categoryIndex: 5),
  FoodItem(name: "Chapati", imagePath: "assets/images/chapati.jpeg", price: 2.00, categoryIndex: 5),
  FoodItem(name: "Mandazi", imagePath: "assets/images/mandazi.jpeg", price: 1.50, categoryIndex: 5),
  FoodItem(name: "Mshikaki", imagePath: "assets/images/mshikaki.jpeg", price: 5.50, categoryIndex: 5),
  FoodItem(name: "Supu ya Paya", imagePath: "assets/images/supu.jpeg", price: 4.99, categoryIndex: 5),
  FoodItem(name: "Pilau", imagePath: "assets/images/pilau.jpeg", price: 6.50, categoryIndex: 5),
  FoodItem(name: "Wali na Maharage", imagePath: "assets/images/wali_maharage.jpeg", price: 4.00, categoryIndex: 5),
  FoodItem(name: "Vitumbua", imagePath: "assets/images/vitumbua.jpeg", price: 2.50, categoryIndex: 5),
  FoodItem(name: "Mchemsho", imagePath: "assets/images/mchemsho.jpeg", price: 6.00, categoryIndex: 5),
  FoodItem(name: "Nyama Choma", imagePath: "assets/images/nyama_choma.jpeg", price: 7.50, categoryIndex: 5),
];
