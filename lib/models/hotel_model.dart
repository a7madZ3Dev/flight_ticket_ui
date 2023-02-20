class HotelModel {
  final String name;
  final String image;
  final String location;
  final int price;

  HotelModel({
    required this.name,
    required this.image,
    required this.location,
    required this.price,
  });
}

final List<HotelModel> availableHotels = [
  HotelModel(
    name: 'Open Space',
    image: 'assets/images/one.png',
    location: 'London',
    price: 25,
  ),
  HotelModel(
    name: 'Global Will',
    image: 'assets/images/two.png',
    location: 'Sydney',
    price: 40,
  ),
  HotelModel(
    name: 'Tallest Building',
    image: 'assets/images/three.png',
    location: 'Dubai',
    price: 68,
  ),
];
