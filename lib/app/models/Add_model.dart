class AddModel {
  final String amont;
  final String des;
  final String date;
  final String catogray;
  final String account;

  AddModel({
    required this.amont,
    required this.des,
    required this.date,
    required this.catogray,
    required this.account,
  });

  // Convert Map to Object
  factory AddModel.fromMap(Map<String, dynamic> map) {
    return AddModel(
      amont: map['amont'] ?? '0',
      des: map['des'] ?? '',
      date: map['date'] ?? '',
      catogray: map['catogray'] ?? '',
      account: map['account'] ?? 'Cash',
    );
  }

  // Convert Object to Map
  Map<String, dynamic> toMap() {
    return {
      'amont': amont,
      'des': des,
      'date': date,
      'catogray': catogray,
      'account': account,
    };
  }
}