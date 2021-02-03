import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:checkin/src/blocs/user/bloc.dart';
import 'package:checkin/src/repositories/user_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';

import 'bloc.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final UserBloc userBloc;
  final UserRepository userRepository;
  String nonCurrentUserEmail;
  StreamSubscription userSub;

  ProfileBloc({
    @required this.userBloc,
    @required this.userRepository,
    this.nonCurrentUserEmail,
  }) : super(InitialProfileState()) {
    _onUserStateChanged(userBloc.state);
    this.userBloc.listen(_onUserStateChanged);
  }

  void _onUserStateChanged(userState) {
    if (userState is UserSuccess) {
      if (nonCurrentUserEmail == null || nonCurrentUserEmail == userState.currentUser.email) {
        add(ProfileUpdated(user: userState.currentUser, isCurrentUser: true));
      } else {
        userSub?.cancel();
        userSub = this.userRepository.getUserByEmail(this.nonCurrentUserEmail).listen((user) {
          add(ProfileUpdated(user: user, isCurrentUser: false));
        });

        userSub.onError((error) => debugPrint(
              "Error loading profile with mail [$nonCurrentUserEmail]: $error",
            ));
      }
    }
  }

  @override
  Stream<ProfileState> mapEventToState(ProfileEvent event) async* {
    if (event is ProfileUpdated) {
      yield ProfileLoaded(profileUser: event.user, isCurrentUser: event.isCurrentUser);
    }
  }

  @override
  Future<void> close() {
    userSub?.cancel();
    return super.close();
  }
}
