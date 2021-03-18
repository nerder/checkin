import 'package:checkin/src/blocs/lessons/bloc.dart';
import 'package:checkin/src/ui/components/empty_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddLessonFab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LessonsBloc, LessonsState>(
      builder: (BuildContext context, LessonsState state) {
        if (state is LessonsLoaded || state is LessonsLoadedEmpty) {
          return FloatingActionButton(
              key: Key("addLessonFab"),
              onPressed: () async {
                if (state is LessonsLoaded) {
                  context.read<LessonsBloc>().add(CreateLesson(selectedDay: state.selectedDay));
                } else if (state is LessonsLoadedEmpty) {
                  context.read<LessonsBloc>().add(CreateLesson(selectedDay: state.selectedDay));
                }
              },
              child: Icon(Icons.add));
        }

        return EmptyWidget();
      },
    );
  }
}
