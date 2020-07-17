import 'package:chat_websocket/app/infrastructure/dependency_injection/instance_factory.dart';
import 'package:chat_websocket/app/infrastructure/routers/routers.gr.dart';
import 'package:chat_websocket/app/modules/auth/bloc/auth_bloc.dart';
import 'package:chat_websocket/app/shared/flutter_utils.dart';
import 'package:flutter/material.dart';
import 'package:chat_websocket/app/shared/loader.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  final _authBloc;

  SplashPage() : _authBloc = InstanceFactory.get<AuthBloc>()..add(AuthEvent.checkIsLogged());

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      bloc: _authBloc,
      listener: (context, state) {
        context.showHideLoader(true);
        state.map(
          inital: (_){},
          authenticate: (_) {
            context.showHideLoader(false);
            Navigator.of(context).pushNamedAndRemoveUntil(Routes.groupsListPage, (route) => false);
          },
          unauthenticate: (_) {
            context.showHideLoader(false);
            Navigator.of(context).pushNamedAndRemoveUntil(Routes.loginPage, (route) => false);
          },
        );
      },
      child: Container(),
    );
  }
}
