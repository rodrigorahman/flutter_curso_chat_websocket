import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:chat_websocket/app/infrastructure/dependency_injection/instance_factory.dart';
import 'package:chat_websocket/app/infrastructure/routers/routers.gr.dart';
import 'package:chat_websocket/app/modules/groups/presentation/pages/groups_list/bloc/group_list_bloc.dart';
import 'package:chat_websocket/app/shared/flutter_utils.dart';
import 'package:chat_websocket/app/shared/string_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:chat_websocket/app/shared/loader.dart';

class GroupsListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InstanceFactory.get<GroupListBloc>()..add(GroupListEvent.findAll()),
      child: GroupsListContent(),
    );
  }
}

class GroupsListContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grupos'),
      ),
      floatingActionButton: _buildFloatActionButton(context),
      body: BlocConsumer<GroupListBloc, GroupListState>(
        listenWhen: (previous, current) => previous.loading != current.loading,
        listener: (BuildContext context, GroupListState state) => context.showHideLoader(state.loading),
        builder: (BuildContext context, GroupListState state) {
          return RefreshIndicator(
            onRefresh: () async {
              context.bloc<GroupListBloc>().add(GroupListEvent.findAll());
            },
            child: ListView(
              children: <Widget>[
                state.groupsOrFailure.fold(
                  () => Center(
                    child: Text('Nenhum Grupo Criado'),
                  ),
                  (either) {
                    return either.fold(
                      (l) => Center(
                        child: Text(
                          l.maybeMap(serverError: (_) => 'Erro ao buscar grupos', orElse: () => ''),
                        ),
                      ),
                      (groups) => ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: groups.length,
                        itemBuilder: (context, index) {
                          final item = groups[index];
                          final color = randomColor();
                          return ListTile(
                            onTap: () => ExtendedNavigator.of(context).pushNamed(Routes.chatGroupPage, arguments: ChatGroupPageArguments(group: item, color: color)),
                            contentPadding: EdgeInsets.all(10),
                            leading: CircleAvatar(
                              backgroundColor: color,
                              child: Text(StringUtils.getInitialsName(item.name)),
                              radius: 30,
                            ),
                            title: Text(item.name),
                          );
                        },
                      ),
                    );
                  },
                )
              ],
            ),
          );
        },
      ),
    );
  }

  
  Color randomColor() {
    Random random = new Random();
    return Color.fromARGB(255, random.nextInt(255), random.nextInt(255), random.nextInt(255));
  }

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _groupNameController = TextEditingController();

  Widget _buildFloatActionButton(BuildContext context) {
    return FloatingActionButton(
      onPressed: () async {
        await showDialog(
          barrierDismissible: false,
          context: context,
          child: AlertDialog(
            title: Text('Adicionar novo grupo'),
            content: BlocListener<GroupListBloc, GroupListState>(
              bloc: context.bloc<GroupListBloc>(),
              listenWhen: (previous, current) => current.createGroupOrFailure.isSome(),
              listener: (context, state) {
                state.createGroupOrFailure.fold(
                    () => null,
                    (either) => either.fold(
                          (failure) => FlutterUtils.showSnackBar(context, message: 'Erro ao gravar grupo'),
                          (success) => Navigator.pop(context),
                        ));
              },
              child: Form(
                key: _formKey,
                child: TextFormField(
                  controller: _groupNameController,
                  decoration: InputDecoration(
                    labelText: 'Nome',
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Nome do grupo obrigatório';
                    }
                    return null;
                  },
                ),
              ),
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  _groupNameController.text = '';
                  Navigator.pop(context);
                },
                child: Text('Cancelar'),
              ),
              FlatButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    context.bloc<GroupListBloc>().add(GroupListEvent.create(_groupNameController.text));
                  }
                },
                child: Text('Salvar'),
              ),
            ],
          ),
        );
        context.bloc<GroupListBloc>().add(GroupListEvent.findAll());
      },
      child: Icon(Icons.add),
    );
  }
}
