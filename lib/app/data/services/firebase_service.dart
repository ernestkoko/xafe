import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:xafe/app/data/models/budget_model.dart';
import 'package:xafe/app/data/models/expense_model.dart';
import 'package:xafe/app/data/services/firebase_service_interface.dart';

class FirebaseService extends FirebaseInterface {
  final auth = FirebaseAuth.instance;
  final firestore = FirebaseFirestore.instance;
  final expenseReference =
      FirebaseFirestore.instance.collection("xafe/app/expenses");
  final budgetReference =
      FirebaseFirestore.instance.collection("xafe/app/budgets");

  @override
  Future<void> signupWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (error) {
      rethrow;
    }
  }

  @override
  Future<void> signinWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final user = await auth.signInWithEmailAndPassword(
          email: email, password: password);
    } catch (error) {
      rethrow;
    }
  }

  @override
  Future<void> addExpense(
      {required String name, required String amount}) async {
    final expense = Expense(name: name, amount: amount).toMap();

    try {
      await expenseReference.add(expense);
    } catch (error) {
      rethrow;
    }
  }

  @override
  Future<List<Expense>> fetchExpenses() async {
    final expenses = <Expense>[];
    try {
      final result = await expenseReference.get();
      for (var element in result.docs) {
        expenses.add(Expense.fromMap(element.data()));
      }

      return expenses;
    } catch (error) {
      rethrow;
    }
  }

  @override
  Future<void> addBudget({required String name, required String amount}) async {
    final budget = Budget(budgetName: name, budgetAmount: amount).toMap();

    try {
      await budgetReference.add(budget);
    } catch (error) {
      rethrow;
    }
  }

  @override
  Stream<Budget> fetchBudgets() {
    final budgets = <Budget>[];

    try {
      //final result = await budgetReference.get();
      final snapshot = budgetReference.snapshots();
      // snapshot.listen((event) { })

      final result = snapshot.expand<Budget>((element) {
        List<Budget>? budgets = [];
        for (final item in element.docs) {
          //check if it exists
          if (item.exists) {
            budgets.add(Budget.fromMap(item.data()));
          }
        }
        return budgets;
      });

      // for (final element in result.docs) {
      //   budgets.add(Budget.fromMap(element.data()));
      // }

      return result;
    } catch (error) {
      rethrow;
    }
  }
}
