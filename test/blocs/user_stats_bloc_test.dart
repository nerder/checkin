import 'package:bloc_test/bloc_test.dart';
import 'package:checkin/src/blocs/stats/bloc.dart';
import 'package:checkin/src/blocs/user_stats/user_stats_bloc.dart';
import 'package:checkin/src/blocs/user_stats/user_stats_state.dart';
import 'package:checkin/src/constants.dart';
import 'package:checkin/src/models/lesson.dart';
import 'package:checkin/src/models/user.dart';
import 'package:checkin/src/models/user_history.dart';
import 'package:checkin/src/repositories/stats_repository.dart';
import 'package:checkin/src/util/date_util.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class MockStatsRepository extends Mock implements StatsRepository {}

class MockStatsBloc extends Mock implements StatsBloc {}

class MockDateUtil extends Mock implements DateUtil {}

void main() {
  group("UserStatsBloc", () {
    UserStatsBloc userStatsBloc;
    MockStatsBloc mockStatsBloc;
    MockStatsRepository mockStatsRepository;
    MockDateUtil mockDateUtil;

    User loggedUser = User(
      name: "Logged User",
      email: "test@test.com",
      imageUrl: "someImage",
    );

    List<Lesson> attendedLessons = [
      Lesson(timeStart: "19:00", timeEnd: "20:00"),
      Lesson(timeStart: "10:00", timeEnd: "11:00"),
      Lesson(timeStart: "07:15", timeEnd: "08:30"),
    ];

    int fakeTimestamp = 123456789;

    setUp(() {
      mockStatsRepository = MockStatsRepository();
      mockStatsBloc = MockStatsBloc();
      mockDateUtil = MockDateUtil();
    });

    tearDown(() {
      userStatsBloc?.close();
    });

    group("LoadStats", () {
      group("per week", () {
        setUp(() {
          whenListen(mockStatsBloc,
              Stream.fromIterable([TimespanUpdated(timespan: WEEK)]));
          when(mockDateUtil.getFirstDayOfTheWeekMilliseconds())
              .thenReturn(fakeTimestamp);
          when(mockStatsRepository.getUserStats(
                  loggedUser.email, fakeTimestamp))
              .thenAnswer((_) {
            return Stream<UserHistory>.value(UserHistory(
                email: "test@test.com", attendedLessons: attendedLessons));
          });
          userStatsBloc = UserStatsBloc(
            statsRepository: mockStatsRepository,
            userEmail: loggedUser.email,
            dateUtil: mockDateUtil,
            statsBloc: mockStatsBloc,
          );
        });

        test("should emits StatsLoaded when StatsBloc add an TimespanUpdated",
            () {
          final expectedState = [
            StatsUninitialized(),
            StatsLoaded(attendedLessons: attendedLessons, timespan: WEEK),
          ];

          expectLater(
            userStatsBloc,
            emitsInOrder(expectedState),
          );
        });
      });

      group("per month", () {
        setUp(() {
          whenListen(mockStatsBloc,
              Stream.fromIterable([TimespanUpdated(timespan: MONTH)]));
          when(mockDateUtil.getFirstDayOfTheMonthMilliseconds())
              .thenReturn(fakeTimestamp);
          when(mockStatsRepository.getUserStats(
                  loggedUser.email, fakeTimestamp))
              .thenAnswer((_) {
            return Stream<UserHistory>.value(UserHistory(
                email: "test@test.com", attendedLessons: attendedLessons));
          });
          userStatsBloc = UserStatsBloc(
            statsRepository: mockStatsRepository,
            userEmail: loggedUser.email,
            dateUtil: mockDateUtil,
            statsBloc: mockStatsBloc,
          );
        });

        test(
            "should emits StatsLoaded for week first and for month leter when the event is added",
            () {
          final expectedState = [
            StatsUninitialized(),
            StatsLoaded(attendedLessons: attendedLessons, timespan: MONTH),
          ];

          expectLater(
            userStatsBloc,
            emitsInOrder(expectedState),
          );
        });
      });

      group("per year", () {
        setUp(() {
          whenListen(mockStatsBloc,
              Stream.fromIterable([TimespanUpdated(timespan: YEAR)]));
          when(mockDateUtil.getFirstDayOfTheYearMilliseconds())
              .thenReturn(fakeTimestamp);
          when(mockStatsRepository.getUserStats(
                  loggedUser.email, fakeTimestamp))
              .thenAnswer((_) {
            return Stream<UserHistory>.value(UserHistory(
                email: "test@test.com", attendedLessons: attendedLessons));
          });
          userStatsBloc = UserStatsBloc(
            statsRepository: mockStatsRepository,
            userEmail: loggedUser.email,
            dateUtil: mockDateUtil,
            statsBloc: mockStatsBloc,
          );
        });
        test(
            "should emits StatsLoaded for week first and for year leter when the event is added",
            () {
          final expectedState = [
            StatsUninitialized(),
            StatsLoaded(attendedLessons: attendedLessons, timespan: YEAR),
          ];

          expectLater(
            userStatsBloc,
            emitsInOrder(expectedState),
          );
        });
      });
    });
  });
}
