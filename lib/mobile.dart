import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'adaptive_indicator.dart';

class MobileScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.teal,
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login with your account',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  SizedBox(height: 10.0,),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email Addrees',
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 40.0,
                          color: Colors.teal,
                          child: MaterialButton(
                            onPressed: () {},
                            child: Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0,),
                      Expanded(
                        child: Container(
                          height: 40.0,
                          color: Colors.blue,
                          child: MaterialButton(
                            onPressed: () {},
                            child: Text(
                              'Register',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Center(child: AdaptiveIndicator(os: Platform.operatingSystem ,)),
                ],
              ),
            ),
          ),
        ],
      ),
    );

  }
}
