import 'package:banking_app/utilities/themeStyles.dart';
import 'package:flutter/material.dart';

class TransactionsPage extends StatefulWidget {
  const TransactionsPage(
      {super.key,
      required Color color,
      required String title,
      required String subTitle,
      required String price,
      required String letter});

  @override
  State<TransactionsPage> createState() => _TransactionsPageState();
}

class _TransactionsPageState extends State<TransactionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Sent'),
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        child: Stack(
          children: [
            ListView(
              shrinkWrap: true,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 16.0, top: 32.0, bottom: 8.0),
                  child: Row(
                    children: [
                      Text('Outgoing Transaction',
                          style: ThemeStyles.primaryTitle),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
