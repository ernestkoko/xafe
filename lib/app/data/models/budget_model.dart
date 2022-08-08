class Budget {
  final String budgetName;
  final String budgetAmount;

  Budget({required this.budgetName, required this.budgetAmount});

  Budget.fromMap(Map<String, dynamic> map)
      : budgetAmount = map["budget_amount"] ?? "",
        budgetName = map["budget_name"] ?? "";

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    map["budget_name"] = budgetName;
    map["budget_amount"] = budgetAmount;

    return map;
  }
}
