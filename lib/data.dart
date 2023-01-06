import 'package:clock_app/constants/theme_data.dart';
import 'models/alarm_info.dart';




List<AlarmInfo> alarms = [
  AlarmInfo(
      alarmDateTime: DateTime.now().add(Duration(hours: 1)),
      title: 'Quote of the day',
      gradientColorIndex: 0 ),
  AlarmInfo(
      alarmDateTime: DateTime.now().add(Duration(hours: 2)),
      title: 'Sport',
      gradientColorIndex: 1),
];
