import 'package:xafe/app/data/models/budget_model.dart';
import 'package:xafe/app/data/services/firebase_service_interface.dart';

import '../models/expense_model.dart';

class FirebaseProvider {
  static final FirebaseProvider _instance = FirebaseProvider();

  static FirebaseProvider get instance => _instance;

  final _firebaseInstance = FirebaseInterface.instance;

  Future<void> signupWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      await _firebaseInstance.signupWithEmailAndPassword(
          email: email, password: password);
    } catch (error) {
      rethrow;
    }
  }

  Future<void> signinWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      await _firebaseInstance.signinWithEmailAndPassword(
          email: email, password: password);
    } catch (error) {
      rethrow;
    }
  }

  Future<void> addExpense(
      {required String name, required String amount}) async {
    try {
      await _firebaseInstance.addExpense(name: name, amount: amount);
    } catch (error) {
      rethrow;
    }
  }

  Future<List<Expense>> fetchExpenses() async {
    try {
      final expenses = await _firebaseInstance.fetchExpenses();
      return expenses;
    } catch (error) {
      rethrow;
    }
  }

  Future<void> addBudget({required String name, required String amount}) async {
    try {
      await _firebaseInstance.addBudget(name: name, amount: amount);
    } catch (error) {
      rethrow;
    }
  }

 Stream<Budget> fetchBudgets()  {
    try {
      final budgets = _firebaseInstance.fetchBudgets();
      return budgets;
    } catch (error) {
      rethrow;
    }
  }
}
