import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserTypesMaisFacil {
  final String id;
  final String name;
  final String userName;
  final List<UserTypesMaisFacil> userTypes;
  UserTypesMaisFacil({
    required this.id,
    required this.name,
    required this.userName,
    required this.userTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'username': userName,
      'user_ types': userTypes.map((x) => x.toMap()).toList(),
    };
  }

  factory UserTypesMaisFacil.fromMap(Map<String, dynamic> map) {
    return UserTypesMaisFacil(
      id: map['id'] as String,
      name: map['name'] as String,
      userName: map['username'] as String,
      userTypes: List<UserTypesMaisFacil>.from(
        (map['user_types'] as List<int>).map<UserTypesMaisFacil>(
          (x) => UserTypesMaisFacil.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserTypesMaisFacil.fromJson(String source) =>
      UserTypesMaisFacil.fromMap(json.decode(source) as Map<String, dynamic>);
}
