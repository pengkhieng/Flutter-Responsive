import 'package:flutter/material.dart';

class WorkflowDeleted extends StatelessWidget {
  const WorkflowDeleted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      body: Center(
        child: Text("WORKFLOW DELETED"),
      ),
    );
  }
}
