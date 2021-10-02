import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Perfil',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}