import 'package:flutter/material.dart';
import 'package:real_estate/custom/borderIcon.dart';
import 'package:real_estate/sample_data.dart';
import 'package:real_estate/utilis/consant.dart';
import 'package:real_estate/utilis/widget_function.dart';

import '../utilis/custom_function.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    const double padding = 25;
    final ThemeData themeData = Theme.of(context);
    final sidePadding = EdgeInsets.symmetric(horizontal: padding);
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            height: size.height,
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                addVerticleSpace(padding),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: padding),
                  child: Row(

                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      BorderIcon(
                          height: 50, width: 50, child: Icon(Icons.menu)),
                      BorderIcon(
                          height: 50, width: 50, child: Icon(Icons.settings))
                    ],
                  ),
                ),
                addVerticleSpace(padding),
                Padding(
                  padding: sidePadding,
                  child: Text(
                    'City',
                    style: themeData.textTheme.bodyText2,
                  ),
                ),
                addVerticleSpace(padding),
                Padding(
                  padding: sidePadding,
                  child: Text(
                    'San Francisco',
                    style: themeData.textTheme.headline1,
                  ),
                ),
                Padding(
                  padding: sidePadding,
                  child: const Divider(
                    height: padding,
                    color: COLOR_Grey,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      "<\$220,000",
                      "For Sale",
                      "3-4 Beds",
                      ">1000 sqft"
                    ].map((filter) => choiceOption(text: filter)).toList(),
                  ),
                ),
                addVerticleSpace(padding),
                Expanded(
                  child: ListView.builder(
                      itemCount: Sample_Data.length,
                      itemBuilder: (context, index) {
                        return RealStateItem(itemData: Sample_Data[index]);
                      }
                      ),
                )
              ],
            ),

          )
      ),
    );
  }
}

class choiceOption extends StatelessWidget {
  final String text;

  const choiceOption({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      margin: EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
          color: COLOR_Grey.withAlpha(20),
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Text(
          text,
          style: themeData.textTheme.headline5,
        ),
      ),
    );
  }
}

class RealStateItem extends StatelessWidget {
  final dynamic itemData;

  const RealStateItem({super.key, this.itemData});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(itemData["image"])),
              const Positioned(
                  top: 15,
                  right: 15,
                  child: BorderIcon(
                    height: 50,
                    width: 50,
                    child: Icon(Icons.favorite_border,color: COLOR_Black,),
                  ))
            ],
          ),
          addVerticleSpace(20),
          Row(
            children: [
              Text(
                "${formatCurrency(itemData['amount'])}",
                style: themeData.textTheme.headline1,
              ),
              addHorizontleSpace(15),
              Text(
                "${itemData["address"]}",
                style: themeData.textTheme.bodyText2,
              ),
            ],
          ),
          addVerticleSpace(10),
          Text(
            "${itemData["bedroom"]}bedroom / ${itemData["bathroom"]}bathroom / ${itemData["area"]}sqft",
            style: themeData.textTheme.headline5,
          )
        ],
      ),
    );
  }
}
