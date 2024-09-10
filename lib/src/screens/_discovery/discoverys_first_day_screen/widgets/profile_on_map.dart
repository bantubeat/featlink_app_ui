import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileOnMap extends StatelessWidget {
  const ProfileOnMap({
    required this.visible,
    required this.label,
    required this.raduis,
    required this.url,
    required this.color,
    required this.textColor,
    super.key,
  });
  final String url;
  final double raduis;
  final String label;
  final Color color;
  final Color textColor;
  final bool visible;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0), // Espacement autour des profils
      child: Column(
        children: [
          if (visible)
            Container(
              height: 45,
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.wifi_tethering,
                            color: textColor,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            label,
                            style: GoogleFonts.inter(
                              color: textColor,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 20,
                      width: 20,
                      padding: const EdgeInsets.all(
                        5,
                      ),
                      decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          color: textColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          const SizedBox(height: 4),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: color,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(50),
            ),
            padding: const EdgeInsets.all(3),
            child: CircleAvatar(
              radius: raduis,
              backgroundImage: NetworkImage(url),
            ),
          ),
        ],
      ),
    );
  }
}
