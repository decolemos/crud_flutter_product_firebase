import 'package:crud_firebase_atividade_pratica/providers/controlador_produto.dart';
import 'package:crud_firebase_atividade_pratica/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppConfig extends StatelessWidget {
  const AppConfig({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ControladorProduto(),
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
