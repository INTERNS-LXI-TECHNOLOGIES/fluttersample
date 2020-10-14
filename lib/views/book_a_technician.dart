import 'package:customerapp/auth/auth_bloc.dart';
import 'package:customerapp/auth/auth_state.dart';
import 'package:customerapp/model/config.dart';
import 'package:customerapp/model/util.dart';

import 'package:customerapp/widgets/main_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class BookATechnicianPage extends StatefulWidget {
  @override
  BookATechnicianPageState createState() {
    return BookATechnicianPageState();
  }
}

class BookATechnicianPageState extends State<BookATechnicianPage> {
  var data;
  bool autoValidate = true;
  bool readOnly = false;
  bool showSegmentedControl = true;
  final GlobalKey<FormBuilderState> _fbKeyBookATechnician = GlobalKey<FormBuilderState>();

  final ValueChanged _onChanged = (val) => print(val);
  var genderOptions = ['Male', 'Female', 'Other'];


  @override
  Widget build(BuildContext context) {
    final AuthBloc _authBloc = BlocProvider.of<AuthBloc>(context);
    return Scaffold(

      appBar: AppBar(
        title: Text('Book a Technician'),
      ),

      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {



          if (state is ErrorAuthState)  {
            Util.showSnackBar('Failed', 'Error: '+ (Config.DEBUG_ENABLED_SNACKBAR ? state.error : ''));
          }

        },
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            return _buildMainWidget(context, _fbKeyBookATechnician);
          },
        ),
      ),
    );
  }

  Widget _buildMainWidget(
      BuildContext context, GlobalKey<FormBuilderState> _fbKeyBookATechnician) {
    final AuthBloc _authBloc = BlocProvider.of<AuthBloc>(context);
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(children: <Widget>[
        FormBuilder(
          // context,
          key: _fbKeyBookATechnician,
          // autovalidate: true,
          initialValue: {
            'movie_rating': 3,
          },
          readOnly: false,
          child: Column(
            children: <Widget>[
              FormBuilderChoiceChip(
                attribute: 'choice_chip',
                decoration: const InputDecoration(
                  labelText: 'Select your Product',
                ),
                options: [
                  FormBuilderFieldOption(
                      value: 'Dell Laptop', child: Text('Dell Laptop')),
                  FormBuilderFieldOption(
                      value: 'Acer Monitor', child: Text('Acer Monitor')),
                  FormBuilderFieldOption(
                      value: 'Logitech Keyboard',
                      child: Text('Logitech Keyboard')),
                  FormBuilderFieldOption(value: 'UPS', child: Text('UPS')),
                  FormBuilderFieldOption(value: 'AC', child: Text('AC')),
                ],
              ),
              SizedBox(height: 15),
              FormBuilderTextField(
                attribute: 'age',
                decoration: const InputDecoration(
                  labelText: 'Describe the problem here',
                ),
                onChanged: _onChanged,
                valueTransformer: (text) {
                  return text == null ? null : num.tryParse(text);
                },
                validators: [
                  FormBuilderValidators.required(),
                  //FormBuilderValidators.max(70),
                  FormBuilderValidators.minLength(15, allowEmpty: false),
                ],
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 15),
              FormBuilderFilterChip(
                attribute: 'filter_chip',
                decoration: const InputDecoration(
                  labelText: 'Issues you are facing',
                ),
                options: [
                  FormBuilderFieldOption(
                      value: 'Keyboard Issue', child: Text('Keyboard Issue')),
                  FormBuilderFieldOption(value: 'Lag', child: Text('Lag')),
                  FormBuilderFieldOption(value: 'Virus', child: Text('Virus')),
                  FormBuilderFieldOption(
                      value: 'Click bait', child: Text('Click Bait')),
                  FormBuilderFieldOption(
                      value: 'Fake websites', child: Text('Fake Websites')),
                ],
              ),
              SizedBox(height: 15),
              FormBuilderTextField(
                attribute: 'age',
                decoration: const InputDecoration(
                  labelText: 'Serial Number',
                ),
                onChanged: _onChanged,
                valueTransformer: (text) {
                  return text == null ? null : num.tryParse(text);
                },
                validators: [
                  FormBuilderValidators.required(),
                  //FormBuilderValidators.max(70),
                  FormBuilderValidators.minLength(10, allowEmpty: false),
                ],
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 15),
              FormBuilderCheckbox(
                attribute: 'accept_terms',
                initialValue: false,
                onChanged: _onChanged,
                leadingInput: true,
                label: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text:
                            'I have read and agree to the Terms and Conditions',
                        style: TextStyle(color: Colors.blue),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print('launch url');
                          },
                      ),
                    ],
                  ),
                ),
                validators: [
                  FormBuilderValidators.requiredTrue(
                    errorText:
                        'You must accept terms and conditions to continue',
                  ),
                ],
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
                  if (_fbKeyBookATechnician.currentState.saveAndValidate()) {
                    print(_fbKeyBookATechnician
                        .currentState.value['contact_person'].runtimeType);
                    print(_fbKeyBookATechnician.currentState.value);
                  } else {
                    print(_fbKeyBookATechnician
                        .currentState.value['contact_person'].runtimeType);
                    print(_fbKeyBookATechnician.currentState.value);
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
                  _fbKeyBookATechnician.currentState.reset();
                },
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
