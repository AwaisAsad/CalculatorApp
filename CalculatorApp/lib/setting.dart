import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return gpa();
  }
}

/// This is the stateless widget that the main application instantiates.
class gpa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SGPA'),
      ),
      body: Center(child: Text('Calculate your SCGPA here!')),
    );
  }
} // TODO Implement this library.
