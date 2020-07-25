// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:chat_websocket/app/modules/auth/cubit/auth_cubit.dart';
import 'package:chat_websocket/app/infrastructure/rest_client/custom_dio.dart';
import 'package:chat_websocket/app/infrastructure/rest_client/i_rest_client.dart';
import 'package:chat_websocket/app/modules/auth/register/data/datasource/user_register_datasource.dart';
import 'package:chat_websocket/app/modules/auth/register/infra/datasource/i_user_register_datasource.dart';
import 'package:chat_websocket/app/modules/auth/register/infra/repository/user_register_repository.dart';
import 'package:chat_websocket/app/modules/auth/register/domain/repositories/i_user_register_repository.dart';
import 'package:chat_websocket/app/modules/groups/data/datasource/group_datasource.dart';
import 'package:chat_websocket/app/modules/groups/infra/datasource/i_group_datasource.dart';
import 'package:chat_websocket/app/modules/groups/infra/repository/group_repository.dart';
import 'package:chat_websocket/app/modules/groups/domain/repositories/i_group_repository.dart';
import 'package:chat_websocket/app/modules/auth/login/data/datasource/login_datasource.dart';
import 'package:chat_websocket/app/modules/auth/login/infra/datasource/i_login_datasource.dart';
import 'package:chat_websocket/app/modules/auth/login/infra/repositories/login_repository.dart';
import 'package:chat_websocket/app/modules/auth/login/domain/repositories/i_login_repository.dart';
import 'package:chat_websocket/app/modules/auth/login/domain/usecases/login_user/login_user.dart';
import 'package:chat_websocket/app/modules/auth/login/presentation/usecases/i_login_user.dart';
import 'package:chat_websocket/app/modules/auth/register/domain/usecases/register/register.dart';
import 'package:chat_websocket/app/modules/auth/register/presentation/usecases/i_register.dart';
import 'package:chat_websocket/app/modules/auth/login/presentation/cubit/login_cubit.dart';
import 'package:chat_websocket/app/modules/auth/register/presentation/cubit/register_cubit.dart';
import 'package:chat_websocket/app/modules/groups/domain/usecases/chat_websocket_connect.dart';
import 'package:chat_websocket/app/modules/groups/presentation/usecases/i_chat_websocket_connect.dart';
import 'package:chat_websocket/app/modules/groups/domain/usecases/create_group.dart';
import 'package:chat_websocket/app/modules/groups/presentation/usecases/i_create_group.dart';
import 'package:chat_websocket/app/modules/groups/domain/usecases/find_all_groups.dart';
import 'package:chat_websocket/app/modules/groups/presentation/usecases/i_find_all_groups.dart';
import 'package:chat_websocket/app/modules/groups/domain/usecases/find_group_by_id.dart';
import 'package:chat_websocket/app/modules/groups/presentation/usecases/i_find_group_by_id.dart';
import 'package:chat_websocket/app/modules/groups/presentation/pages/chat/cubit/chat_group_cubit.dart';
import 'package:chat_websocket/app/modules/groups/presentation/pages/groups_list/cubit/group_list_cubit.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  g.registerFactory<AuthCubit>(() => AuthCubit());
  g.registerFactory<IRestClient>(() => CustomDio());
  g.registerFactory<IUserRegisterDatasource>(
      () => UserRegisterDatasource(g<IRestClient>()));
  g.registerFactory<IUserRegisterRepository>(
      () => UserRegisterRepository(g<IUserRegisterDatasource>()));
  g.registerLazySingleton<IGroupDataSource>(
      () => GroupDatasource(g<IRestClient>()));
  g.registerLazySingleton<IGroupRepository>(
      () => GroupRepository(g<IGroupDataSource>()));
  g.registerLazySingleton<ILoginDatasource>(
      () => LoginDatasource(g<IRestClient>()));
  g.registerLazySingleton<ILoginRepository>(
      () => LoginRepository(g<ILoginDatasource>()));
  g.registerFactory<ILoginUser>(() => LoginUser(g<ILoginRepository>()));
  g.registerFactory<IRegister>(() => Register(g<IUserRegisterRepository>()));
  g.registerFactory<LoginCubit>(() => LoginCubit(g<ILoginUser>()));
  g.registerFactory<RegisterCubit>(() => RegisterCubit(g<IRegister>()));
  g.registerFactory<IChatWebsocketConnect>(
      () => ChatWebsocketConnect(g<IGroupRepository>()));
  g.registerFactory<ICreateGroup>(() => CreateGroup(g<IGroupRepository>()));
  g.registerFactory<IFindAllGroups>(() => FindAllGroups(g<IGroupRepository>()));
  g.registerFactory<IFindGroupById>(() => FindGroupById(g<IGroupRepository>()));
  g.registerFactory<ChatGroupCubit>(
      () => ChatGroupCubit(g<IFindGroupById>(), g<IChatWebsocketConnect>()));
  g.registerFactory<GroupListCubit>(
      () => GroupListCubit(g<IFindAllGroups>(), g<ICreateGroup>()));
}
