part of 'models.dart';

class LinkModel extends Equatable {
  final dynamic self;
  final dynamic previousepisode;

  const LinkModel({this.self, this.previousepisode});

  factory LinkModel.fromJson(Map<String, dynamic> json) {
    return LinkModel(
        self: json["self"].toString(),
        previousepisode: json["previousepisode"].toString());
  }

  @override
  List<Object?> get props => [self, previousepisode];
}
