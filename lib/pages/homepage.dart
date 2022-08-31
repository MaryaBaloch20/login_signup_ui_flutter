import 'package:flutter/material.dart';
import 'package:login_drawer_signup_ui_flutter/widgets/drawer.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext buildContext) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.purple),
        home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              title: const Text("19S"),
              actions: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
              ],
              bottom: const TabBar(
                tabs: [
                  Tab(
                      child: Icon(
                    Icons.chat,
                  )),
                  Tab(child: Icon(Icons.notification_add)),
                  Tab(
                      child: Icon(
                    Icons.settings,
                  ))
                ],
              ),
            ),
            drawer: MyDrawer(),
            body: TabBarView(children: [
              Column(
                children: const [
                  Card(
                    child: ListTile(
                      title: Text("19SW01"),
                      subtitle: Text("You are now connected to this chat."),
                      leading: Icon(
                        Icons.person,
                        size: 30,
                      ),
                      trailing: Icon(
                        Icons.star,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text("Navera"),
                      subtitle: Text("You are now connected to this chat."),
                      leading: Icon(
                        Icons.person,
                        size: 30,
                      ),
                      trailing: Icon(
                        Icons.favorite,
                        color: Colors.pink,
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text("Family Group"),
                      subtitle: Text("You are added to this group by Navera."),
                      leading: Icon(
                        Icons.people,
                        size: 30,
                      ),
                      trailing: Icon(
                        Icons.front_hand,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text("19SW sec 1"),
                      subtitle: Text("You are added to this group by CR."),
                      leading: Icon(
                        Icons.people,
                        size: 30,
                      ),
                      trailing: Icon(
                        Icons.phonelink,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
              Center(
                child: Text("Hello World"),
              ),
              Center(
                child: Text("Hello World"),
              ),
            ]),
            bottomNavigationBar: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.phone),
                  label: "Call",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.policy),
                  label: "Policy",
                ),
              ],
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.add_call),
            ),
          ),
        ));
  }
}
