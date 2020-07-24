
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'app/infrastructure/dependency_injection/dependency_injection_config.dart';
import 'app/infrastructure/routers/routers.gr.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await loadEnv();
  configureDependencies();
  runApp(MyApp());
}

Future<void> loadEnv() async {
  const isProduction = bool.fromEnvironment('dart.vm.product');
  await DotEnv().load(isProduction ? '.env' : '.env_dev');
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat WebSocket',
      theme: ThemeData(
        primaryColor: Color(0xFF6C44F2),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      builder: ExtendedNavigator<Routers>(
        router: Routers(),
      ),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//   IOWebSocketChannel channel;
//   @override
//   void initState() {
//     channel = IOWebSocketChannel.connect('ws://localhost:8888/grupo/e537c8ef-cb87-42e9-88a2-f76be4aeb371/connect');
//     Future.delayed(Duration(seconds: 10), () {
//       channel.sink.add(json.encode({"grupo": "e537c8ef-cb87-42e9-88a2-f76be4aeb371", "mensagem": "Flutter é Top enviado pelo flutter", "usuario": "Rodrigo Almeida"}));
//     });
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     //
//     return Scaffold(
//         appBar: AppBar(
//           title: Text(widget.title),
//         ),
//         body: Center(
//           child: StreamBuilder<dynamic>(
//               stream: channel.stream,
//               builder: (context, snapshot) {
//                 return Column(
//                   //
//                   //
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     Text(snapshot.data ?? ''),
//                     TextFormField(
//                       keyboardType: TextInputType.visiblePassword,
//                     ),
//                     Text(
//                       '$_counter',
//                       style: Theme.of(context).textTheme.headline4,
//                     ),
//                   ],
//                 );
//               }),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {},
//           tooltip: 'Increment',
//           child: Icon(Icons.add),
//         ));
//   }
// }
