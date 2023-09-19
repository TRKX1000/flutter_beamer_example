class AuthorResponse {
  static String responseFieldName = "name";
  static String responseFieldBirthYear = "birth_year";
  static String responseFieldDeathYear = "death_year";

  String name;
  int? birthYear;
  int? deathYear;

  AuthorResponse({
    required this.name,
    required this.birthYear,
    required this.deathYear,
  });

  factory AuthorResponse.fromJson(Map<dynamic, dynamic> json) {
    return AuthorResponse(
      name: json[responseFieldName],
      birthYear: json[responseFieldBirthYear],
      deathYear: json[responseFieldDeathYear],
    );
  }
}
