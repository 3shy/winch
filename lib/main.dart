import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:winch/screens/bloc_observer.dart';
import 'package:winch/screens/company_signup/Signup2.dart';
import 'package:winch/screens/splash.dart';

import 'firebase_options.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform);
  BlocOverrides.runZoned(
    () {
      runApp(MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'rescue',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          brightness: Brightness.light,
        ),
        home: Splash(),
      ));
    },
    blocObserver: MyBlocObserver(),
  );
}
