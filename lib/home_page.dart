// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
import 'dart:async'; // new
import 'package:firebase_auth/firebase_auth.dart' // new
    hide
        EmailAuthProvider,
        PhoneAuthProvider; // new
import 'package:firebase_core/firebase_core.dart'; // new
import 'package:firebase_ui_auth/firebase_ui_auth.dart'; // new
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart'; // new

import 'firebase_options.dart'; // new
import 'src/authentication.dart'; // new
import 'src/widgets.dart';
import 'main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ApplicationState>(
        builder: (context, appState, child) => Scaffold(
              appBar: AppBar(
                title: const Text('Firebase Meetup'),
              ),
              body: ListView(
                children: <Widget>[
                  Image.asset('assets/codelab.png'),
                  const SizedBox(height: 8),
                  const IconAndDetail(Icons.calendar_today, 'October 30'),
                  const IconAndDetail(Icons.location_city, 'San Francisco'),
                  // Add from here
                  Consumer<ApplicationState>(
                    builder: (context, appState, _) => AuthFunc(
                        loggedIn: appState.loggedIn,
                        signOut: () {
                          FirebaseAuth.instance.signOut();
                        }),
                  ),
                  // to here
                  const Divider(
                    height: 8,
                    thickness: 1,
                    indent: 8,
                    endIndent: 8,
                    color: Colors.grey,
                  ),
                  const Header("What we'll be doing"),
                  const Paragraph(
                    'Join us for a day full of Firebase Workshops and Pizza!',
                  ),
                  Consumer<ApplicationState>(
                    builder: (context, appState, _) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Add from here...
                        if (appState.attendees >= 2)
                          Paragraph('${appState.attendees} people going')
                        else if (appState.attendees == 1)
                          const Paragraph('1 person going')
                        else
                          const Paragraph('No one going'),
                        // ...to here.
                        if (appState.loggedIn) ...[
                          // Add from here...
                          YesNoSelection(
                            state: appState.attending,
                            onSelection: (attending) =>
                                appState.attending = attending,
                          ),
                          // ...to here.
                          const Header('Discussion'),
                          GuestBook(
                            addMessage: (message) =>
                                appState.addMessageToGuestBook(message),
                            messages: appState.guestBookMessages,
                          ),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
            ));
  }
}
