import 'dart:convert';

import 'package:customerapp/auth/auth_bloc.dart';
import 'package:customerapp/auth/auth_event.dart';
import 'package:customerapp/auth/auth_state.dart';
import 'package:customerapp/views/book_a_technician.dart';
import 'package:customerapp/views/contact_us_page.dart';
import 'package:customerapp/views/login_page.dart';
import 'package:customerapp/views/logout_page.dart';
import 'package:customerapp/views/otp_page.dart';
import 'package:customerapp/views/profile_page.dart';
import 'package:customerapp/views/rate_us_page.dart';
import 'package:customerapp/views/settingspage.dart';
import 'package:customerapp/views/signup_page.dart';
import 'package:customerapp/views/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:openapi/model/login_vm.dart';

class MainDrawer extends StatefulWidget {
  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    final AuthBloc _authBloc = BlocProvider.of<AuthBloc>(context);
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {},
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return _buildMainWidget(context);
        },
      ),
    );
  }

  Widget _buildMainWidget(BuildContext context) {
    final AuthBloc _authBloc = BlocProvider.of<AuthBloc>(context);
    return Drawer(
        elevation: 50,
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            debugPrint("Main Drawer -> inside drawer builder");
            if (state is LoggedInAuthState) {
              debugPrint(" Main Drawer -> inside Logged in Auth ");
              final loggedInUser = _authBloc.loggedInUser;
              debugPrint(" Main Drawer -> inside Logged in Auth $loggedInUser");
              return ListView(children: [
                DrawerHeader(
                    decoration: BoxDecoration(
                        backgroundBlendMode: BlendMode.modulate,
                        color: Theme.of(context).primaryColor,
                        image: DecorationImage(
                            image: AssetImage("assets/images/logo.png"),
                            fit: BoxFit.scaleDown)),
                    child: Text("")),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: UserAccountsDrawerHeader(
                      accountEmail: Text(
                          loggedInUser.email == null ? '' : loggedInUser.email),
                      accountName: Text(loggedInUser.login == null
                          ? 'Login'
                          : loggedInUser.login),
                      currentAccountPicture: CircleAvatar(
                        backgroundImage: MemoryImage(base64Decode(loggedInUser
                                    .imageUrl ==
                                null
                            ? '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'
                            : loggedInUser.imageUrl)),
                      ),
                    )),
                Divider(
                  height: 2,
                  indent: 10,
                  endIndent: 10,
                  color: Theme.of(context).accentColor,
                  thickness: 2,
                ),
                ListTile(
                  title: Text("Logout"),
                  leading: Icon(Icons.exit_to_app),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    _authBloc.add(LogoutAuthEvent(LoginVM()));
                    Get.offAll(LogoutPage());
                  },
                ),
                ListTile(
                  title: Text("My Profile"),
                  leading: Icon(Icons.face),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    Get.to(ProfilePage());
                  },
                ),
                ListTile(
                  title: Text("OTP Verification"),
                  leading: Icon(Icons.phonelink_lock),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    Get.to(OTPVerifyPage());
                  },
                ),
                ListTile(
                  title: Text("Settings"),
                  leading: Icon(Icons.settings),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    Get.to(SettingsPage());
                  },
                ),
                Divider(
                  height: 2,
                  indent: 10,
                  endIndent: 10,
                  color: Theme.of(context).accentColor,
                  thickness: 2,
                ),
                ListTile(
                  title: Text("My Purchases"),
                  leading: Icon(Icons.shop_two),
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
                ListTile(
                  title: Text("My Tickets"),
                  leading: Icon(Icons.devices_other),
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
                ListTile(
                  title: Text("Feedbacks"),
                  leading: Icon(Icons.feedback),
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
                Divider(
                  height: 2,
                  indent: 10,
                  endIndent: 10,
                  color: Theme.of(context).accentColor,
                  thickness: 2,
                ),
                AboutListTile(
                  icon: Icon(Icons.info),
                  applicationIcon: FlutterLogo(),
                  applicationName: 'App',
                  applicationVersion: 'August 2019',
                  applicationLegalese: '2014 Devs@divisoft.com',
                  aboutBoxChildren: [AboutBoxChildren()],
                ),
              ]);
            } else {
              debugPrint(" Main Drawer -> Not logged in Drawer");
              return ListView(children: [
                DrawerHeader(
                    decoration: BoxDecoration(
                        backgroundBlendMode: BlendMode.modulate,
                        color: Theme.of(context).primaryColor,
                        image: DecorationImage(
                            image: AssetImage("assets/images/logo.png"),
                            fit: BoxFit.scaleDown)),
                    child: Text("")),
                Divider(
                  height: 2,
                  indent: 10,
                  endIndent: 10,
                  color: Theme.of(context).accentColor,
                  thickness: 2,
                ),
                ListTile(
                  title: Text("Login"),
                  leading: Icon(Icons.lock),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    Get.to(LoginPage());
                  },
                ),
                ListTile(
                  title: Text("Sign Up"),
                  leading: Icon(Icons.arrow_right),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    Get.to(SignUpPage());
                  },
                ),
                Divider(
                  height: 2,
                  indent: 10,
                  endIndent: 10,
                  color: Theme.of(context).accentColor,
                  thickness: 2,
                ),
                ListTile(
                  title: Text("Our Offers"),
                  leading: Icon(Icons.lightbulb_outline),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    Get.to(SplashPage());
                  },
                ),
                ListTile(
                  title: Text("Book a Technician"),
                  leading: Icon(Icons.calendar_today),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    Get.to(BookATechnicianPage());
                  },
                ),
                ListTile(
                  title: Text("Contact Us"),
                  leading: Icon(Icons.shop_two),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    Get.to(ContactUsPage());
                  },
                ),
                ListTile(
                  title: Text("Rate Us"),
                  leading: Icon(Icons.contacts),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    Get.to(RateUsPage());
                  },
                ),
                Divider(
                  height: 2,
                  indent: 10,
                  endIndent: 10,
                  color: Theme.of(context).accentColor,
                  thickness: 2,
                ),
                AboutListTile(
                  icon: Icon(Icons.info),
                  applicationIcon: FlutterLogo(),
                  applicationName: 'App',
                  applicationVersion: 'August 2019',
                  applicationLegalese: '2014 Devs@divisoft.com',
                  aboutBoxChildren: [AboutBoxChildren()],
                ),
              ]);
            }
          },
        ));
  }
}

class AboutBoxChildren extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('//TODO'),
    );
  }
}
