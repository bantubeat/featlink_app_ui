import 'dart:io';

import 'package:featlink_app/src/all_screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:path/path.dart' as path;

void main() {
  final screenFiles = Directory('lib/src/screens')
      .listSync(recursive: true, followLinks: false)
      .where((e) => e.path.endsWith('_screen.dart'));

  test('Test "allScreens" map must be up to date', () {
    expect(screenFiles.length, allScreens.length);
  });

  testWidgets('Test all screen render without error', (tester) async {
    for (final screenFile in screenFiles) {
      final fileName = path.basenameWithoutExtension(screenFile.path);

      debugPrint('Testing $fileName...');

      final screenWidget = _loadScreenWidget(screenFile.path);

      if (screenWidget == null) {
        fail('$fileName could not be loaded');
      }

      try {
        await tester.pumpWidget(MaterialApp(home: screenWidget));

        expect(find.byType(screenWidget.runtimeType), findsOneWidget);
        expect(find.byType(Scaffold), findsOneWidget);
        debugPrint('$fileName is OK');
      } catch (_) {
        fail('$fileName screen throw error when rendering');
      }
    }
  });
}

Widget? _loadScreenWidget(String filePath) {
  final key = allScreens.keys.where((k) => filePath.endsWith(k)).firstOrNull;
  if (key == null) return null;

  final builder = allScreens[key];

  if (builder == null) return null;

  return builder();
}
