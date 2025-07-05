import 'package:ml_algo/ml_algo.dart';
import 'package:ml_dataframe/ml_dataframe.dart';

class predicciones {
  predicciones();
  Future<void> regLineal() async {
    final features = DataFrame([
      ['feature_1', 'feature_2', 'output'],
      [2, 2, 12],
      [3, 3, 18],
      [4, 4, 24],
      [5, 5, 30],
    ]);
    final model = LinearRegressor.SGD(features, 'output', fitIntercept: false);

    print('Coefficients:         ${model.coefficients}');
    print('Coefficients length:  ${model.coefficients.length}');

    final testData = DataFrame([
      ['feature_1', 'feature_2', 'output'],
      [8, 12, 50],
    ]);

    final error = model.assess(testData, MetricType.mape);
    print(error);
  }
}
