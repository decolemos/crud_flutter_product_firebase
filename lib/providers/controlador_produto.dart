import 'package:flutter/material.dart';

import '../models/produto.dart';

class ControladorProduto extends ChangeNotifier {
  final List<Produto> _listaProdutos = [
    Produto(id: "001", nome: "Mouse Gamer", preco: 100.00)
  ];

  List<Produto> get listaProdutos => _listaProdutos;

  //C

  void create(String id, String nome, double preco) {
    listaProdutos.add(Produto(id: id, nome: nome, preco: preco));
  }
}
