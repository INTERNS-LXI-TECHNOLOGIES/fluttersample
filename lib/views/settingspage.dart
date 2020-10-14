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

import '../model/data.dart';

class SettingsPage extends StatefulWidget {
  @override
  SettingsPageState createState() {
    return SettingsPageState();
  }
}

class SettingsPageState extends State<SettingsPage> {
  var data;
  bool autoValidate = true;
  bool readOnly = false;
  bool showSegmentedControl = true;
  final GlobalKey<FormBuilderState> _fbKeySettings = GlobalKey<FormBuilderState>();

  final ValueChanged _onChanged = (val) => print(val);
  var genderOptions = ['Male', 'Female', 'Other'];


  @override
  Widget build(BuildContext context) {
    final AuthBloc _authBloc = BlocProvider.of<AuthBloc>(context);
    return Scaffold(

      appBar: AppBar(
        title: Text('Settings'),
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

  Widget _buildMainWidget(context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          FormBuilder(
            // context,
            key: _fbKeySettings,
            // autovalidate: true,
            initialValue: {
              'movie_rating': 3,
            },
            readOnly: false,
            child: Column(
              children: <Widget>[
                FormBuilderFilterChip(
                  attribute: 'filter_chip',
                  decoration: const InputDecoration(
                    labelText: 'Interested Products',
                  ),
                  options: [
                    FormBuilderFieldOption(value: 'TV', child: Text('TV')),
                    FormBuilderFieldOption(
                        value: 'Laptop', child: Text('Laptop')),
                    FormBuilderFieldOption(
                        value: 'Desktop', child: Text('Desktop')),
                    FormBuilderFieldOption(
                        value: 'Camera', child: Text('Camera')),
                    FormBuilderFieldOption(
                        value: 'Game Console', child: Text('Game Console')),
                  ],
                ),
                SizedBox(height: 15),
                FormBuilderChoiceChip(
                  attribute: 'choice_chip',
                  decoration: const InputDecoration(
                    labelText: 'Preferred Appointment Time',
                  ),
                  options: [
                    FormBuilderFieldOption(
                        value: 'Morning', child: Text('Morning')),
                    FormBuilderFieldOption(
                        value: 'Forenoon', child: Text('Forenoon')),
                    FormBuilderFieldOption(
                        value: 'Afternoon', child: Text('Afternoon')),
                    FormBuilderFieldOption(
                        value: 'Evening', child: Text('Evening')),
                    FormBuilderFieldOption(
                        value: 'Night', child: Text('Night')),
                  ],
                ),
                SizedBox(height: 15),
                FormBuilderRangeSlider(
                  attribute: 'range_slider',
                  validators: [FormBuilderValidators.min(6)],
                  onChanged: _onChanged,
                  min: 0.0,
                  max: 100.0,
                  initialValue: RangeValues(0, 24),
                  divisions: 20,
                  activeColor: Colors.red,
                  inactiveColor: Colors.pink[100],
                  decoration: const InputDecoration(
                    labelText: 'Preferred Time for Appointment',
                  ),
                  displayValues: DisplayValues.minMax,
                ),
                SizedBox(height: 15),
                FormBuilderTypeAhead(
                  decoration: const InputDecoration(
                    labelText: 'Preffered Service Branch',
                  ),
                  attribute: 'country',
                  onChanged: _onChanged,
                  itemBuilder: (context, country) {
                    return ListTile(
                      title: Text(country),
                    );
                  },
                  controller: TextEditingController(text: ''),
                  initialValue: 'Thrissur',
                  suggestionsCallback: (query) {
                    if (query.isNotEmpty) {
                      var lowercaseQuery = query.toLowerCase();
                      return allCountries.where((country) {
                        return country.toLowerCase().contains(lowercaseQuery);
                      }).toList(growable: false)
                        ..sort((a, b) => a
                            .toLowerCase()
                            .indexOf(lowercaseQuery)
                            .compareTo(
                                b.toLowerCase().indexOf(lowercaseQuery)));
                    } else {
                      return allCountries;
                    }
                  },
                ),
                SizedBox(height: 15),
                FormBuilderTypeAhead<Contact>(
                  decoration: const InputDecoration(
                    labelText: 'Contact Person',
                  ),
                  initialValue: contacts[0],
                  attribute: 'contact_person',
                  onChanged: _onChanged,
                  itemBuilder: (context, Contact contact) {
                    return ListTile(
                      title: Text(contact.name),
                      subtitle: Text(contact.email),
                    );
                  },
                  selectionToTextTransformer: (Contact c) => c.email,
                  suggestionsCallback: (query) {
                    if (query.isNotEmpty) {
                      var lowercaseQuery = query.toLowerCase();
                      return contacts.where((contact) {
                        return contact.name
                            .toLowerCase()
                            .contains(lowercaseQuery);
                      }).toList(growable: false)
                        ..sort((a, b) => a.name
                            .toLowerCase()
                            .indexOf(lowercaseQuery)
                            .compareTo(
                                b.name.toLowerCase().indexOf(lowercaseQuery)));
                    } else {
                      return contacts;
                    }
                  },
                ),
                SizedBox(height: 15),
                FormBuilderCustomField(
                  attribute: 'name',
                  validators: [
                    FormBuilderValidators.required(),
                  ],
                  initialValue: 'Thrissur',
                  formField: FormField(
                    enabled: true,
                    builder: (FormFieldState<dynamic> field) {
                      return InputDecorator(
                        decoration: InputDecoration(
                          labelText: 'Preferred Branch',
                          contentPadding: const EdgeInsets.only(
                            top: 10.0,
                            bottom: 0.0,
                          ),
                          border: InputBorder.none,
                          errorText: field.errorText,
                        ),
                        child: Container(
                          height: 200,
                          child: CupertinoPicker(
                            itemExtent: 30,
                            children: allCountries.map((c) => Text(c)).toList(),
                            onSelectedItemChanged: (index) {
                              print(index);
                              field.didChange(allCountries[index]);
                            },
                          ),
                        ),
                      );
                    },
                  ),
                ),
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
                    if (_fbKeySettings.currentState.saveAndValidate()) {
                      print(_fbKeySettings
                          .currentState.value['contact_person'].runtimeType);
                      print(_fbKeySettings.currentState.value);
                    } else {
                      print(_fbKeySettings
                          .currentState.value['contact_person'].runtimeType);
                      print(_fbKeySettings.currentState.value);
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
                    _fbKeySettings.currentState.reset();
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
