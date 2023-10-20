import 'package:firebase_project/components/header_part.dart';
import 'package:flutter/material.dart';

class ResetHeaderPart extends StatelessWidget {
  const ResetHeaderPart({super.key});

  @override
  Widget build(BuildContext context) {
    return const HeaderPart(
        title: 'Create new password',
        subTitle: 'Your new password must be unique from those previously used.');
  }
}
