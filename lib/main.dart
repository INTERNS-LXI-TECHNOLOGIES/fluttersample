import 'package:customerapp/auth/auth_bloc.dart';
import 'package:customerapp/auth/auth_state.dart';
import 'package:customerapp/bloc_delegate.dart';
import 'package:customerapp/model/config.dart';
import 'package:customerapp/sales_landing.dart';
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
import 'package:customerapp/widgets/main_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get/src/routes/transitions_type.dart' as getx;
import 'package:openapi/api.dart';

void main() {
  BlocSupervisor.delegate = CustomerBlocDelegate();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final getMaterial = GetMaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.red,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      inputDecorationTheme: const InputDecorationTheme(
        // labelStyle: TextStyle(color: Colors.purple),
        border: OutlineInputBorder(
          gapPadding: 10,
        ),
      ),
    ),
    enableLog: true,
    defaultTransition: getx.Transition.downToUp,
    getPages: [
      GetPage(
          name: '/',
          page: () => LoggedInHome(
                title: "Guest Home Page",
              )),
      GetPage(
        name: '/Login',
        page: () => LoginPage(),
      ),
      GetPage(name: '/LoggedIn', page: () => LoggedInHome()),
      GetPage(name: '/Logout', page: () => LogoutPage()),
      GetPage(name: '/OTP', page: () => OTPVerifyPage()),
      GetPage(name: '/Profile', page: () => ProfilePage()),
      GetPage(name: '/Settings', page: () => SettingsPage()),
      GetPage(name: '/Splash', page: () => SplashPage()),
      GetPage(name: '/SignUp', page: () => SignUpPage()),
      GetPage(name: '/Book', page: () => BookATechnicianPage()),
      GetPage(name: '/Contact', page: () => ContactUsPage()),
      GetPage(name: '/Rate', page: () => RateUsPage()),
    ],
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthBloc>(
      create: (context) =>
          AuthBloc(Openapi(basePathOverride: Config.SERVER_BASE_PATH)),
      child: MaterialApp(
          navigatorKey: Get.key,
          navigatorObservers: [GetObserver()],
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.red,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            inputDecorationTheme: const InputDecorationTheme(
              // labelStyle: TextStyle(color: Colors.purple),
              border: OutlineInputBorder(
                gapPadding: 10,
              ),
            ),
          ),
          home: BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              return LoggedInHome();
            },
          )),
    );
  }
}

class LoggedInHome extends StatefulWidget {
  final String title;

  LoggedInHome({Key key, this.title}) : super(key: key);

  @override
  _LoggedInHomeState createState() => _LoggedInHomeState();
}

class _LoggedInHomeState extends State<LoggedInHome> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    final AuthBloc _authBloc = BlocProvider.of<AuthBloc>(context);
    // Make sure this is outside build(), otherwise every setState will chage the value back to 0

    return Scaffold(
      drawer: MainDrawer(),
      body: SalesPage(),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        onTap: (tappedItemIndex) => setState(() {
          _index = tappedItemIndex;
        }),
        type: BottomNavigationBarType.fixed,
        currentIndex: _index,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.card_membership), title: Text('Loyalty')),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), title: Text('Offers')),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), title: Text('Shop')),
          BottomNavigationBarItem(
              icon: Icon(Icons.laptop), title: Text('Laptops')),
          BottomNavigationBarItem(icon: Icon(Icons.tv), title: Text('TVs')),
          BottomNavigationBarItem(
              icon: Icon(Icons.gamepad), title: Text('Electronics')),
        ],
      ),
    );
  }
}
