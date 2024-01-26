import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:untitled123/view/screen/day12.dart';

class Aaaaa extends StatefulWidget {
  Aaaaa({super.key});

  @override
  State<Aaaaa> createState() => _AaaaaState();
}

class _AaaaaState extends State<Aaaaa> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.deepPurple,
            title: Text(
              'متجر',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[200]),
                  child: TabBar(
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color.fromARGB(255, 85, 80, 65)),
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.black,
                      tabs: [
                        Tab(
                          child: Icon(Icons.store_sharp),
                        ),
                        Tab(
                          child: Icon(Icons.favorite),
                        ),
                        Tab(
                          child: Icon(Icons.settings),
                        ),
                      ]),
                ),
              ),
              Expanded(
                child: TabBarView(children: [
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return MyWidget();
                          },
                        ));
                        // AwesomeDialog(
                        //   context: context,
                        //   dialogType: DialogType.success,
                        //   animType: AnimType.topSlide,
                        //   title: 'Dialog Title',
                        //   desc: 'Dialog description here.............',
                        //   btnCancelOnPress: () {},
                        //   btnOkOnPress: () {},
                        // )..show();
                      },
                      child: Text('data'),
                    ),
                  ),
                  Center(
                      child: Text(
                    'data',
                    style: GoogleFonts.alkalami(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  )),
                  Text('data'),
                ]),
              )
            ],
          ),
          bottomNavigationBar: SalomonBottomBar(
            currentIndex: _currentIndex,
            onTap: (i) => setState(() => _currentIndex = i),
            items: [
              /// Home
              SalomonBottomBarItem(
                icon: Icon(Icons.home),
                title: Text("Home"),
                selectedColor: Colors.purple,
              ),

              /// Likes
              SalomonBottomBarItem(
                icon: Icon(Icons.favorite_border),
                title: Text("Likes"),
                selectedColor: Colors.pink,
              ),

              /// Search
              SalomonBottomBarItem(
                icon: Icon(Icons.search),
                title: Text("Search"),
                selectedColor: Colors.orange,
              ),

              /// Profile
              SalomonBottomBarItem(
                icon: Icon(Icons.person),
                title: Text("Profile"),
                selectedColor: Colors.teal,
              ),
            ],
          ),

          //  TabBarView(children: [

          //   Icon(Icons.favorite),
          //   Icon(Icons.favorite),
          //   Icon(Icons.settings),
          // ]),
        ),
      ),
    );
  }
}
