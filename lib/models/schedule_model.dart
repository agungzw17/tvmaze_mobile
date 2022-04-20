part of 'models.dart';

class ScheduleModel extends Equatable {
  final String? time;
  final dynamic day;

  const ScheduleModel({this.time, this.day});

  factory ScheduleModel.fromJson(Map<String, dynamic> json) {
    return ScheduleModel(
      time: json["time"].toString(),
      day: json["days"].toString()
    );
  }

  @override
  List<Object?> get props => [time, day];

}