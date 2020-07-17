import 'package:chat_websocket/app/infrastructure/dependency_injection/instance_factory.dart';
import 'package:chat_websocket/app/infrastructure/routers/routers.gr.dart';
import 'package:chat_websocket/app/modules/auth/login/presentation/bloc/login_bloc.dart';
import 'package:chat_websocket/app/shared/flutter_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:chat_websocket/app/shared/loader.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _loginController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final LoginBloc _bloc = InstanceFactory.get<LoginBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildPage(context),
    );
  }

  Widget _buildPage(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
        bloc: _bloc,
        listener: (context, state) {
          
          context.showHideLoader(state.loading);

          state.authFailureOrSuccessOption.fold(
            // Quando for none
            () => null,
            // Quando retornar resultado
            (either) {
              either.fold(
                // Em Caso de Falha
                (failure) {
                  FlutterUtils.showSnackBar(context,
                      message: failure.map(
                        validationError: (_) {
                          return _.errors.join('\n');
                        },
                        userNotFound: (_) => 'Usuário ou senha inválidos',
                        serverError: (_) {
                          print(_.message);
                          return _.message;
                        },
                      ),
                      type: SnackBaseType.error);
                },
                // Em Caso de sucesso
                (r) => Navigator.of(context).pushNamedAndRemoveUntil(Routes.splashPage, (route) => false),
              );
            },
          );
        },
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .9,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70), bottomRight: Radius.circular(70)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 20),
                    Text('WebSocket Chat', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white)),
                    SizedBox(height: 40),
                    TextFormField(
                      controller: _loginController,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: 'Login',
                        labelStyle: TextStyle(color: Colors.white, fontSize: 20),
                        disabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                      ),
                    ),
                    SizedBox(height: 40),
                    TextFormField(
                      controller: _passwordController,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: 'Senha',
                        labelStyle: TextStyle(color: Colors.white, fontSize: 20),
                        disabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: RaisedButton(
                        onPressed: () => _bloc.add(LoginEvent.login(_loginController.text, _passwordController.text)),
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text('Entrar'),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Cadastre-se',
                style: TextStyle(color: Colors.black, fontSize: 20),
              )
            ],
          ),
        ));
  }
}
