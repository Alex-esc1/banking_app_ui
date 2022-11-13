import 'package:banking_app/utilities/themeStyles.dart';
import 'package:banking_app/widget/transactionCard.dart';
import 'package:flutter/material.dart';

class RecentTransactions extends StatefulWidget {
  const RecentTransactions({super.key});

  @override
  State<RecentTransactions> createState() => _RecentTransactionsState();
}

class _RecentTransactionsState extends State<RecentTransactions> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
              left: 15.0, right: 15.0, bottom: 16.0, top: 32.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recent Transactions',
                style: ThemeStyles.primaryTitle,
              ),
              Text(
                'See All',
                style: ThemeStyles.seeAll,
              )
            ],
          ),
        ),
        Flexible(
          flex: 1,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: [
              TransactionCard(
                color: Colors.black,
                letter: 'F',
                title: 'Fintory Gmbh',
                subTitle: 'Finance Landing Page',
                price: '- 5.720,30 €',
              ),
              TransactionCard(
                color: Colors.yellow,
                letter: 'M',
                title: 'McDonald’s',
                subTitle: 'McDinner',
                price: '- 20,50 €',
              ),
              TransactionCard(
                color: Colors.purple,
                letter: 'W',
                title: 'Wildberries',
                subTitle: 'Shopping',
                price: '- 80,00 €',
              ),
              TransactionCard(
                color: Colors.grey,
                letter: 'A',
                title: 'Apple',
                subTitle: 'Salary',
                price: '8000,00 €',
              ),
            ],
          ),
        )
      ],
    ));
  }
}
