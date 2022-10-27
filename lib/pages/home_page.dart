import 'package:flutter/material.dart';
import 'package:real_estate/custom/borderIcon.dart';
import 'package:real_estate/utilis/consant.dart';
import 'package:real_estate/utilis/widget_function.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size=MediaQuery.of(context).size;
    const double padding =25;
    final ThemeData themeData=Theme.of(context);
    final sidePadding=EdgeInsets.symmetric(horizontal: padding);
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
                        height:50,
                        width:50,
                        child: Icon(Icons.menu)),
                    BorderIcon(
                        height: 50,
                        width: 50
                        ,child: Icon(Icons.settings))
                  ],
                ),
              ),
              addVerticleSpace(padding),
              Padding(
                padding: sidePadding,
                child: Text('City',style:themeData.textTheme.bodyText2 ,),
              ),
              addVerticleSpace(padding),
              Padding(
                padding: sidePadding,
                child: Text('San Francisco',style: themeData.textTheme.headline1,),
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
    final ThemeData themeData=Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: COLOR_Grey.withAlpha(20),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),

        child: Text(text,style: themeData.textTheme.headline5,),
      ),
    );
  }
}

