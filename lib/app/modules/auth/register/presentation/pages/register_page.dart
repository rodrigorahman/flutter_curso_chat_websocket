import 'package:chat_websocket/app/infrastructure/dependency_injection/instance_factory.dart';
import 'package:chat_websocket/app/modules/auth/register/presentation/cubit/register_cubit.dart';
import 'package:chat_websocket/app/shared/flutter_utils.dart';
import 'package:edge_alert/edge_alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:chat_websocket/app/shared/loader.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastrar Usuário'),
      ),
      body: BlocProvider(
        create: (context) => InstanceFactory.get<RegisterCubit>(),
        child: RegisterContent(),
      ),
    );
  }
}

class RegisterContent extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final loginController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCubit, RegisterState>(
      listenWhen: (previous, current) => previous.loading != current.loading,
      listener: (context, state) {
        context.showHideLoader(state.loading);
        state.failureOrSuccess.map(
          (a) => a.fold(
            (failure) {
              FlutterUtils.showSnackBar(context,
                  message: failure.map(
                    validation: (_) {
                      return _.errors.join('\n');
                    },
                    server: (_) {
                      print(_.message);
                      return _.message;
                    },
                  ),
                  type: SnackBaseType.error);
            },
            (r) {
              EdgeAlert.show(
                context,
                title: 'Cadastro',
                description: 'Cadastro realizado com sucesso',
                gravity: EdgeAlert.TOP,
                icon: Icons.supervisor_account,
                backgroundColor: Colors.blue
              );
              Navigator.of(context).pop();
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'Nome'),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Nome obrigatório';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: loginController,
                decoration: InputDecoration(labelText: 'Login'),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Login obrigatório';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(labelText: 'Senha'),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Senha obrigatório';
                  }
                  return null;
                },
              ),
              RaisedButton(
                child: Text('Cadastrar'),
                onPressed: () {
                  if (formKey.currentState.validate()) {
                    context.bloc<RegisterCubit>().registerUser(
                          nameController.text,
                          loginController.text,
                          passwordController.text,
                        );
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
