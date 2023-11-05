// import 'package:danapay/feature/domain/entity/countries_entity.dart';
// import 'package:danapay/feature/domain/entity/use%20case/countries_usecase.dart';
// import 'package:danapay/locator.dart';
import 'package:dayapay/feature/data/repository/countries_impl.dart';
import 'package:dayapay/feature/domain/entity/countries_entity.dart';
import 'package:dayapay/feature/domain/entity/use%20case/countries_usecase.dart';
import 'package:dayapay/feature/presentation/screens/countries.dart';
import 'package:dayapay/locator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(const MyApp());
  setUp();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CountriesRepository(locator()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          textTheme: const TextTheme(
              titleSmall:
                  TextStyle(color: Colors.black38, fontWeight: FontWeight.w400),
              bodyMedium: TextStyle(color: Colors.black, fontSize: 13)),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
