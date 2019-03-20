import 'package:checkin/src/blocs/team/bloc.dart';
import 'package:checkin/src/models/team.dart';
import 'package:checkin/src/resources/team_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TeamsPage extends StatefulWidget {
  TeamsPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _TeamListState createState() {
    return _TeamListState();
  }
}

class _TeamListState extends State<TeamsPage> {
  List<String> teams = ['Test team'];
  final TeamRepository _teamRepository = TeamRepository();
  TeamBloc _teamBloc;

  @override
  void initState() {
    super.initState();
    _teamBloc = TeamBloc(teamRepository: _teamRepository);
    _teamBloc.dispatch(Fetch());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: _teamBloc,
      builder: (BuildContext context, TeamState state) {
        if (state is TeamUninitialized) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is TeamError) {
          return Center(
            child: Text('failed to fetch teams'),
          );
        }
        if (state is TeamLoaded) {
          if (state.teams.isEmpty) {
            return Center(
              child: Text('no teams'),
            );
          }
          return Scaffold(
            appBar: AppBar(
              title: Text("Teams"),
            ),
            body: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return index >= state.teams.length
//                  @TODO: WTF is this for?
                    ? null
                    : TeamWidget(team: state.teams[index]);
              },
              itemCount: state.hasReachedMax
                  ? state.teams.length
                  : state.teams.length + 1,
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: _showDialogForm,
              child: Icon(Icons.add),
            ),
          );
        }
      },
    );
  }

  @override
  void dispose() {
    _teamBloc.dispose();
    super.dispose();
  }

  _showDialogForm() async {
    final textController = TextEditingController();
    final _teamName = GlobalKey<FormState>();

    final result = await showDialog<String>(
        context: context,
        child: AlertDialog(
          contentPadding: const EdgeInsets.all(16.0),
          content: SingleChildScrollView(
            child: Form(
                key: _teamName,
                child: TextFormField(
                  controller: textController,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter Team name';
                    }
                  },
                  autofocus: true,
                  decoration:
                  InputDecoration(labelText: 'Please enter Team name'),
                )),
          ),
          actions: <Widget>[
            FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Cancel')),
            FlatButton(
                onPressed: () {
                  if (_teamName.currentState.validate()) {
                    var teamName = textController.text;

                    _teamRepository.addTeam(teamName);
                    Navigator.pop(context, teamName);
                  }
                },
                child: const Text('Save')),
          ],
        ));

    if (result != null) {
      _teamBloc.dispatch(Fetch());
      return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            // Retrieve the text the user has typed in using our
            // TextEditingController
            content: Text.rich(
              TextSpan(
                text: 'Team ', // default text style
                children: <TextSpan>[
                  TextSpan(
                      text: '$result',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: ' created')
                ],
              ),
            ),
          );
        },
      );
    }
  }
}

class TeamWidget extends StatelessWidget {
  final Team team;

  const TeamWidget({Key key, @required this.team}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.accessible_forward),
      title: Text(team.name),
    );
  }
}

class CreateTeam extends StatefulWidget {
  CreateTeam({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CreateTeamFormState createState() {
    return _CreateTeamFormState();
  }
}

class _CreateTeamFormState extends State<CreateTeam> {
  // Create a global key that will uniquely identify the Form widget and allow
  // us to validate the form
  //
  // Note: This is a GlobalKey<FormState>, not a GlobalKey<MyCustomFormState>!
  final _teamName = GlobalKey<FormState>();
  final textController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _teamName we created above
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Team"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _teamName,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                controller: textController,
                autofocus: true,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter Team name';
                  }
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: RaisedButton(
                  onPressed: () {
                    // Validate will return true if the form is valid, or false if
                    // the form is invalid.
                    if (_teamName.currentState.validate()) {
                      // If the form is valid, we want to show a Snackbar
                      Navigator.pop(context, textController.text);
                    }
                  },
                  child: Text('Save'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}