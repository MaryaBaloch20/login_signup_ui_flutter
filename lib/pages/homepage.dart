import 'package:flutter/material.dart';
import 'package:login_drawer_signup_ui_flutter/main.dart';
import 'package:login_drawer_signup_ui_flutter/widgets/drawer.dart';

class Homepage extends StatefulWidget {
  Homepage({super.key, required this.female, required this.male});
  bool male, female = false;

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext buildContext) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.green),
        home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              title: const Center(child: Text("19SW20")),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.settings,
                      size: 30,
                    ))
              ],
              bottom: const TabBar(
                tabs: [
                  Tab(
                      child: Icon(
                    Icons.person,
                  )),
                  Tab(
                      child: Icon(
                    Icons.contact_mail,
                  )),
                  Tab(
                      child: Icon(
                    Icons.info,
                  ))
                ],
              ),
            ),
            drawer: MyDrawer(),
            body: TabBarView(children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                      color: Colors.green.shade300,
                      // padding: const EdgeInsets.all(10.0),
                      margin: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 30.0),
                      child: const ListTile(
                        leading: Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        title: Text(
                          "Marya Baloch",
                          style: TextStyle(
                            fontFamily: 'Sans Pro',
                            fontSize: 22.0,
                          ),
                        ),
                      )),
                  Card(
                      color: Colors.green.shade300,
                      // padding: const EdgeInsets.all(10.0),
                      margin: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 30.0),
                      child: const ListTile(
                        leading: Icon(
                          Icons.numbers,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        title: Text(
                          "19SW20",
                          style: TextStyle(
                            fontFamily: 'Sans Pro',
                            fontSize: 22.0,
                          ),
                        ),
                      )),
                  Card(
                      color: Colors.green.shade300,
                      // padding: const EdgeInsets.all(10.0),
                      margin: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 30.0),
                      child: const ListTile(
                        leading: Icon(
                          Icons.place,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        title: Text(
                          "Section 2",
                          style: TextStyle(
                            fontFamily: 'Sans Pro',
                            fontSize: 22.0,
                          ),
                        ),
                      )),
                  const SizedBox(height: 15),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        minimumSize:
                            MaterialStateProperty.all(const Size(100, 50)),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.green)),
                    child: const Text(
                      "Click Me",
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              ),
              Center(
                // child: Text("This is Contact Page"),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      const Text(
                        "Male",
                        style: TextStyle(fontSize: 30),
                      ),
                      Transform.scale(
                        scale: 1.5,
                        child: Checkbox(
                            value: widget.male,
                            onChanged: (bool? value) {
                              setState(() {
                                widget.male = value!;
                              });
                            }),
                      )
                    ]),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      const Text(
                        "Female",
                        style: TextStyle(fontSize: 30),
                      ),
                      Transform.scale(
                        scale: 1.5,
                        child: Checkbox(
                            value: widget.female,
                            onChanged: (bool? value) {
                              setState(() {
                                widget.female = value!;
                              });
                            }),
                      )
                    ]),
                  ],
                ),
              ),
              GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                children: const [
                  FlutterLogo(),
                  FlutterLogo(),
                  FlutterLogo(),
                  FlutterLogo(),
                  FlutterLogo(),
                  FlutterLogo(),
                  FlutterLogo(),
                  FlutterLogo(),
                ],
              )
              // Center(
              //   child: GridView(
              //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //         crossAxisCount: 2),
              //     children: <Widget>[
              //       FlutterLogo(),
              //       FlutterLogo(),
              //       FlutterLogo(),
              //       FlutterLogo(),
              //     ],
              //   ),
              // ),
            ]),
            bottomNavigationBar: BottomNavigationBar(
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.gamepad),
                  label: "profile",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.policy),
                  label: "Info",
                ),
              ],
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.camera),
            ),
          ),
        ));
  }
}
