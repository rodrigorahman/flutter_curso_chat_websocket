// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:chat_websocket/app/modules/splash/splash_page.dart';
import 'package:chat_websocket/app/modules/groups/presentation/pages/groups_list/groups_list_page.dart';
import 'package:chat_websocket/app/modules/groups/presentation/pages/chat/chat_group_page.dart';
import 'package:chat_websocket/app/modules/groups/domain/entities/group.dart';
import 'dart:ui';
import 'package:chat_websocket/app/modules/auth/login/presentation/pages/login_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String groupsListPage = '/groups/list';
  static const String chatGroupPage = '/groups/chat';
  static const String loginPage = '/login';
  static const all = <String>{
    splashPage,
    groupsListPage,
    chatGroupPage,
    loginPage,
  };
}

class Routers extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.groupsListPage, page: GroupsListPage),
    RouteDef(Routes.chatGroupPage, page: ChatGroupPage),
    RouteDef(Routes.loginPage, page: LoginPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (RouteData data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashPage(),
        settings: data,
      );
    },
    GroupsListPage: (RouteData data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => GroupsListPage(),
        settings: data,
      );
    },
    ChatGroupPage: (RouteData data) {
      var args = data.getArgs<ChatGroupPageArguments>(
          orElse: () => ChatGroupPageArguments());
      return MaterialPageRoute<dynamic>(
        builder: (context) => ChatGroupPage(
          key: args.key,
          group: args.group,
          color: args.color,
        ),
        settings: data,
      );
    },
    LoginPage: (RouteData data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => LoginPage(),
        settings: data,
      );
    },
  };
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//ChatGroupPage arguments holder class
class ChatGroupPageArguments {
  final Key key;
  final Group group;
  final Color color;
  ChatGroupPageArguments({this.key, this.group, this.color});
}
