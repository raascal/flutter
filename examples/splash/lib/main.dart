// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() {
  runApp(
    DecoratedBox(
      decoration: const BoxDecoration(color: Colors.white),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          textDirection: TextDirection.ltr,
          children: const <Widget>[
            FlutterLogo(size: 40),
            Padding(
              padding: EdgeInsets.all(38),
              child: Text(
                'This app is only meant to be run under the Flutter debugger',
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black87),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
