import 'package:crud_firebase_atividade_pratica/providers/controlador_produto.dart';
import 'package:crud_firebase_atividade_pratica/screens/add_form.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ControladorProduto>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista de produtos"),
        centerTitle: true,
        actions: [
        IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => const AddForm(),
              );
            },
            icon: const Icon(Icons.add)
          )
        ],
      ),
      body: ListView.builder(
        itemCount: provider.listaProdutos.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              
            },
            title: Text(provider.listaProdutos[0].nome),
            subtitle: Text(provider.listaProdutos[0].preco.toString()),
          );
        },
      ),
    );
  }
}
