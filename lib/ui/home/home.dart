import 'package:flutter/material.dart';
import 'package:iat_movel/config/app_color.dart';
import 'package:iat_movel/ui/home/ui.dart';
import 'package:iat_movel/widgets/widget.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const Home(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: AppText(
            color: Colors.white,
            text: 'Instrumento de AT',
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              // Navigator.pushNamed(context, '/data_entry');
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const DataEntry()));
            },
            child: Container(
              margin: const EdgeInsets.only(top: 50, left: 10),
              height: 350,
              width: 170,
              decoration: BoxDecoration(
                color: AppColor.kPrimary,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Center(
                child: AppText(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    text: 'Introduza \nos dados'),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DataView(),
                ),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(top: 50, left: 10),
              height: 350,
              width: 170,
              decoration: BoxDecoration(
                color: AppColor.kPrimary,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Center(
                child: AppText(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    text: 'Ver \nos dados'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
