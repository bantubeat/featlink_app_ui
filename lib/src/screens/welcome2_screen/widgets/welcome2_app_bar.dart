import 'package:flutter/material.dart';

/// Selon moi ce composant ne mérite pas vraiment de devenir un car la
/// page orginal n'est pas longue et il y a pas de réel bénefice
/// mais néamoins j'en ai fait un composant pour servir d'exemple pour
/// le cas ou nous aurions des pages qui auront plusieurs composant enfant
class Welcome2AppBar extends AppBar {
  Welcome2AppBar()
      : super(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.chevron_left, size: 40),
          ),
        );
}
