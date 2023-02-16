import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  const TransactionList(this.transactions, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemBuilder: (ctx,index){
            return Card(
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 15),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.purple, width: 2)),
                    child: Text(
                      style: const TextStyle(
                          color: Colors.purple,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      '\$${transactions[index].amount.toStringAsFixed(2)}',
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                          transactions[index].title),
                      Text(
                          style: const TextStyle(color: Colors.grey),
                          DateFormat.yMMMd().format(transactions[index].date)),
                    ],
                  )
                ],
              ),
            );
        },
        itemCount:transactions.length ,
       
      ),
    );
  }
}
