import 'package:customerapp/auth/auth_bloc.dart';
import 'package:customerapp/auth/auth_bloc.dart';
import 'package:customerapp/auth/auth_bloc.dart';
import 'package:customerapp/auth/auth_event.dart';
import 'package:customerapp/auth/auth_state.dart';
import 'package:customerapp/main.dart';
import 'package:customerapp/model/config.dart';
import 'package:customerapp/model/util.dart';

import 'package:customerapp/widgets/main_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:openapi/model/login_vm.dart';

class LogoutPage extends StatefulWidget {
  @override
  LogoutPageState createState() => LogoutPageState();
}

class LogoutPageState extends State<LogoutPage> {


  @override
  Widget build(BuildContext context) {
    final AuthBloc _authBloc = BlocProvider.of<AuthBloc>(context);

    return Scaffold(

        appBar: AppBar(
          title: Text('Logout'),
        ),

        body: BlocListener<AuthBloc, AuthState>(listener: (context, state) {

          debugPrint('Logout -> Listener') ;
          if( state is LoggedOutAuthState) {
            Util.showSnackBar("Successful", "Successfully Logged Out");
          }

          if (state is ErrorAuthState) {
            Util.showSnackBar('Failed', 'Error: '+ (Config.DEBUG_ENABLED_SNACKBAR ? state.error : ''));
          }

        }, child: BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {

          if (state is CheckingAuthState) {
            return Center(child: CircularProgressIndicator());
          }

          return _buildMainWidget(context, _authBloc);
        })));
  }

  Widget _buildMainWidget(BuildContext context, AuthBloc _authBloc) {

    return LoggedInHome(
      title: 'Guest Home Page',
    );
  }
}
