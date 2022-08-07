class Expense {
  final String name;
  final String amount;

  Expense({required this.name, required this.amount});

  Expense.fromMap(Map map)
      : name = map["expense_name"] ?? "",
        amount = map["expense_amount"] ?? "";

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};

    map["expense_name"] = name;
    map["expense_amount"] = amount;

    return map;
  }
}
