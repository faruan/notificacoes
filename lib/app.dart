import 'package:flutter/material.dart';
import 'package:notificacoes/routes.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Notification Demo',
      theme: ThemeData(primarySwatch: Colors.amber),
      routes: Routes.list,
      initialRoute: Routes.initial,
      navigatorKey: Routes.navigatorKey,
    );
  }
}
