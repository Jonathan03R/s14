import 'package:ml_algo/ml_algo.dart';
import 'package:ml_dataframe/ml_dataframe.dart';

class predicciones {
  predicciones();

  Future<void> RegLog() async {
    final feature = DataFrame([
      ['feature_1', 'feature_2', 'output'],
      [21, 2, 1],
      [3, 33, 1],
      [41, 4, 0],
      [5, 50, 0],
    ]);
    final model = LogisticRegressor(feature, 'output');
    final testData = DataFrame([
      ['feature_1', 'feature_2', 'output'],
      [8, 12],
      [9, 20],
    ]);
    print('Prediccion: ${model.predict(testData)}');
    print(model.assess(feature, MetricType.accuracy));
    final pre = model.assess(feature, MetricType.precision);
    print('precision: $pre');
  }

  Future<void> KNN() async {
    final features = DataFrame([
      ['feature_1', 'feature_2', 'output'],
      [2, 2, 12],
      [3, 3, 18],
      [4, 4, 24],
      [5, 5, 30],
    ]);
    final model = KnnClassifier(features, 'output', 3);
    final testData = DataFrame([
      ['feature_1', 'feature_2', 'output'],
      [8, 12],
    ]);
    print('Prediccion: ${model.predict(testData)}');
    print(model.assess(features, MetricType.accuracy));
    final pre = model.assess(features, MetricType.precision);
    print('precision: $pre');
  }

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
