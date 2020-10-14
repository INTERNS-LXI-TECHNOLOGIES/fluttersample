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

class OTPVerifyPage extends StatefulWidget {
  @override
  OTPVerifyPageState createState() {
    return OTPVerifyPageState();
  }
}

class OTPVerifyPageState extends State<OTPVerifyPage> {
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
        title: Text('Your Profile'),
      ),

      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is SuccessFullyVerifiedOTPAuthState) {
            Util.showSnackBar('OTP', 'Phone Number has been verified');

          }

          if (state is ErrorAuthState) {
            Util.showSnackBar('Failed', 'Error: '+ (Config.DEBUG_ENABLED_SNACKBAR ? state.error : ''));
          }
        },
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            debugPrint('OTPPage-> Inside AuthBloc Listen $state');

            if (state is SuccessFullyVerifiedOTPAuthState) {
              return LoggedInHome();
            }


            if (state is CheckingAuthState) {
              return Center(child: CircularProgressIndicator());
            }
            //CheckingAuthState

            if (state is SuccessFullyGeneratedOTPAuthState) {
             return AlertDialog(
                title: Text('Success'),
                content: Text('OTP Generated'),
                actions: <Widget>[
                  FlatButton(
                    child: Text('Success'),
                    onPressed: () {
                      _authBloc.add(SuccessfullyLoggedInAuthEvent()) ;
                      setState(() {

                      });
                      Get.offAll(LoggedInHome());
                    },
                  ),
                ],
              );


            }

            if (state is ErrorAuthState) {
              _authBloc.add(LogoutAuthEvent(LoginVM())) ;

            }

            return _buildMainWidget(context);
          },
        ),
      ),
    );
  }

  Widget _buildMainWidget(BuildContext context) {
    final AuthBloc _authBloc = BlocProvider.of<AuthBloc>(context);
    return Builder(
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(children: <Widget>[
            FormBuilder(
              // context,
              key: _fbKey,
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
                  Row(children: <Widget>[
                    Spacer(),
                    Expanded(
                        child: MaterialButton(
                            color: Theme.of(context).accentColor,
                            child: Text(
                              'Get OTP',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {
                              if (_authBloc.loggedInUser.email == null) {
                                var result = Get.dialog(AlertDialog(
                                  title: Text(
                                      'Sorry, Your Phone cannot be verified'),
                                  content: Text(
                                      'Please add you mobile number in your profile'),
                                  actions: <Widget>[
                                    FlatButton(
                                      child: Text('Sorry'),
                                      onPressed: () {
                                        _authBloc.add(SuccessfullyLoggedInAuthEvent()) ;
                                        setState(() {

                                        });
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => OTPVerifyPage() ),
                                        );


                                        // Dismiss alert dialog
                                      },
                                    ),
                                  ],
                                ));
                              }
                              _authBloc.add(OTPAuthEvent());


                            })),
                    Spacer(),
                  ]),
                  SizedBox(height: 15),
                  FormBuilderTextField(
                    maxLines: 1,
                    attribute: 'otp',
                    decoration: const InputDecoration(
                      labelText: 'OTP Verification',
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
                      debugPrint(
                          'OTPPage-> ${_fbKey.currentState.value}  ##########################');
                      if (_fbKey.currentState.saveAndValidate()) {
                        _authBloc.add(OTPVerifyAuthEvent(
                            _fbKey.currentState.value['otp']));

                      } else {
                        print(_fbKey.currentState.value);
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
                      _fbKey.currentState.reset();
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
