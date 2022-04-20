part of 'models.dart';

class RatingModel extends Equatable {
  final String? average;

  const RatingModel({this.average});

  factory RatingModel.fromJson(Map<String, dynamic> json) {
    return RatingModel(average: json["average"].toString());
  }

  @override
  List<Object?> get props => [average];
}
