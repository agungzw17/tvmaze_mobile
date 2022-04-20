part of 'models.dart';

class ImageModel extends Equatable {
  final String? medium;
  final String? original;

  const ImageModel({this.medium, this.original});

  factory ImageModel.fromJson(Map<String, dynamic> json) {
    return ImageModel(
      medium: json["medium"].toString(),
      original: json["original"].toString()
    );
  }

  @override
  List<Object?> get props => [medium, original];
}