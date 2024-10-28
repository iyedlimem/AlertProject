import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alert',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const CartAlertPage(),
    );
  }
}

class CartAlertPage extends StatefulWidget {
  const CartAlertPage({super.key});

  @override
  _CartAlertPageState createState() => _CartAlertPageState();
}

class _CartAlertPageState extends State<CartAlertPage> {
  List<dynamic> alerts = [];

  @override
  void initState() {
    super.initState();
    fetchAlerts();
  }

  Future<void> fetchAlerts() async {
    const String url = 'http://localhost:8082/reports/getAll';
    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        setState(() {
          alerts = jsonDecode(response.body);
        });
      } else {
        throw Exception('Failed to load alerts');
      }
    } catch (error) {
      print('Error fetching alerts: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Liste des alertes'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: alerts.isEmpty
            ? const Center(child: CircularProgressIndicator())
            : GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // Number of columns
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                  childAspectRatio: 4 / 5,
                ),
                itemCount: alerts.length,
                itemBuilder: (context, index) {
                  final alert = alerts[index];
                  return CartAlert(
                    category: alert['category'],
                    description: alert['description'],
                    location: alert['location'],
                    forestName: alert['forest']['name'],
                    fullName: alert['user']['profile']['fullName'],
                    imagePath: alert['imagePath'],
                  );
                },
              ),
      ),
    );
  }
}

class CartAlert extends StatefulWidget {
  final String category;
  final String description;
  final String location;
  final String forestName;
  final String fullName;
  final String imagePath;

  const CartAlert({
    Key? key,
    required this.category,
    required this.description,
    required this.location,
    required this.forestName,
    required this.fullName,
    required this.imagePath,
  }) : super(key: key);

  @override
  _CartAlertState createState() => _CartAlertState();
}

class _CartAlertState extends State<CartAlert> {
  // Keep track of which button is selected
  String selectedStatus = 'En attente'; // Default selected button

  String getFullImageUrl() {
    const String baseUrl = 'http://localhost:8082/reports/getImage/';
    return '$baseUrl${widget.imagePath}';
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: CachedNetworkImage(
                imageUrl: getFullImageUrl(),
                placeholder: (context, url) => const Center(
                  child: CircularProgressIndicator(),
                ),
                errorWidget: (context, url, error) => const Icon(Icons.error),
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Category: ${widget.category}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 4),
            Text(
              'Description: ${widget.description}',
              style: const TextStyle(fontSize: 14),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 4),
            Text(
              'Location: ${widget.location}',
              style: const TextStyle(fontSize: 14),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 4),
            Text(
              'Forest: ${widget.forestName}',
              style: const TextStyle(fontSize: 14),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 4),
            Text(
              'User: ${widget.fullName}',
              style: const TextStyle(fontSize: 14),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            // Status buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      selectedStatus = 'En attente';
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: selectedStatus == 'En attente'
                        ? Colors.red
                        : Colors.grey,
                  ),
                  child: const Text('En attente'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      selectedStatus = 'En cours';
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: selectedStatus == 'En cours'
                        ? Colors.orange
                        : Colors.grey,
                  ),
                  child: const Text('En cours'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      selectedStatus = 'Terminè';
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: selectedStatus == 'Terminè'
                        ? Colors.green
                        : Colors.grey,
                  ),
                  child: const Text('Terminè'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
