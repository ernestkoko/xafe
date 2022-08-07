import 'package:xafe/app/data/models/budget_model.dart';
import 'package:xafe/app/data/services/firebase_service.dart';

import '../models/expense_model.dart';

abstract class FirebaseInterface {
  static final FirebaseInterface _instance = FirebaseService();

  static FirebaseInterface get instance => _instance;

  Future<void> signupWithEmailAndPassword(
      {required String email, required String password}) async {
    throw UnimplementedError("signupWithEmailAndPassword not implemented");
  }

  Future<void> signinWithEmailAndPassword(
      {required String email, required String password}) async {
    throw UnimplementedError("signinWithEmailAndPassword not implemented");
  }

  Future<void> addExpense(
      {required String name, required String amount}) async {
    throw UnimplementedError("addExpense not implemented");
  }

  Future<List<Expense>> fetchExpenses() async {
    throw UnimplementedError("fetchExpenses not implemented");
  }


  Future<void> addBudget(
      {required String name, required String amount}) async {
    throw UnimplementedError("addExpense not implemented");
  }
  Stream<Budget> fetchBudgets() async* {
    throw UnimplementedError("fetchExpenses not implemented");
  }
}
