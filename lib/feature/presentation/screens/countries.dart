import 'package:dayapay/core/utils/home_screen_status.dart';
import 'package:dayapay/feature/data/repository/countries_impl.dart';
import 'package:dayapay/feature/domain/entity/countries_entity.dart';
import 'package:dayapay/feature/domain/entity/use%20case/countries_usecase.dart';
import 'package:dayapay/locator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key,});


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final paymentUseCase = locator<GetCountriesUsecase>();
  List<CountriesEntity> countriesList = [];
  Future<List<CountriesEntity>> getSports() async {
    final countrie = await paymentUseCase.getCountries();
    List<CountriesEntity> countries = countrie;

    return countries;
  }

  @override
  void initState() {
    getSports().then((value) {
      setState(() {
        countriesList = value;
      });
    });

    super.initState();
    final cryptoProvider =
        Provider.of<CountriesRepository>(context, listen: false);
    cryptoProvider.getCountries();
  }

  @override
  Widget build(BuildContext context) {
    final themedata = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        shadowColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'Countries',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
        ),
      ),
      body: Consumer<CountriesRepository>(
        builder: (context, value, child) {
          if (HomePageStatus.status ==  HomePageStatus.loading) {
            return const Center(
              child: SizedBox(
                height: 100,
                child: Column(
                  children: [
                    CircularProgressIndicator(),
                    SizedBox(height: 6,),
                    Text('loading ...')
                  ],
                ),
              ),
            );
          } else if (HomePageStatus.status == HomePageStatus.success) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                          height: MediaQuery.of(context).size.height - 100,
                  child: ListView.builder(
                    itemCount: countriesList.length,
                    itemBuilder: (context, index) {
                      return countriesBox(index, themedata);
                    },
                  ),
                ),
              ],
            );
          } else if (HomePageStatus.status == HomePageStatus.error) {
            return const Text('connection failed');
          } else {
            return const Text('check your connections');
          }
        },
      ),
    );
  }

  Container countriesBox(int index, ThemeData themedata) {
    return Container(
      margin: const EdgeInsets.all(14),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(boxShadow: const [
        BoxShadow(
          color: Colors.black26,
          blurRadius: 0.9,
          blurStyle: BlurStyle.normal,
        )
      ], borderRadius: BorderRadius.circular(24), color: Colors.white),
      width: 200,
      height: 180,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 6, right: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 120,
                  child: Text(countriesList[index].common.toString(),
                      style: themedata.textTheme.bodyMedium),
                ),
                SizedBox(
                  width: 200,
                  child: Center(
                    child: Text(countriesList[index].official.toString(),
                        style: themedata.textTheme.bodyMedium),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Divider(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('region', style: themedata.textTheme.titleSmall),
                    Text(countriesList[index].region.toString(),
                        style: themedata.textTheme.bodyMedium)
                  ],
                ),
              ),
              SizedBox(
                width: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('sub region', style: themedata.textTheme.titleSmall),
                    Text(countriesList[index].subregion.toString(),
                        style: themedata.textTheme.bodyMedium)
                  ],
                ),
              ),
              SizedBox(
                width: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('language', style: themedata.textTheme.titleSmall),
                    Text(countriesList[index].languages.toString(),
                        style: themedata.textTheme.bodyMedium)
                  ],
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Divider(),
          ),
        ],
      ),
    );
  }
}
