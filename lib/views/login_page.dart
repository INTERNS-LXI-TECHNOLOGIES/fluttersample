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
import 'package:openapi/model/login_vm.dart';

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  var data;
  bool autoValidate = true;
  bool readOnly = false;
  bool showSegmentedControl = true;
  final GlobalKey<FormBuilderState> _fbKeyLoginPage = GlobalKey<FormBuilderState>();

  final ValueChanged _onChanged = (val) => print(val);
  var genderOptions = ['Male', 'Female', 'Other'];


  @override
  Widget build(BuildContext context) {
    final AuthBloc _authBloc = BlocProvider.of<AuthBloc>(context);

    return Scaffold(

      appBar: AppBar(
        title: Text('Login'),
      ),

      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is LoggedInAuthState) {
            Util.showSnackBar("Successful", "Successfully Logged In");
          }

          if (state is ErrorAuthState) {
            if (state.error.contains('404'))
              Util.showSnackBar(
                  'Failed',
                  'Invalid Username or Password ' +
                      (Config.DEBUG_ENABLED_SNACKBAR ? state.error : ''));
            else
              Util.showSnackBar(
                  'Failed',
                  'Error: ' +
                      (Config.DEBUG_ENABLED_SNACKBAR ? state.error : ''));
          }
        },
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            debugPrint('LoginScreen->Inside AuthBloc Listen $state');

            if (state is CheckingAuthState) {
              return Center(child: CircularProgressIndicator());
            }

            if (state is LoggedInAuthState) {
              return LoggedInHome();
            }

            if (state is ErrorAuthState) {
              _authBloc.add(LogoutAuthEvent(LoginVM()));
              return LoggedInHome(title: 'Guest Home Page');
            }

            return _buildMainWidget(context, _fbKeyLoginPage);
          },
        ),
      ),
    );
  }

  Widget _buildMainWidget(
      BuildContext context, GlobalKey<FormBuilderState> _fbKeyLoginPage) {
    final AuthBloc _authBloc = BlocProvider.of<AuthBloc>(context);
    return Builder(
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(children: <Widget>[
            FormBuilder(
              // context,
              key: _fbKeyLoginPage,
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
                    attribute: 'email',
                    decoration: const InputDecoration(
                      labelText: 'Email or Mobile Phone',
                    ),
                    onChanged: _onChanged,
                    validators: [
                      FormBuilderValidators.required(),
                      //FormBuilderValidators.email(),
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
                      FormBuilderValidators.minLength(4),

                      //FormBuilderValidators.max(70),
                    ],
                    keyboardType: TextInputType.text,
                  ),
                  SizedBox(height: 15),
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
                      print(_fbKeyLoginPage.currentState.value);
                      if (_fbKeyLoginPage.currentState.saveAndValidate()) {
                        var login = LoginVM().toBuilder()
                          ..username = _fbKeyLoginPage.currentState.value['email']
                          ..password = _fbKeyLoginPage.currentState.value['password'];
                        _authBloc.add(LoginAuthEvent(login.build()));



                      } else {
                        print(_fbKeyLoginPage.currentState.value);
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
                      _fbKeyLoginPage.currentState.reset();
                    },
                  ),
                ),
              ],
            ),
          ]),
        );
      },
    );
  }
}
