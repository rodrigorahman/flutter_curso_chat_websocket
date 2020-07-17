// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:chat_websocket/app/modules/auth/bloc/auth_bloc.dart';
import 'package:chat_websocket/app/infrastructure/rest_client/custom_dio.dart';
import 'package:chat_websocket/app/infrastructure/rest_client/i_rest_client.dart';
import 'package:chat_websocket/app/modules/groups/data/datasource/group_datasource.dart';
import 'package:chat_websocket/app/modules/groups/data/datasource/i_group_datasource.dart';
import 'package:chat_websocket/app/modules/groups/data/repository/group_repository.dart';
import 'package:chat_websocket/app/modules/groups/domain/ports/i_group_repository.dart';
import 'package:chat_websocket/app/modules/auth/login/data/datasource/login_datasource.dart';
import 'package:chat_websocket/app/modules/auth/login/data/datasource/i_login_datasource.dart';
import 'package:chat_websocket/app/modules/auth/login/data/repository/login_repository.dart';
import 'package:chat_websocket/app/modules/auth/login/domain/ports/i_login_repository.dart';
import 'package:chat_websocket/app/modules/auth/login/domain/usecases/login_user.dart';
import 'package:chat_websocket/app/modules/groups/domain/usecases/create_group.dart';
import 'package:chat_websocket/app/modules/groups/domain/usecases/find_all_groups.dart';
import 'package:chat_websocket/app/modules/groups/presentation/pages/groups_list/bloc/group_list_bloc.dart';
import 'package:chat_websocket/app/modules/auth/login/presentation/bloc/login_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  g.registerFactory<AuthBloc>(() => AuthBloc());
  g.registerFactory<IRestClient>(() => CustomDio());
  g.registerLazySingleton<IGroupDataSource>(
      () => GroupDatasource(g<IRestClient>()));
  g.registerLazySingleton<IGroupRepository>(
      () => GroupRepository(g<IGroupDataSource>()));
  g.registerLazySingleton<ILoginDatasource>(
      () => LoginDatasource(g<IRestClient>()));
  g.registerLazySingleton<ILoginRepository>(
      () => LoginRepository(g<ILoginDatasource>()));
  g.registerLazySingleton<LoginUser>(() => LoginUser(g<ILoginRepository>()));
  g.registerLazySingleton<CreateGroup>(
      () => CreateGroup(g<IGroupRepository>()));
  g.registerLazySingleton<FindAllGroups>(
      () => FindAllGroups(g<IGroupRepository>()));
  g.registerFactory<GroupListBloc>(
      () => GroupListBloc(g<FindAllGroups>(), g<CreateGroup>()));
  g.registerFactory<LoginBloc>(() => LoginBloc(g<LoginUser>()));
}
