import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:typicons_flutter/typicons.dart';

import 'auth/auth_bloc.dart';
import 'model/shop.dart';
import 'model/util.dart';

class SalesPage extends StatelessWidget {
  var header = [
    '',
    'Sale',
    '',
    'Offers',
    '',
    'Discounts',
    '',
    'Sale',
    '',
    'Offers',
    '',
    'Discounts',
    '',
    'Sale',
    '',
    'Offers',
    '',
    'Discounts',
    '',
    'Sale',
    '',
    'Offers',
    '',
    'Discounts',
    '',
    'Sale',
    '',
    'Offers',
    '',
    'Discounts',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  Widget build(BuildContext context) {
    final AuthBloc _authBloc = BlocProvider.of<AuthBloc>(context);
    return CustomScrollView(physics: const ScrollPhysics(), slivers: [


      SliverAppBar(
        elevation: 40,
        forceElevated: true,
        expandedHeight: 150.0,
        floating: true,
        pinned: true,
        flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: Text("",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 4.0,
                )),
            background: Image.asset(
              'assets/images/logo.png',
            )),
      ),
      SliverList(delegate: SliverChildListDelegate(_buildList(context, 30))),
    ]);
  }

  List _buildList(BuildContext context, int count) {
    List<Widget> listItems = List();
    for (int index = 0; index < count; index++) {
      if (index % 2 == 0) {
        listItems.add(_buildCarousel(context, index));
      } else {
        listItems.add(SizedBox.fromSize(
            size: Size(180, 30),
            child: Container(
              padding: EdgeInsets.only(left: 16),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.red,
                    blurRadius: 1.0, // soften the shadow
                    spreadRadius: 1.0, //extend the shadow
                    offset: Offset(
                      1.0, // Move to right 10  horizontally
                      1.0, // Move to bottom 10 Vertically
                    ),
                  )
                ],
              ),
              child: Text(
                header[index],
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    fontFamily: 'CodaCaption',
                    fontStyle: FontStyle.normal),
              ),
            )));
      }
    }
    return listItems;
  }

  Widget _buildCarousel(BuildContext context, int carouselIndex) {
    return SizedBox.fromSize(
        size: Size(180, 180),
        child: PageView.builder(
          // store this controller in a State to save the carousel scroll position
          controller: PageController(
            viewportFraction: .6,
          ),
          itemCount: 12,
          itemBuilder: (BuildContext context, int itemIndex) {
            return _buildCarouselItem(context, carouselIndex, itemIndex);
          },
        ));
  }

  Widget _buildCarouselItem(
      BuildContext context, int carouselIndex, int itemIndex) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Container(
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(1.0)),
        ),
        child: SingleShopCard(index: itemIndex),
      ),
    );
  }
}

class SingleShopCard extends StatelessWidget {
  final cryptoData = CryptoData.getData;
  final index;

  SingleShopCard({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.card,
      elevation: 20,
      // color: cryptoData[Random().nextInt(12)]['changeColor'],
      color: Colors.white,
      borderOnForeground: true,
      shadowColor: Colors.grey,
      child: SizedBox(
          width: 180,
          height: 180,
          child: Column(
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  cryptoIcon(cryptoData[Random().nextInt(12)]),
                  RaisedButton(
                    padding: EdgeInsets.all(5),
                    elevation: 80,
                    textColor: Colors.white,
                    color: Colors.red,
                    child: Text("Buy"),
                    onPressed: () {
                      _showSnackBar();
                    },
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(8.0),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  cryptoNameSymbol(cryptoData[index]),
                  SizedBox(
                    width: 20,
                  ),
                  cryptoAmount(cryptoData[index])
                ],
              ),
              Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ToggleButtons(
                      renderBorder: false,
                      isSelected: [true, true, true],
                      fillColor: Colors.transparent,
                      onPressed: (index) {
                        _showSnackBar();
                      },
                      children: [
                        Icon(
                          Icons.favorite_border,
                          color: Colors.red,
                          size: 18,
                        ),
                        Icon(
                          Icons.shopping_cart,
                          color: Colors.red,
                          size: 18,
                        ),
                        Icon(
                          Icons.share,
                          color: Colors.red,
                          size: 18,
                        )
                      ],
                    ),
                    changeIcon(cryptoData[index]),
                  ]),
            ],
          )),
    );
  }

  Widget cryptoNameSymbol(data) {
    return Align(
      alignment: Alignment.centerLeft,
      child: RichText(
        text: TextSpan(
          text: '${data['name']}',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 14),
          children: <TextSpan>[
            TextSpan(
                text: '\n${data['symbol']}',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }

  Widget cryptoIcon(data) {
    return Padding(
      padding: const EdgeInsets.only(left: 2.0),
      child: Align(
          alignment: Alignment.centerLeft,
          child: Icon(
            data['icon'],
            color: data['iconColor'],
            size: 80,
          )),
    );
  }

  Widget cryptoChange(data) {
    return Align(
      alignment: Alignment.topRight,
      child: RichText(
        text: TextSpan(
          text: '${data['change']}',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.green, fontSize: 12),
          children: <TextSpan>[
            TextSpan(
                text: '\n${data['changeValue']}',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }

  Widget changeIcon(data) {
    return Align(
        alignment: Alignment.topRight,
        child: data['change'].contains('-')
            ? Icon(
                Typicons.arrow_sorted_down,
                color: data['changeColor'],
                size: 30,
              )
            : Icon(
                Typicons.arrow_sorted_up,
                color: data['changeColor'],
                size: 30,
              ));
  }

  _showSnackBar() {
    Util.showSnackBar("TODO", 'Not Implemented Yet');
  }

  Widget cryptoAmount(data) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Row(
          children: <Widget>[
            RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                text: '${data['value']}*',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: '\nOffer',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
