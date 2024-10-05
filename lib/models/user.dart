class User {
  String abhaNumber;
  String abhaAddress;

  User({required this.abhaNumber, required this.abhaAddress});

  Map<String, dynamic> toJson() {
    return {
      'abhaNumber': abhaNumber,
      'abhaAddress': abhaAddress,
    };
  }
}
