import 'package:flutter/material.dart';
import 'package:viewmodel/models/person.dart';

class PersonViewmodel extends ChangeNotifier {
  //representação do estado

  var _result = '';

  String get result => _result;

  // açao da mudança do estado
  void calcularIMC(Person person) {
    // Chama o método calcularIMC da instância de Person
    final imc = person.calcularIMC();
    _result = 'IMC: ${imc.toStringAsFixed(2)}';
    notifyListeners();
  }
}
