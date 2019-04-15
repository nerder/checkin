import 'package:checkin/src/blocs/auth/auth_bloc.dart';
import 'package:checkin/src/blocs/auth/bloc.dart';
import 'package:checkin/src/blocs/class/bloc.dart';
import 'package:checkin/src/resources/class_repository.dart';
import 'package:checkin/src/ui/attendees_list.dart';
import 'package:checkin/src/ui/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegistryPage extends StatefulWidget {
  RegistryPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _RegistryState createState() {
    return _RegistryState();
  }
}

class _RegistryState extends State<RegistryPage> {
  final ClassRepository _classRepository = ClassRepository();
  ClassBloc _classBloc;
  AuthBloc _authBloc;

  @override
  void initState() {
    super.initState();
    _authBloc = BlocProvider.of<AuthBloc>(context);
    _classBloc = ClassBloc(classRepository: _classRepository);
    _classBloc.dispatch(Fetch());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registry"),
      ),
      body: BlocBuilder(
        bloc: _classBloc,
        builder: (BuildContext context, ClassState state) {
          if (state is ClassUninitialized) {
            return LoadingIndicator();
          }
          if (state is ClassLoaded) {
            if (state.attendees.isEmpty) {
              return Center(
                child: Text('no attendees'),
              );
            }
            return Center(
                child: Container(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                  AttendeesList(attendeeList: state.attendees),
                  RaisedButton(
                    child: Text('Accept all'),
                    onPressed: () {
                      _classBloc.dispatch(Clear());
                    },
                  ),
                  RaisedButton(
                    child: Text('logout'),
                    onPressed: () {
                      _authBloc.dispatch(LogOut());
                    },
                  )
                ])));
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    _classBloc.dispose();
    super.dispose();
  }
}
