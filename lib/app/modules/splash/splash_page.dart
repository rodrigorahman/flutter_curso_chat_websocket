import 'package:chat_websocket/app/infrastructure/dependency_injection/instance_factory.dart';
import 'package:chat_websocket/app/infrastructure/routers/routers.gr.dart';
import 'package:chat_websocket/app/modules/auth/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:chat_websocket/app/shared/loader.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  final _authCubit;

  SplashPage() : _authCubit = InstanceFactory.get<AuthCubit>()..checkIsLogged();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      cubit: _authCubit,
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
