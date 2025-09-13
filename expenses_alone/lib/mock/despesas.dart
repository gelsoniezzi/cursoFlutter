import 'package:expenses_alone/models/transaction.dart';

final mock_despesas = <Transaction>[
  Transaction(
    id: "e1",
    title: "Tenis",
    value: 999.00,
    date: DateTime.now(),
  ),
  Transaction(
    id: "e2",
    title: "Agua",
    value: 49.00,
    date: DateTime.now().subtract(const Duration(days: 2)),
  ),
  Transaction(
    id: "e3",
    title: "Cuecas",
    value: 198.00,
    date: DateTime.now().subtract(const Duration(days: 3)),
  ),
  Transaction(
    id: "e4",
    title: "Camisa",
    value: 60.00,
    date: DateTime.now().subtract(const Duration(days: 21)),
  ),
  Transaction(
    id: "e5",
    title: "Perfume",
    value: 78.00,
    date: DateTime.now(),
  ),
];
