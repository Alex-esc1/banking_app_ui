import 'package:banking_app/components/appbar.dart';
import 'package:banking_app/components/cards.dart';
import 'package:banking_app/components/recentTransactions.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Appbar(),
        CardsList(),
        RecentTransactions(),
      ]),
    );
  }
}
