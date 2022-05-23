import 'package:flutter/material.dart';
import 'package:iat_movel/widgets/widget.dart';

class DataEntry extends StatefulWidget {
  const DataEntry({Key? key}) : super(key: key);

  @override
  State<DataEntry> createState() => _DataEntryState();
}

class _DataEntryState extends State<DataEntry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppText(
            color: Colors.white, fontSize: 22, text: 'Introducao de dados'),
      ),
    );
  }
}
