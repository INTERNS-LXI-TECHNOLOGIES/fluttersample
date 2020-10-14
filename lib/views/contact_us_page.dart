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

class ContactUsPage extends StatefulWidget {
  @override
  ContactUsPageState createState() {
    return ContactUsPageState();
  }
}

class ContactUsPageState extends State<ContactUsPage> {
  var data;
  bool autoValidate = true;
  bool readOnly = false;
  bool showSegmentedControl = true;
  final GlobalKey<FormBuilderState> _fbKeyContactUs = GlobalKey<FormBuilderState>();

  final ValueChanged _onChanged = (val) => print(val);
  var genderOptions = ['Male', 'Female', 'Other'];


  @override
  Widget build(BuildContext context) {
    final AuthBloc _authBloc = BlocProvider.of<AuthBloc>(context);
    return Scaffold(

      appBar: AppBar(
        title: Text('Contact Us'),
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
            key: _fbKeyContactUs,
            // autovalidate: true,
            initialValue: {
              'movie_rating': 3,
            },
            readOnly: false,
            child: Column(
              children: <Widget>[
                SizedBox(height: 15),
                FormBuilderChipsInput(
                  decoration: const InputDecoration(
                      labelText: 'Customer Service Executives'),
                  attribute: 'chips_test',
                  onChanged: _onChanged,
                  initialValue: [
                    Contact('Kiran', 'kiran@esquire.com',
                        'https://d2gg9evh47fn9z.cloudfront.net/800px_COLOURBOX4057996.jpg'),
                  ],
                  maxChips: 5,
                  findSuggestions: (String query) {
                    if (query.isNotEmpty) {
                      var lowercaseQuery = query.toLowerCase();
                      return contacts.where((profile) {
                        return profile.name
                                .toLowerCase()
                                .contains(query.toLowerCase()) ||
                            profile.email
                                .toLowerCase()
                                .contains(query.toLowerCase());
                      }).toList(growable: false)
                        ..sort((a, b) => a.name
                            .toLowerCase()
                            .indexOf(lowercaseQuery)
                            .compareTo(
                                b.name.toLowerCase().indexOf(lowercaseQuery)));
                    } else {
                      return const <Contact>[];
                    }
                  },
                  chipBuilder: (context, state, profile) {
                    return InputChip(
                      key: ObjectKey(profile),
                      label: Text(profile.name),
                      avatar: CircleAvatar(
                        backgroundImage: NetworkImage(profile.imageUrl),
                      ),
                      onDeleted: () => state.deleteChip(profile),
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    );
                  },
                  suggestionBuilder: (context, state, profile) {
                    return ListTile(
                      key: ObjectKey(profile),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(profile.imageUrl),
                      ),
                      title: Text(profile.name),
                      subtitle: Text(profile.email),
                      onTap: () => state.selectSuggestion(profile),
                    );
                  },
                ),
                SizedBox(height: 15),
                FormBuilderTypeAhead(
                  decoration: const InputDecoration(
                    labelText: 'Location',
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
