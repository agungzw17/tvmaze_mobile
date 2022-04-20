part of 'models.dart';

class NetworkModel extends Equatable {
  final String? id;
  final String? name;
  final CountryModel? countryModel;
  final String? officialSite;

  const NetworkModel({this.id, this.name, this.countryModel, this.officialSite});

  factory NetworkModel.fromJson(Map<String, dynamic> json) {
    return NetworkModel(
      id: json["id"].toString(),
      name: json["name"].toString(),
      countryModel: CountryModel.fromJson(json["country"]),
      officialSite: json["officialSite"].toString()
    );
  }

  @override
  List<Object?> get props => [id, name, countryModel, officialSite];

}