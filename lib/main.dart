import 'package:flutter/material.dart';

import 'package:flutter_app/pages/battery.dart';
import 'package:flutter_app/pages/brakes.dart';
import 'package:flutter_app/pages/customer_specifications.dart';
import 'package:flutter_app/pages/dashboard.dart';
import 'package:flutter_app/pages/engine.dart';
import 'package:flutter_app/pages/exterior.dart';
import 'package:flutter_app/pages/final_save.dart';
import 'package:flutter_app/pages/header.dart';
import 'package:flutter_app/pages/history.dart';
import 'package:flutter_app/pages/inspection_view.dart';
import 'package:flutter_app/pages/logi_n.dart';
import 'package:flutter_app/pages/summary_view.dart';
import 'package:flutter_app/pages/tires.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: Scaffold(
        // body: Battery(),
        // body: Brakes(),
        //body: CustomerSpecifications(),
        // body: Dashboard(),
        // body: Engine(),
        // body: Exterior(),
        // body: FinalSave(),
        // body: Header(),
        // body: History(),
        // body: InspectionView(),
        body: LogiN(),
        // body: SummaryView(),
        //body: Tires(),
      ),
    );
  }
}
