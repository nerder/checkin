import 'package:checkin/src/repositories/holidays_repository.dart';
import 'package:checkin/src/util/debug_util.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class WeekCalendar extends StatefulWidget {
  @override
  _WeekCalendarState createState() => _WeekCalendarState();
  final HolidaysRepository holidaysRepository;
  final Function(DateTime, List<dynamic>) onDaySelected;

  const WeekCalendar({
    Key key,
    @required this.holidaysRepository,
    @required this.onDaySelected,
  }) : super(key: key);
}

class _WeekCalendarState extends State<WeekCalendar> {
  CalendarController _calendarController;

  @override
  void initState() {
    super.initState();
    _calendarController = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      calendarController: _calendarController,
      locale: Localizations.localeOf(context).toLanguageTag(),
      headerVisible: false,
      initialSelectedDay: isInDebugMode ? DateTime(2020, 3, 16) : DateTime.now(), //NOTE: this is used for the e2e tests
      availableCalendarFormats: const {
        CalendarFormat.twoWeeks: '2 weeks',
        CalendarFormat.week: 'Week',
      },
      initialCalendarFormat: CalendarFormat.week,
      startingDayOfWeek: StartingDayOfWeek.monday,
      availableGestures: AvailableGestures.verticalSwipe,
      onDaySelected: widget.onDaySelected,
      holidays: widget.holidaysRepository.getHolidays(),
    );
  }

  @override
  void dispose() {
    _calendarController.dispose();
    super.dispose();
  }
}
