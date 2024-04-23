// import 'package:flutter/material.dart';
// import 'package:flutter_travel_app/models/place.dart';

// class PlaceDetailScreen extends StatelessWidget {
//   final Place place;

//   PlaceDetailScreen({required this.place});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(place.name)),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Image.asset(place.imageUrl, fit: BoxFit.cover),
//             SizedBox(height: 16),
//             Text(
//               place.name,
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 16),
//             Text(
//               'Address: ${place.address}',
//               style: TextStyle(fontSize: 16),
//             ),
//             SizedBox(height: 16),
//             Text(
//               'Description: ${place.description}',
//               style: TextStyle(fontSize: 16),
//             ),
//             SizedBox(height: 16),
//             ElevatedButton(
//               onPressed: () {
//                 // Handle GPS navigation
//               },
//               child: Text('Open in Google Maps'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // For opening Google Maps
import 'package:flutter_travel_app/models/place.dart';

class PlaceDetailScreen extends StatelessWidget {
  final Place place;

  PlaceDetailScreen({required this.place});

  // Function to open Google Maps with the location's coordinates
  Future<void> _openInGoogleMaps() async {
    final googleMapsUri = Uri.parse('geo:${place.latitude},${place.longitude}');

    if (await canLaunchUrl(googleMapsUri)) {
      await launchUrl(googleMapsUri); // Opens Google Maps
    } else {
      final webMapsUri = Uri.parse(
          'https://www.google.com/maps/search/?api=1&query=${place.latitude},${place.longitude}');

      if (await canLaunchUrl(webMapsUri)) {
        await launchUrl(
            webMapsUri); // Opens in web browser if Google Maps isn't available
      } else {
        throw 'Could not open Google Maps or browser.';
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          place.name,
          overflow: TextOverflow.ellipsis, // Prevents text overflow
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          // Allows scrolling for long content
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(
                    12), // Adds rounded corners to the image
                child: Image.asset(
                  place.imageUrl,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 200, // Fixed height to maintain image size
                ),
              ),
              SizedBox(height: 16), // Spacing between elements
              Text(
                place.name,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8), // Adjusted spacing for text
              Text(
                'Address: ${place.address}',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 8), // Spacing between text elements
              Text(
                'Description: ${place.description}',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 16), // Spacing before the button
              Center(
                // Center the button horizontally
                child: ElevatedButton(
                  onPressed: _openInGoogleMaps, // Call the Google Maps function
                  child: Text('Open in Google Maps'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
