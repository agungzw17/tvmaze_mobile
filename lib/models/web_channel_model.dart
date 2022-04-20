part of 'models.dart';

class WebChannelModel extends Equatable {
  final String? id;
  final String? name;
  final CountryModel? countryModel;
  final String? officialSite;

  const WebChannelModel(
      {this.id, this.name, this.countryModel, this.officialSite});

  factory WebChannelModel.fromJson(Map<String, dynamic> json) {
    return WebChannelModel(
        id: json["id"].toString(),
        name: json["name"].toString(),
        countryModel: CountryModel.fromJson(json["country"]),
        officialSite: json["officialSite"].toString());
  }

  @override
  List<Object?> get props => [id, name, countryModel, officialSite];
}
