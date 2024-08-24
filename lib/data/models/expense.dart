class Expense {
  final int? id;
  final double? amount;
  final String? currency;
  final String? note;
  final String? createdDate;
  final ExpenseType? incomeType;

  Expense({
    this.id, 
    this.amount,
    this.currency,
    this.note,
    this.createdDate,
    this.incomeType
  });
  
  factory Expense.fromMap(Map<String, dynamic> map) => Expense(
    id: map['id'] ?? -1,
    amount: map['amount'] ?? 0.0,
    currency: map['currency'] ?? '',
    note: map['note'] ?? '',
    createdDate: map['createdDate'] ?? '',
    incomeType: ExpenseType.fromMap(map['incomeType'])
    );
}

class ExpenseType {
  final int? id;
  final String? name;

  ExpenseType({required this.id, required this.name});
  
  factory ExpenseType.fromMap(Map<String, dynamic> map) => ExpenseType(id: map['id'] ?? -1, name: map['name'] ?? '');
}