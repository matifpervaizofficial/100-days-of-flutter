class CatalogModel {
  //static islye kia ta k catalog model use kr k is items ko show kia ja sky
  static final items = [
    Item(
        id: "mh1",
        name: "iPhone 12 Pro",
        desc: "Apple iPhone 12th generation",
        price: 999,
        color: "#33505a",
        imageUrl:
            "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-12-pro-blue-hero?wid=940&hei=1112&fmt=png-alpha&qlt=80&.v=1604021661000")
  ];
}

class Item {
  final String id;
  final String name;
  final num price;
  final String color;
  final String imageUrl;
  final String desc;

  Item(
      {required this.id,
      required this.name,
      required this.price,
      required this.color,
      required this.imageUrl,
      required this.desc});
}
