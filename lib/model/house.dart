class House {
  String name;
  String address;
  String imageUrl;

  House({
    required this.name,
    required this.address,
    required this.imageUrl,
  });

  static List<House> generateRecommended() {
    return [
      House(
        name: 'The Moon House',
        address: 'P455, Chhatak, Sylhet',
        imageUrl: 'assets/images/house01.jpeg',
      ),
      House(
        name: 'The Moon House',
        address: 'P455, Chhatak, Sylhet',
        imageUrl: 'assets/images/house02.jpeg',
      ),
      House(
        name: 'The Shabir House',
        address: 'P455, Chhatak, Sylhet',
        imageUrl: 'assets/images/house01.jpeg',
      ),
      House(
        name: 'The Khan House',
        address: 'P455, Chhatak, Sylhet',
        imageUrl: 'assets/images/house02.jpeg',
      ),
      House(
        name: 'The Moon House',
        address: 'P455, Chhatak, Sylhet',
        imageUrl: 'assets/images/offer01.jpeg',
      ),
      House(
        name: 'The Moon House',
        address: 'P455, Chhatak, Sylhet',
        imageUrl: 'assets/images/offer02.jpeg',
      ),
    ];
  }

  static List<House> generateRecommendedOffer() {
    return [
      House(
        name: 'The Moon House',
        address: 'P455, Chhatak, Sylhet',
        imageUrl: 'assets/images/offer01.jpeg',
      ),
      House(
        name: 'The Moon House',
        address: 'P455, Chhatak, Sylhet',
        imageUrl: 'assets/images/offer02.jpeg',
      ),
      House(
        name: 'The Shabir House',
        address: 'P455, Chhatak, Sylhet',
        imageUrl: 'assets/images/offer01.jpeg',
      ),
      House(
        name: 'The Khan House',
        address: 'P455, Chhatak, Sylhet',
        imageUrl: 'assets/images/offer02.jpeg',
      ),
    ];
  }
}
