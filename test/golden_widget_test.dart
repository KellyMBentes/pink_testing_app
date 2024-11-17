import 'package:flutter_test/flutter_test.dart';
import 'package:pink_testing_app/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:pink_testing_app/models/favorites.dart';
import 'package:provider/provider.dart';

Widget createHomeScreen() => ChangeNotifierProvider<Favorites>(
      create: (context) => Favorites(),
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
void main() {
  testWidgets('Golden test', (WidgetTester tester) async {
    await tester.pumpWidget(createHomeScreen());
    await expectLater(find.byType(HomePage), matchesGoldenFile('golden.png'));
  });
}
