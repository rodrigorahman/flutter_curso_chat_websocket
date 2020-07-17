import 'package:auto_route/auto_route_annotations.dart';
import 'package:chat_websocket/app/modules/auth/login/presentation/pages/login_page.dart';
import 'package:chat_websocket/app/modules/groups/presentation/pages/chat/chat_group_page.dart';
import 'package:chat_websocket/app/modules/groups/presentation/pages/groups_list/groups_list_page.dart';
import 'package:chat_websocket/app/modules/splash/splash_page.dart';

@MaterialAutoRouter(routes: [
  MaterialRoute(path: '/', page: SplashPage, initial: true),
  MaterialRoute(path: '/groups/list', page: GroupsListPage),
  MaterialRoute(path: '/groups/chat', page: ChatGroupPage),
  MaterialRoute(path: '/login', page: LoginPage),
])
class $Routers {}
