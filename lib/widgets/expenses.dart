import 'package:expense_tracker/model/expense.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/%20expenses_list/expenses_list.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: 'Flutter Course',
        amount: 993,
        date: DateTime.now(),
        category: Category.work,),
    Expense(
        title: 'cinema',
        amount: 693,
        date: DateTime.now(),
        category: Category.leisure,),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("chart"),
            Expanded(child: ExpensesList(expenses: _registeredExpenses),),
          ],
        ),
      ),
    );
  }
}
