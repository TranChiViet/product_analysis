import 'package:flutter/material.dart';
import '/widgets/app_drawer.dart';
import '/widgets/app_more.dart';
import '/widgets/introduce_development_center.dart';


class ProductAnalysisScreen extends StatelessWidget {
  const ProductAnalysisScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        actions: [
          AppMore(),
        ],
      ),
      drawer: AppDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IntroduceDevelopmentCenter(),
        ],
      ),
    );
  }
}
