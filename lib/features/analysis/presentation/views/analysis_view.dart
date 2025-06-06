import 'package:flutter/material.dart';
import 'package:liver_diagnosis/features/analysis/presentation/views/widgets/analysis_view_body.dart';

class AnalysisView extends StatelessWidget {
  const AnalysisView({super.key});
  static const routeName = 'analysis';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: AnalysisViewBody(),
      ),
    );
  }
}
