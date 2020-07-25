import 'package:chat_websocket/app/modules/auth/login/presentation/pages/login_page.dart';
import 'package:chat_websocket/app/modules/auth/register/domain/exceptions/register_failure.dart';
import 'package:chat_websocket/app/modules/auth/register/presentation/pages/register_page.dart';
import 'package:chat_websocket/app/modules/auth/register/presentation/usecases/i_register.dart';
import 'package:dartz/dartz.dart';
import 'package:edge_alert/edge_alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/mockito.dart';

import '../../../../../../helper/basic_app_test_start.dart';
import '../../../../../../mock/mock_navigator_observer.dart';

class MockRegister extends Mock implements IRegister {}

void main() {
  startBasicAppTest();
  NavigatorObserver mockNavigator;
  IRegister register;

  setUp(() {
    mockNavigator = MockNavigatorObserver();
    register = MockRegister();
    GetIt.instance.registerFactory<IRegister>(() => register);
  });

  testWidgets('should register login', (WidgetTester tester) async {
    when(register.execute('Rodrigo Rahman', 'RodrigoRahman', '123')).thenAnswer((_) async => right(unit));

    await tester.pumpWidget(
      MaterialApp(
        home: RegisterPage(),
        navigatorObservers: [mockNavigator],
      ),
    );

    var nome = find.widgetWithText(TextFormField, 'Nome');
    await tester.enterText(nome, 'Rodrigo Rahman');

    var login = find.widgetWithText(TextFormField, 'Login');
    await tester.enterText(login, 'RodrigoRahman');

    var senha = find.widgetWithText(TextFormField, 'Senha');
    await tester.enterText(senha, '123');

    final btn = find.widgetWithText(RaisedButton, 'Cadastrar');
    await tester.tap(btn);

    await tester.pump();
    expect(find.byType(OverlayWidget), findsOneWidget);
    verify(mockNavigator.didPop(any, any));
  });

  testWidgets('should register login error', (WidgetTester tester) async {
    when(register.execute('Rodrigo Rahman', 'RodrigoRahman', '123')).thenAnswer(
      (_) async => left(
        RegisterFailure.server(message: 'ERRROOOOO'),
      ),
    );

    await tester.pumpWidget(
      MaterialApp(
        home: RegisterPage(),
        navigatorObservers: [mockNavigator],
      ),
    );

    var nome = find.widgetWithText(TextFormField, 'Nome');
    await tester.enterText(nome, 'Rodrigo Rahman');

    var login = find.widgetWithText(TextFormField, 'Login');
    await tester.enterText(login, 'RodrigoRahman');

    var senha = find.widgetWithText(TextFormField, 'Senha');
    await tester.enterText(senha, '123');

    final btn = find.widgetWithText(RaisedButton, 'Cadastrar');
    await tester.tap(btn);

    await tester.pumpAndSettle();
    expect(find.byType(SnackBar), findsOneWidget);
    expect(find.text('ERRROOOOO'), findsOneWidget);
  });
}
