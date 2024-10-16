import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test01/main.dart'; 

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    
    await tester.pumpWidget(MyApp());

    expect(find.text('Acceder'), findsOneWidget);


    await tester.tap(find.text('Acceder'));
    await tester.pumpAndSettle();


    expect(find.text('Login'), findsOneWidget);
    await tester.enterText(find.byType(TextField).first, 'usuario');
    await tester.enterText(find.byType(TextField).last, 'wrongpassword');
    await tester.tap(find.text('Login'));
    await tester.pump();


    expect(find.text('Credenciales incorrectas'), findsOneWidget);


    await tester.tap(find.text('OK'));
    await tester.pump();

    await tester.enterText(find.byType(TextField).first, 'usuario');
    await tester.enterText(find.byType(TextField).last, '123456');
    await tester.tap(find.text('Login'));
    await tester.pumpAndSettle();


    expect(find.text('¡Bienvenido!'), findsOneWidget);
  });
}
