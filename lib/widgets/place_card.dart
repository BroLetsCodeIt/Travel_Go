import 'package:flutter/material.dart';
import 'package:flutter_travel_app/models/place.dart';

class PlaceCard extends StatelessWidget {
  final Place place;
  final VoidCallback onTap;

  PlaceCard({required this.place, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(
          place.imageUrl,
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
        title: Text(place.name),
        subtitle: Text(place.address),
        trailing: IconButton(
          icon: const Icon(Icons.location_on),
          onPressed: () {
            // Handle GPS location click (e.g., open Google Maps)
          },
        ),
        onTap: onTap, // Handle tap to go to detail page
      ),
    );
  }
}
