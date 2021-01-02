import 'package:flutter_masked_text/flutter_masked_text.dart';

class ImcBloc {
  var heightController = new MaskedTextController(mask: '0000');
  var weightController = new MaskedTextController(mask: '0000');
  var result = "Preenca os dados para calcular o seu IMC";

  calculate() {
    double weight = double.parse(weightController.text);
    double height = double.parse(heightController.text);
    double imc = weight / (height * height);

    if (imc < 18.6) {
      result = "abaixo do Peso (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 18.6 && imc <= 24.9) {
      result = "Peso Ideial (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 25 && imc <= 29.9) {
      result = "Acima do Peso (${imc.toStringAsPrecision(2)})";
    }
  }
}
