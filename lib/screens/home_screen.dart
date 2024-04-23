import 'package:flutter/material.dart';
import 'package:flutter_travel_app/services/place_service.dart';
import 'package:flutter_travel_app/widgets/place_card.dart';
import 'package:flutter_travel_app/screens/place_detail_screen.dart';
import 'package:flutter_travel_app/models/place.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PlaceService placeService = PlaceService();
  String searchQuery = '';

  @override
  Widget build(BuildContext context) {
    List<Place> filteredPlaces = placeService.searchPlaces(searchQuery);

    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Search places...',
            border: InputBorder.none,
          ),
          onChanged: (value) {
            setState(() {
              searchQuery = value;
            });
          },
        ),
      ),
      body: ListView(
        children: filteredPlaces.map((place) {
          return PlaceCard(
            place: place,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PlaceDetailScreen(place: place),
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
