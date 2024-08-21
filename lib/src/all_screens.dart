import 'package:featlink_app/src/screens/_auth/login_screen.dart';
import 'package:featlink_app/src/screens/_auth/register_screen.dart';
import 'package:flutter/material.dart' show Widget;

import 'screens/welcome2_screen/welcome2_screen.dart';
import 'screens/welcome_screen.dart';
import 'screens/_create_profile/create_profile_step_1o1_screen.dart';

/// Le test unitaire va chercher toute les pages du dossier screens pour se
/// rassurer qu'il s'affiche sans erreur, seulement pour chaque fichier,
/// le tester automatique aura besion de savoir comment instancier la classe
/// qui s'y trouve, c'est pour ça que cette Map existe, pour faire le lien entre
/// chaque nom de fichier et une fonction qui retourne une instance de la classe
/// dans ce fichier.
///
/// Ce n'est valable QUE pour les SCREENS, les composants n'ont pas besion d'être ici
final Map<String, Widget Function()> allScreens = {
  'welcome_screen.dart': () => const WelcomeScreen(),
  'welcome2_screen.dart': () => const Welcome2Screen(),
  'login_screen.dart': () => const LoginScreen(),
  'register_screen.dart': () => const RegisterScreen(),
  'create_profile_step_1o1_screen.dart': () => CreateProfileStep1o1Screen(),
  // Ajoutez d'autres chemins de fichiers ici
};
