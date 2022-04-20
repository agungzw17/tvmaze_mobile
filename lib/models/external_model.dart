part of 'models.dart';

class ExternalModel extends Equatable {
  final String? tvrage;
  final String? thetvdb;
  final String? imdb;

  const ExternalModel({this.tvrage, this.thetvdb, this.imdb});

  factory ExternalModel.fromJson(Map<String, dynamic> json) {
    return ExternalModel(
      tvrage: json["tvrage"].toString(),
      thetvdb: json["thetvdb"].toString(),
      imdb: json["imdb"].toString(),
    );
  }

  @override
  List<Object?> get props => [tvrage, thetvdb, imdb];
}
