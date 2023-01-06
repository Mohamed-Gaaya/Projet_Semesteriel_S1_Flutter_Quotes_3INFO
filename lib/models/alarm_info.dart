class AlarmInfo {
  int id;
  String title;
  DateTime alarmDateTime;
  bool isPending;
  int gradientColorIndex;
  String alarmDescription;

  AlarmInfo(
      {this.id,
      this.title,
      this.alarmDateTime,
      this.isPending,
      this.gradientColorIndex,
      this.alarmDescription});

  factory AlarmInfo.fromMap(Map<String, dynamic> json) => AlarmInfo(
        id: json["id"],
        title: json["title"],
        alarmDateTime: DateTime.parse(json["alarmDateTime"]),
        isPending: json["isPending"],
        gradientColorIndex: json["gradientColorIndex"],
        alarmDescription: json["alarmDescription"],
      );
  Map<String, dynamic> toMap() => {
        "id": id,
        "title": title,
        "alarmDateTime": alarmDateTime.toIso8601String(),
        "isPending": isPending,
        "gradientColorIndex": gradientColorIndex,
        "alarmDescription" : alarmDescription,
      };
}
