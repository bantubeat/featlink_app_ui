import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HorizontalProfileList extends StatelessWidget {
  // Liste fictive de profils
  final List<Map<String, String>> profiles = [
    {
      'name': 'John',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVbgElWE7pbgzhzdS2b_6OjjFzEM_JqPLF5Q&s',
    },
    {
      'name': 'Bob',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRx0CIy3mIbpe2nuLRfK5xxPcwxmTvXjJsBNw&s',
    },
    {
      'name': 'Alice',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRC1t3O0WiTbF7vac0E00EPIuvZ-XrxSBFHA&s',
    },
    {
      'name': 'Emma',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRC1t3O0WiTbF7vac0E00EPIuvZ-XrxSBFHA&s',
    },
    {
      'name': 'David',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQi2Mm5P8j09P4hPKa1B-t9eIOHzHmR7IBkw&s',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130, // Hauteur du conteneur pour les profils
      child: ListView.builder(
        scrollDirection: Axis.horizontal, // Scroll horizontal
        itemCount: profiles.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0), // Espacement autour des profils
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromRGBO(221, 136, 207, 1),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  padding: const EdgeInsets.all(3),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(profiles[index]['image']!),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  profiles[index]['name']!,
                  style: GoogleFonts.acme(
                    color: const Color.fromRGBO(34, 23, 42, 1),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
