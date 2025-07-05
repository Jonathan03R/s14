import 'package:dart_ml/dart_ml.dart';
import 'package:s14/analisis/predicciones.dart';

class predicciones2 {
  predicciones2();
  Future<void> KNN_REGLOG() async {
    var dataset = [
      [2.7810836, 2.550537003, 0],
      [1.465489372, 2.362125076, 0],
      [3.396561688, 4.400293529, 0],
      [1.38807019, 1.850220317, 0],
      [3.06407232, 3.005305973, 0],
      [7.627531214, 2.759262235, 1],
      [5.332441248, 2.088626775, 1],
      [6.922596716, 1.77106367, 1],
      [8.675418651, -0.242068655, 1],
      [7.673756466, 3.508563011, 1],
    ];
    var test = [2.7810836, 1.465489372, 3.396561688];

    print('Prediccion KNN: ${knn(dataset, test, 5)}');
    print('Prediccion RegLog: ${logreg(dataset, test, 0.3, 100).round()}');
    // print(logreg(dataset, dataset[0], 0.3, 100).round());
  }
}
