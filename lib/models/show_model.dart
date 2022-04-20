part of 'models.dart';

class ShowModel extends Equatable {
  final String? id;
  final String? url;
  final String? name;
  final String? type;
  final String? language;
  final List<dynamic>? genres;
  final String? status;
  final String? runtime;
  final String? premiered;
  final String? ended;
  final String? officialSite;
  final ScheduleModel? scheduleModel;
  final RatingModel? ratingModel;
  final String? weight;
  final NetworkModel? networkModel;
  final WebChannelModel? webChannelModel;
  final String? dvdCountry;
  final ExternalModel? externalModel;
  final ImageModel? imageModel;
  final String? summary;
  final String? updated;
  final LinkModel? linkModel;

  ShowModel(
      {this.id,
      this.url,
      this.name,
      this.type,
      this.language,
      this.genres,
      this.status,
      this.runtime,
      this.premiered,
      this.ended,
      this.officialSite,
      this.scheduleModel,
      this.ratingModel,
      this.weight,
      this.networkModel,
      this.webChannelModel,
      this.dvdCountry,
      this.externalModel,
      this.imageModel,
      this.summary,
      this.updated,
      this.linkModel});

  factory ShowModel.fromJson(Map<String, dynamic> json) {
    return ShowModel(
        id: json["id"].toString(),
        url: json["url"].toString(),
        name: json["name"].toString(),
        type: json["type"].toString(),
        language: json["language"].toString(),
        genres: json["genres"] as List,
        status: json["status"].toString(),
        runtime: json["runtime"].toString(),
        premiered: json["premiered"].toString(),
        ended: json["ended"].toString(),
        officialSite: json["officialSite"].toString(),
        // scheduleModel: ScheduleModel.fromJson(json["schedule"]),
        ratingModel: RatingModel.fromJson(json["rating"]),
        weight: json["weight"].toString(),
        // networkModel: NetworkModel.fromJson(json["network"]),
        // webChannelModel: WebChannelModel.fromJson(json["webChannel"]),
        dvdCountry: json["dvdCountry"].toString(),
        // externalModel: ExternalModel.fromJson(json["externals"]),
        imageModel: ImageModel.fromJson(json["image"]),
        summary: json["summary"].toString(),
        updated: json["updated"].toString(),
        // linkModel: LinkModel.fromJson(json["_links"])
    );
  }

  @override
  List<Object?> get props => [
        id,
        url,
        name,
        type,
        language,
        genres,
        status,
        runtime,
        premiered,
        ended,
        officialSite,
        scheduleModel,
        ratingModel,
        weight,
        networkModel,
        webChannelModel,
        dvdCountry,
        externalModel,
        imageModel,
        summary,
        updated,
        linkModel
      ];
}
