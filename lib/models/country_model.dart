part of 'models.dart';

class CountryModel extends Equatable {
  final String? name;
  final String? code;
  final String? timezone;

  const CountryModel({this.name, this.code, this.timezone});

  factory CountryModel.fromJson(Map<String, dynamic> json) {
    return CountryModel(
      name: json["name"].toString(),
      code: json["code"].toString(),
      timezone: json["timezone"].toString()
    );
  }

  @override
  List<Object?> get props => [name, code, timezone];

}