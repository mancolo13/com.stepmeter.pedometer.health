import 'package:flutter_test/flutter_test.dart';
import 'package:app13/main.dart';

void main() {
  testWidgets('StepMeter renders app correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const StepMeterApp());
    expect(find.byType(StepMeterApp), findsOneWidget);
  });
}
