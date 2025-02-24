import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:http/http.dart' as http;

class MapScreen extends StatefulWidget {
  final double requiredLat;
  final double requiredLng;

  const MapScreen({
    super.key,
    required this.requiredLat,
    required this.requiredLng,
  });

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final MapController mapController = MapController();
  List<LatLng> routePoints = [];
  List<Marker> markers = [];
  bool isMapReady = false; // التحقق من جاهزية الخريطة
  final String orsApiKey =
      '5b3ce3597851110001cf6248b0c45dd132794f37b4310837c49fcda4';

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        isMapReady = true;
      });
      _setInitialLocation();
    });
  }

  void _setInitialLocation() {
    LatLng initialPosition = LatLng(widget.requiredLat, widget.requiredLng);
    setState(() {
      markers.add(
        Marker(
          width: 80.0,
          height: 80.0,
          point: initialPosition,
          child: const Icon(Icons.my_location, color: Colors.blue, size: 40.0),
        ),
      );
    });

    if (isMapReady) {
      mapController.move(initialPosition, 15.0);
    }
  }

  Future<void> _getRoute(LatLng destination) async {
    final start = LatLng(widget.requiredLat, widget.requiredLng);
    final response = await http.get(
      Uri.parse(
          'https://api.openrouteservice.org/v2/directions/driving-car?api_key=$orsApiKey&start=${start.longitude},${start.latitude}&end=${destination.longitude},${destination.latitude}'),
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final List<dynamic> coords =
          data['features'][0]['geometry']['coordinates'];

      setState(() {
        routePoints =
            coords.map((coord) => LatLng(coord[1], coord[0])).toList();

        if (routePoints.isNotEmpty) {
          _updateDestinationMarker(destination);
        }
      });
    } else {
      print('فشل في جلب المسار');
    }
  }

  void _updateDestinationMarker(LatLng point) {
    markers.removeWhere((marker) =>
        marker.child is Icon && (marker.child as Icon).color == Colors.red);

    markers.add(
      Marker(
        width: 80.0,
        height: 80.0,
        point: point,
        child: const Icon(Icons.location_on, color: Colors.red, size: 40.0),
      ),
    );
  }

  void _addDestinationMarker(LatLng point) {
    setState(() {
      _updateDestinationMarker(point);
    });
    _getRoute(point);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OpenStreetMap مع تحديد موقع جديد'),
      ),
      body: FlutterMap(
        mapController: mapController,
        options: MapOptions(
          initialCenter: LatLng(widget.requiredLat, widget.requiredLng),
          initialZoom: 15.0,
          onTap: (tapPosition, point) => _addDestinationMarker(point),
        ),
        children: [
          TileLayer(
            urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
          ),
          MarkerLayer(markers: List.from(markers)),
          if (routePoints.isNotEmpty)
            PolylineLayer(
              polylines: [
                Polyline(
                  points: routePoints,
                  strokeWidth: 4.0,
                  color: Colors.blue.withOpacity(0.7),
                ),
              ],
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (isMapReady) {
            mapController.move(
              LatLng(widget.requiredLat, widget.requiredLng),
              15.0,
            );
          }
        },
        child: const Icon(Icons.my_location),
      ),
    );
  }
}
