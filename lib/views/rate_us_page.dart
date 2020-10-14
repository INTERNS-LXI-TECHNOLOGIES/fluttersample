import 'package:customerapp/auth/auth_bloc.dart';
import 'package:customerapp/auth/auth_state.dart';
import 'package:customerapp/model/config.dart';
import 'package:customerapp/model/util.dart';
import 'package:customerapp/widgets/main_drawer.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class RateUsPage extends StatefulWidget {
  @override
  RateUsPageState createState() {
    return RateUsPageState();
  }
}

class RateUsPageState extends State<RateUsPage> {
  var data;
  bool autoValidate = true;
  bool readOnly = false;
  bool showSegmentedControl = true;
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();

  final ValueChanged _onChanged = (val) => print(val);
  var genderOptions = ['Male', 'Female', 'Other'];


  @override
  Widget build(BuildContext context) {
    final AuthBloc _authBloc = BlocProvider.of<AuthBloc>(context);
    return Scaffold(

      appBar: AppBar(
        title: Text('Rate Us'),
      ),

      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is ErrorAuthState) {
            Util.showSnackBar('Failed', 'Error: '+ (Config.DEBUG_ENABLED_SNACKBAR ? state.error : ''));
          }

        },
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            return _buildMainWidget(context);
          },
        ),
      ),
    );
  }

  Widget _buildMainWidget(BuildContext context) {
    final AuthBloc _authBloc = BlocProvider.of<AuthBloc>(context);
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          FormBuilder(
            // context,
            key: _fbKey,
            // autovalidate: true,
            initialValue: {
              'movie_rating': 3,
            },
            readOnly: false,
            child: Column(
              children: <Widget>[
                FormBuilderSegmentedControl(
                  decoration: InputDecoration(labelText: 'Customer Service'),
                  attribute: 'EsquireRating',
                  textStyle: TextStyle(fontWeight: FontWeight.bold),
                  options: List.generate(10, (i) => i + 1)
                      .map((number) => FormBuilderFieldOption(
                            value: number,
                            child: Text(
                              '$number',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ))
                      .toList(),
                  onChanged: _onChanged,
                ),
                SizedBox(height: 15),
                FormBuilderSegmentedControl(
                  decoration: InputDecoration(labelText: 'Technical Know How'),
                  attribute: 'EsquireRating',
                  textStyle: TextStyle(fontWeight: FontWeight.bold),
                  options: List.generate(10, (i) => i + 1)
                      .map((number) => FormBuilderFieldOption(
                            value: number,
                            child: Text(
                              '$number',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ))
                      .toList(),
                  onChanged: _onChanged,
                ),
                SizedBox(height: 15),
                FormBuilderSegmentedControl(
                  decoration: InputDecoration(labelText: 'Employee Attitude'),
                  attribute: 'EsquireRating',
                  textStyle: TextStyle(fontWeight: FontWeight.bold),
                  options: List.generate(10, (i) => i + 1)
                      .map((number) => FormBuilderFieldOption(
                            value: number,
                            child: Text(
                              '$number',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ))
                      .toList(),
                  onChanged: _onChanged,
                ),
                SizedBox(height: 15),
                FormBuilderSegmentedControl(
                  decoration: InputDecoration(labelText: 'Punctuality'),
                  attribute: 'EsquireRating',
                  textStyle: TextStyle(fontWeight: FontWeight.bold),
                  options: List.generate(10, (i) => i + 1)
                      .map((number) => FormBuilderFieldOption(
                            value: number,
                            child: Text(
                              '$number',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ))
                      .toList(),
                  onChanged: _onChanged,
                ),
                SizedBox(height: 15),
                FormBuilderSwitch(
                  label: Text('Satisfied with the Technical Support'),
                  attribute: 'accept_terms_switch',
                  initialValue: true,
                  onChanged: _onChanged,
                ),
                SizedBox(height: 15),
                FormBuilderTouchSpin(
                  decoration: const InputDecoration(labelText: 'Overall Score'),
                  attribute: 'stepper',
                  initialValue: 10,
                  step: 5,
                  iconSize: 48.0,
                  addIcon: const Icon(Icons.arrow_right),
                  subtractIcon: const Icon(Icons.arrow_left),
                ),
                SizedBox(height: 15),
                FormBuilderRate(
                  decoration: const InputDecoration(labelText: 'Rate our Firm'),
                  attribute: 'rate',
                  iconSize: 32.0,
                  initialValue: 1.0,
                  max: 5.0,
                  onChanged: _onChanged,
                  // readOnly: true,
                  filledColor: Colors.red,
                  emptyColor: Colors.pink[100],
                  isHalfAllowed: true,
                ),
                SizedBox(height: 15),
                FormBuilderCheckboxList(
                  decoration:
                      InputDecoration(labelText: 'Where should we improve'),
                  attribute: 'languages',
                  initialValue: ['Dart'],
                  leadingInput: true,
                  options: [
                    FormBuilderFieldOption(value: 'Timeliness'),
                    FormBuilderFieldOption(value: 'Communication'),
                    FormBuilderFieldOption(value: 'Rates'),
                    FormBuilderFieldOption(value: 'Technical Expertise'),
                    FormBuilderFieldOption(value: 'Customer Friendliness'),
                  ],
                  onChanged: _onChanged,
                ),
                SizedBox(height: 15),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  color: Theme.of(context).accentColor,
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    if (_fbKey.currentState.saveAndValidate()) {
                      print(_fbKey
                          .currentState.value['contact_person'].runtimeType);
                      print(_fbKey.currentState.value);
                    } else {
                      print(_fbKey
                          .currentState.value['contact_person'].runtimeType);
                      print(_fbKey.currentState.value);
                      print('validation failed');
                    }
                  },
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: MaterialButton(
                  color: Theme.of(context).accentColor,
                  child: Text(
                    'Reset',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    _fbKey.currentState.reset();
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
