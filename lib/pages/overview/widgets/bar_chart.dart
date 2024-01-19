import 'package:charts_flutter_new/flutter.dart' as charts;

import 'package:flutter/material.dart';

class SimpleBarChart extends StatelessWidget {
  final List<charts.Series<dynamic, String>> seriesList;
  final bool? animate;

  const SimpleBarChart(this.seriesList, {super.key, this.animate});

  factory SimpleBarChart.withSampleData() {
    return SimpleBarChart(
      _createSampleData(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return charts.BarChart(
      seriesList,
      animate: animate,
    );
  }

  static List<charts.Series<OrdinalSales, String>> _createSampleData() {
    final data = [
      OrdinalSales('Today', 80),
      OrdinalSales('Yesterday', 40),
      OrdinalSales('2 days ago', 100),
      OrdinalSales('4 Jan', 75),
      OrdinalSales('3 Jan', 15),
      OrdinalSales('2 Jan', 85),
      OrdinalSales('1 Jan', 40),
    ];

    return [
      charts.Series<OrdinalSales, String>(
        id: 'Sales',
        colorFn: (_, __) =>
            charts.ColorUtil.fromDartColor(Colors.red), // Use red color
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }
}

class OrdinalSales {
  final String year;
  final int sales;

  OrdinalSales(this.year, this.sales);
}
