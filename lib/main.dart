import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spoutify',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Header avec logo
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Row(
          children: [
            // Logo placeholder
            Container(
              width: 40,
              height: 40,
              color: Colors.white,
              child: const Icon(Icons.music_note, color: Colors.deepPurple),
            ),
            const SizedBox(width: 12),
            const Text('Spoutify'),
          ],
        ),
      ),
      // Contenu principal
      body: const Center(
        child: Text('Contenu principal'),
      ),
      // Barre de navigation en bas
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Recherche',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            label: 'Bibliothèque',
          ),
        ],
        currentIndex: 0,
        onTap: (int index) {
          // Placeholder pour navigation
        },
      ),
    );
  }
}