import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:chat_websocket/app/shared/loader.dart';

void main() {
  setUp(() {});

  testWidgets('should open loader', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: LoaderTest()));
    final btn = find.widgetWithText(FlatButton, 'Open Loader');
    await tester.tap(btn);
    await tester.pump();
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
    await tester.pumpAndSettle();
  });

  testWidgets('should open and close loader', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: LoaderTest()));
    final btn = find.widgetWithText(FlatButton, 'Open Loader');
    await tester.tap(btn);
    await tester.pump();
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
    await tester.pumpAndSettle();
    expect(find.byType(CircularProgressIndicator), findsNothing);
  });

  testWidgets('should open only one loader', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: LoaderTest()));
    final btn = find.widgetWithText(FlatButton, 'Open Loader');
    await tester.tap(btn);
    await tester.tap(btn);
    await tester.pump();
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
    await tester.pumpAndSettle();
  });
}

class LoaderTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        onPressed: () async {
          context.showHideLoader(true);
          Future.delayed(Duration.zero, () => context.showHideLoader(false));
          
        },
        child: Text('Open Loader'),
      ),
    );
  }
  
}
