import 'package:checkin/src/blocs/edit_lesson/bloc.dart';
import 'package:checkin/src/blocs/registry/bloc.dart';
import 'package:checkin/src/localization/localization.dart';
import 'package:checkin/src/models/lesson.dart';
import 'package:checkin/src/models/master.dart';
import 'package:checkin/src/models/user.dart';
import 'package:checkin/src/repositories/image_repository.dart';
import 'package:checkin/src/repositories/lesson_repository.dart';
import 'package:checkin/src/repositories/storage_repository.dart';
import 'package:checkin/src/repositories/user_repository.dart';
import 'package:checkin/src/ui/components/editable_image.dart';
import 'package:checkin/src/ui/components/loading_indicator.dart';
import 'package:checkin/src/ui/components/rounded_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LessonInfos extends StatelessWidget {
  static const String and = 'and';
  static const String startingAt = 'Starting at %s';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegistryBloc, RegistryState>(
      buildWhen: (RegistryState previous, RegistryState current) => !(current is RegistryLoading),
      builder: (BuildContext context, RegistryState state) {
        return state.maybeMap(
          registryLoaded: (RegistryLoaded registryLoaded) {
            var currentLesson = registryLoaded.currentLesson;
            var currentUser = registryLoaded.currentUser;

            return Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: currentUser.isOwner
                      ? EditableLessonImage(
                          currentUser: currentUser,
                          currentLesson: currentLesson,
                        )
                      : RoundedImage(
                          url: currentLesson.imageUrl,
                          isGrayscale: currentLesson.isClosed,
                        ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      currentLesson.name,
                      style: Theme.of(context).textTheme.headline5.apply(
                          color: currentLesson.isClosed ? Theme.of(context).disabledColor : null),
                    ),
                    Text(
                        _formattedLessonInformation(
                          timeStart: currentLesson.timeStart,
                          timeEnd: currentLesson.timeEnd,
                        ),
                        style: Theme.of(context).textTheme.headline2.apply(
                            fontSizeDelta: 4,
                            color:
                                currentLesson.isClosed ? Theme.of(context).disabledColor : null)),
                    if (currentLesson.masters.isNotEmpty)
                      Column(
                        children: [
                          Text(
                            currentLesson.masters.first.name,
                            style: Theme.of(context).textTheme.headline3.apply(
                                color: currentLesson.isClosed
                                    ? Theme.of(context).disabledColor
                                    : null),
                          ),
                          if (currentLesson.masters.length > 1)
                            Text("${and.i18n} ${_getOtherMasterNames(currentLesson.masters)}",
                                style: Theme.of(context).textTheme.headline3.apply(
                                    color: currentLesson.isClosed
                                        ? Theme.of(context).disabledColor
                                        : null)),
                        ],
                      ),
                  ],
                )
              ],
            );
          },
          orElse: () => LoadingIndicator(),
        );
      },
    );
  }

  String _formattedLessonInformation({
    String timeStart,
    String timeEnd,
  }) {
    if (timeEnd.isEmpty) {
      return startingAt.i18n.fill([timeStart]);
    } else {
      return "${timeStart} - ${timeEnd}";
    }
  }

  String _getOtherMasterNames(List<Master> masters) =>
      masters.skip(1).map((master) => master.name).join(", ");
}

class EditableLessonImage extends StatelessWidget {
  const EditableLessonImage({
    Key key,
    @required this.currentUser,
    @required this.currentLesson,
  }) : super(key: key);

  final User currentUser;
  final Lesson currentLesson;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<EditLessonBloc>(
      create: (context) => EditLessonBloc(
        gymId: currentUser.selectedGymId,
        lesson: currentLesson,
        lessonRepository: context.read<LessonRepository>(),
        imageRepository: context.read<ImageRepository>(),
        storageRepository: context.read<StorageRepository>(),
        userRepository: context.read<UserRepository>(),
      ),
      child: Builder(
          builder: (context) => EditableImage(
                imageUrl: currentLesson.imageUrl,
                isGrayscale: currentLesson.isClosed,
                onEdit: () {
                  context.read<EditLessonBloc>().add(UpdateImageUrl());
                },
              )),
    );
  }
}
