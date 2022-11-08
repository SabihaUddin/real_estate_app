import 'package:flutter/material.dart';
import 'package:real_estate/profile_design.dart';
import 'package:real_estate/utilis/consant.dart';

import 'custom/borderIcon.dart';

class DesignPage extends StatelessWidget {
  const DesignPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            Icons.mic,
            size: 35,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          clipBehavior: Clip.antiAlias,
          elevation: 7,
          notchMargin: 8,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    size: 30,
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.flight_takeoff_sharp,
                    size: 30,
                  ),
                  label: 'My flight'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    size: 25,
                  ),
                  label: 'Voice'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.textsms_outlined,
                    size: 30,
                  ),
                  label: 'Support'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.menu,
                    size: 30,
                  ),
                  label: 'Menu'),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: double.infinity,
                    height: 220,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/airplane.jpg"),
                          fit: BoxFit.cover),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          TextIcon(
                              text: Text(
                                'বাংলা',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              height: 30,
                              width: 70),
                          BorderIcon(
                              height: 40,
                              width: 40,
                              child: Center(child: Icon(Icons.notifications)))
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top:70,
                    child: Container(
                      height: 240,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Card(
                          color: Colors.white.withOpacity(.7),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 5,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(),
                                      const Expanded(
                                        child: CircleAvatar(
                                          backgroundColor: COLOR_Grey,
                                          radius: 40,
                                        ),
                                      ),
                                      const TextIcon(
                                          text: Text(
                                            'Edit',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          height: 30,
                                          width: 70)
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    'Sabiha Uddin',
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: COLOR_Black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    'Phone Number:01791744839',
                                    style: TextStyle(
                                        color: COLOR_Grey, fontSize: 15),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 100,),
              Padding(
                padding: const EdgeInsets.only(left: 25,right: 25),
                child: Column(
                  children: [
                    itemList()
                  ],
                ),
              )
            ],
          ),
        ),

      ),
    );
  }
}
