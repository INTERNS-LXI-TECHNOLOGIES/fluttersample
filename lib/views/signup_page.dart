import 'package:customerapp/auth/auth_bloc.dart';
import 'package:customerapp/auth/auth_event.dart';
import 'package:customerapp/auth/auth_state.dart';
import 'package:customerapp/main.dart';
import 'package:customerapp/model/config.dart';
import 'package:customerapp/model/util.dart';
import 'package:customerapp/widgets/main_drawer.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:openapi/model/managed_user_vm.dart';

class SignUpPage extends StatefulWidget {
  @override
  SignUpPageState createState() {
    return SignUpPageState();
  }
}

class SignUpPageState extends State<SignUpPage> {
  var data;
  bool autoValidate = true;
  bool readOnly = false;
  bool showSegmentedControl = true;
  final GlobalKey<FormBuilderState> _fbKeySignUp = GlobalKey<FormBuilderState>();

  final ValueChanged _onChanged = (val) => print(val);
  var genderOptions = ['Male', 'Female', 'Other'];


  @override
  Widget build(BuildContext context) {
    final AuthBloc _authBloc = BlocProvider.of<AuthBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),

      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, outcomeState) {
          debugPrint('SignUp Screen -> Listener....');
          if (outcomeState is ErrorAuthState) {
            Util.showSnackBar(
                'Failed',
                'Error: ' +
                    (Config.DEBUG_ENABLED_SNACKBAR ? outcomeState.error : ''));
          }
        },
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, outcomeState) {
            if (outcomeState is CheckingAuthState) {
              return Center(child: CircularProgressIndicator());
            }

            if (outcomeState is ShowGuestHomeState) {
              debugPrint('SignUp Screen -> Listener....show guest home state');
              return LoggedInHome();
            }
            if (outcomeState is RegisterSuccessAuthState) {
              debugPrint(
                  'SignUp Screen -> Listening....Register Success Auth state');

              return AlertDialog(
                title: Text('Success'),
                content: Text(
                    'Successfully Saved, We have send a verification email, Please click and verify'),
                actions: <Widget>[
                  FlatButton(
                    child: Text('Saved'),
                    onPressed: () {
                      _authBloc.add(GuestAuthEvent()) ;
                      setState(() {

                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoggedInHome() ),
                      );
                    },
                  ),
                ],
              );

            }

            if (outcomeState is ErrorAuthState) {
              debugPrint('SignUp Screen -> Listening....error state');
              AlertDialog(
                title: Text('Error'),
                content: Text('Connection Time Out'),
                actions: <Widget>[
                  FlatButton(
                    child: Text('Sorry'),
                    onPressed: () {
                      _authBloc.add(SuccessfullyLoggedInAuthEvent()) ;
                      setState(() {

                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoggedInHome() ),
                      );
                    },
                  ),
                ],
              );

            }

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
      child: ListView(children: <Widget>[
        FormBuilder(
          // context,
          key: _fbKeySignUp,
          // autovalidate: true,
          readOnly: false,
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * .2,
                width: MediaQuery.of(context).size.width * .2,
                child: Image.asset('assets/images/logo.png'),
              ),
              Text(
                'Customer App',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColorDark),
              ),
              SizedBox(height: 15),
              FormBuilderTextField(
                attribute: 'firstname',
                decoration: const InputDecoration(
                  labelText: 'First Name',
                ),
                onChanged: _onChanged,
                validators: [
                  FormBuilderValidators.required(),
                  //FormBuilderValidators.max(70),
                ],
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 15),
              FormBuilderTextField(
                attribute: 'lastname',
                decoration: const InputDecoration(
                  labelText: 'Last Name',
                ),
                onChanged: _onChanged,
                validators: [
                  FormBuilderValidators.required(),
                  //FormBuilderValidators.max(70),
                ],
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 15),
              FormBuilderTextField(
                attribute: 'login',
                decoration: const InputDecoration(
                  labelText: 'Mobile Phone',
                ),
                onChanged: _onChanged,
                validators: [
                  FormBuilderValidators.required(),
                  FormBuilderValidators.numeric(),
                  FormBuilderValidators.minLength(10),
                  FormBuilderValidators.maxLength(10),
                  //FormBuilderValidators.max(70),
                ],
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 15),
              SizedBox(height: 15),
              FormBuilderTextField(
                attribute: 'email',
                decoration: const InputDecoration(
                  labelText: 'email',
                ),
                onChanged: _onChanged,
                validators: [
                  FormBuilderValidators.required(),
                  FormBuilderValidators.email(),
                  //FormBuilderValidators.max(70),
                ],
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 15),
              FormBuilderTextField(
                maxLines: 1,
                obscureText: true,
                attribute: 'password',
                decoration: const InputDecoration(
                  labelText: 'Password',
                ),
                onChanged: _onChanged,
                validators: [
                  FormBuilderValidators.required(),
                  FormBuilderValidators.minLength(8),

                  //FormBuilderValidators.max(70),
                ],
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 15),
              FormBuilderTextField(
                maxLines: 1,
                obscureText: true,
                attribute: 'vpassword',
                decoration: const InputDecoration(
                  labelText: 'Password',
                ),
                onChanged: _onChanged,
                validators: [
                  FormBuilderValidators.required(),
                  FormBuilderValidators.minLength(8)

                  //FormBuilderValidators.max(70),
                ],
                keyboardType: TextInputType.text,
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
                  print(_fbKeySignUp.currentState.value);
                  if (_fbKeySignUp.currentState.saveAndValidate()) {
                    if (_fbKeySignUp.currentState.value['password'] ==
                        _fbKeySignUp.currentState.value['vpassword']) {
                      var registerUser = ManagedUserVM().toBuilder()
                        ..login = _fbKeySignUp.currentState.value['login'].toString()
                        ..email = _fbKeySignUp.currentState.value['email']
                        ..firstName = _fbKeySignUp.currentState.value['firstname']
                        ..lastName = _fbKeySignUp.currentState.value['lastname']
                        ..password = _fbKeySignUp.currentState.value['password']
                        ..langKey = 'en';
                      _authBloc.add(RegisterAuthEvent(registerUser.build()));


                      print(_fbKeySignUp.currentState.value);
                    } else {
                      print('Error');
                      Util.showSnackBar('Password Failed',
                          'Password and Verification Password do not match',
                          duration: Duration(
                              seconds: Config.SNACKBAR_WAIT_FOR_DISPLAY));
                    }
                  } else {
                    print(_fbKeySignUp.currentState.value);
                    Util.showSnackBar('Validation', 'Validation Failed',
                        duration: Duration(
                            seconds: Config.SNACKBAR_WAIT_FOR_DISPLAY));
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
                  _fbKeySignUp.currentState.reset();
                },
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
