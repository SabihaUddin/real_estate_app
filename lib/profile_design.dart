
import 'package:flutter/material.dart';
import 'package:real_estate/custom/borderIcon.dart';
import 'package:real_estate/utilis/consant.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          floatingActionButton: FloatingActionButton(

            onPressed: () {},
            child: const Icon(Icons.mic,size: 35,),

          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar:BottomAppBar(
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
                BottomNavigationBarItem(icon: Icon(Icons.home,size: 30,),label: 'Home'),
                BottomNavigationBarItem(icon: Icon(Icons.flight_takeoff_sharp,size: 30,),label: 'My flight'),
                BottomNavigationBarItem(icon: Icon(Icons.home,size: 25,),label: 'Voice'),
                BottomNavigationBarItem(icon: Icon(Icons.textsms_outlined,size: 30,),label: 'Support'),
                BottomNavigationBarItem(icon: Icon(Icons.menu,size: 30,),label: 'Menu'),
              ],

            ),
          ),
          body: Container(
            child: Column(
              children: [
                Stack(
                  children: [
                    Column(children: [
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
                    ]),
                    Positioned(
                      bottom: 290,
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
                                  children: const [
                                    CircleAvatar(
                                      backgroundColor: COLOR_Grey,
                                      radius: 40,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Sabiha Uddin',
                                      style: TextStyle(
                                          fontSize: 22,
                                          color: COLOR_Black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Phone Number:01791744839',
                                      style:
                                          TextStyle(color: COLOR_Grey, fontSize: 15),
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

                itemList()
              ],
            ),
          ),
      ),

    );
  }
}

class TextIcon extends StatelessWidget {
  final Widget text;
  final double height, width;

  const TextIcon(
      {super.key,
      required this.text,
      required this.height,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: COLOR_White, width: 2),
      ),
      child: Center(
        child: text,
      ),
    );
  }
}

class BottomIcon extends StatelessWidget {
  final Widget icon;
  final Widget text;

  const BottomIcon({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: COLOR_Grey,
      child: Column(
        children: [
          IconButton(onPressed: () {}, icon: icon),
          const SizedBox(
            height: 10,
          ),
          text
        ],
      ),
    );
  }
}
Widget itemList(){
  final menuPageItem=[
'History','Mujib Room','Airport Hajj Control Room','Senior Citizen Corner','Emergency Contact Number'
  ];
  final icons=[Icons.history,Icons.person,Icons.person,Icons.wheelchair_pickup,Icons.emergency];
return ListView.builder(
    scrollDirection: Axis.vertical,
    shrinkWrap: true,
  itemCount: menuPageItem.length,
    itemBuilder: (context,index){
  return Row(
    children: [
      CircleAvatar(backgroundColor: Colors.grey,
        radius: 25,child: Icon(icons[index],
        ),),
      Column(
        children: [
          Text(menuPageItem[index],style: const TextStyle(fontSize: 16)),
          const SizedBox(height: 10,),
          const Divider(height: 20,
            color: COLOR_Grey,),


        ],
      )
    ],
  );
});
}
