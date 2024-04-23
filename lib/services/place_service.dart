import 'package:flutter_travel_app/models/place.dart';

class PlaceService {
  final List<Place> _places = [
    // List of 60 hardcore places, here are some examples:
    Place(
      id: '1',
      name: 'Eiffel Tower',
      description: 'A famous landmark in Paris.',
      address: 'Champ de Mars, 5 Avenue Anatole France, 75007 Paris, France',
      imageUrl: 'assets/images/eiffel_tower.jpg',
      latitude: 48.8584,
      longitude: 2.2945,
    ),
    Place(
      id: '2',
      name: 'Statue of Liberty',
      description: 'Iconic statue in New York Harbor.',
      address: 'Liberty Island, New York, NY 10004, United States',
      imageUrl: 'assets/images/statue_of_liberty.jpg',
      latitude: 40.6892,
      longitude: -74.0445,
    ),
    Place(
      id: '3',
      name: 'Great Wall of China',
      description: 'Ancient fortification in China.',
      address: 'Huairou, Beijing, China',
      imageUrl: 'assets/images/great_wall_of_china.jpg',
      latitude: 40.4319,
      longitude: 116.5704,
    ),
    Place(
      id: '4',
      name: 'Taj Mahal',
      description: 'Mausoleum in Agra, India.',
      address:
          'Dharmapuri, Forest Colony, Tajganj, Agra, Uttar Pradesh 282001, India',
      imageUrl: 'assets/images/taj_mahal.jpg',
      latitude: 27.1751,
      longitude: 78.0421,
    ),
    Place(
      id: '5',
      name: 'Pyramids of Giza',
      description: 'Ancient Egyptian pyramids.',
      address: 'Al Haram, Nazlet El-Semman, Al Haram, Giza Governorate, Egypt',
      imageUrl: 'assets/images/pyramids_of_giza.jpg',
      latitude: 29.9792,
      longitude: 31.1342,
    ),
    Place(
      id: '6',
      name: 'Machu Picchu',
      description: 'Incan citadel located in the Andes Mountains.',
      address: 'Aguas Calientes, Peru',
      imageUrl: 'assets/images/machu_picchu.jpg',
      latitude: -13.1631,
      longitude: -72.5450,
    ),
    Place(
      id: '7',
      name: 'Sydney Opera House',
      description: 'Iconic performing arts center in Sydney.',
      address: 'Bennelong Point, Sydney NSW 2000, Australia',
      imageUrl: 'assets/images/sydney_opera_house.jpg',
      latitude: -33.8568,
      longitude: 151.2153,
    ),
    Place(
      id: '8',
      name: 'Colosseum',
      description: 'Ancient amphitheater in Rome.',
      address: 'Piazza del Colosseo, 1, 00184 Roma RM, Italy',
      imageUrl: 'assets/images/colosseum.jpg',
      latitude: 41.8902,
      longitude: 12.4922,
    ),
    Place(
      id: '9',
      name: 'Petra',
      description: 'Historical city in Jordan.',
      address: 'Wadi Musa, Jordan',
      imageUrl: 'assets/images/petra.jpg',
      latitude: 30.3285,
      longitude: 35.4419,
    ),
    Place(
      id: '10',
      name: 'Mount Everest',
      description: 'Highest mountain peak in the world.',
      address: 'Himalayas, Nepal',
      imageUrl: 'assets/images/mount_everest.jpg',
      latitude: 27.9881,
      longitude: 86.9250,
    ),
    // Add additional places to reach a total of 60
  ];

  List<Place> get allPlaces => _places;

  List<Place> searchPlaces(String query) {
    return _places.where((place) {
      return place.name.toLowerCase().contains(query.toLowerCase());
    }).toList();
  }
}
