import 'package:flutter_test/flutter_test.dart';
import 'package:voltpassng_mobile/app.dart';

void main() {
  testWidgets('App renders home screen', (WidgetTester tester) async {
    await tester.pumpWidget(const VoltPassApp());
    expect(find.text('VoltPassNG'), findsOneWidget);
    expect(find.text('Find stations'), findsOneWidget);
  });
}
