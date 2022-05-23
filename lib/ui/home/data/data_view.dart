import 'package:flutter/material.dart';
import 'package:iat_movel/widgets/widget.dart';

class DataView extends StatelessWidget {
  const DataView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppText(
          fontSize: 22,
          text: 'Ver os dados',
          color: Colors.white,
        ),
      ),
    );
  }
}
