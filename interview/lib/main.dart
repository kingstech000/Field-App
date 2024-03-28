import 'package:flutter/material.dart';
import 'package:interview/Agent_approval_screens/awaiting_approval.dart';
// import 'package:interview/Agent_approval_screens/dashboard.dart';
// import 'package:interview/Agent_approval_screens/status.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AwaitingApprovalPage(),
    );
  }
}
