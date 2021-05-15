class CoffeeList {
  String name;
  String description;
  String shop;
  List<String> prices;
  String imageUrls;

  CoffeeList({
    this.name,
    this.description,
    this.shop,
    this.prices,
    this.imageUrls,
  });
}

var coffeeListData = [
  CoffeeList(
    name: 'Caffe Latte',
    description:
        'Our dark, rich espresso balanced with steamed milk and a light layer of foam. A perfect milk forward warm up.',
    shop: 'Starbucks',
    prices: ['2.95', '3.65', '4.15', null],
    imageUrls:
        'https://nilaigizi.com/assets/images/produk/produk_1578126983.jpg',
  ),
  CoffeeList(
    name: 'White Chocolate Mocha',
    description:
        'Our signature espresso meets white chocolate sauce and steamed milk, then is finished off with sweetened whipped cream in this white chocolate delight.',
    shop: 'Starbucks',
    prices: ['3.75', '4.45', '4.75', null],
    imageUrls:
        'https://globalassets.starbucks.com/assets/4b621e63f6ba4c19a8618055284eca8d.jpg?impolicy=1by1_wide_1242',
  ),
  CoffeeList(
    name: 'Freshly Brewed Coffee',
    description:
        'Brewing in our stores everyday is Starbucks® Pike Place® Roast. With subtle notes of cocoa and toasted nuts, enjoy a smooth, balanced and rich blend of Latin American coffees made perfectly into one.',
    shop: 'Starbucks',
    prices: ['1.85', '2.10', '2.45', null],
    imageUrls:
        'https://www.starbucks.co.id/media/30%20-%20Vanilla%20Sweet%20Cream%20Cold%20Brew_tcm33-46296_w1024_n.jpg',
  ),
];
