import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notificacoes/core/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool valor = false;

  showNotification() {
    setState(() {
      valor = !valor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Styles.blue,
                  Styles.lightBlue,
                ])),
            child: Center(
                child: Padding(
              padding: const EdgeInsets.all(24),
              child: Card(
                child: ListTile(
                    title: const Text("Lembrar-me mais tarde"),
                    trailing: valor
                        ? const Icon(
                            Icons.check_box,
                            color: Styles.darkBlue,
                          )
                        : const Icon(Icons.check_box_outline_blank),
                    onTap: showNotification),
              ),
            )),
          )
        ],
      ),
    );
  }
}
