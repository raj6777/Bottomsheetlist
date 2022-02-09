import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("bottomlist"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.blue,
        onPressed: () => showModalBottomSheet(
          context: context,
          builder: (BuildContext context) => Container(
            padding: const EdgeInsets.all(10.0),
            height: 500,
            //color: Colors.blue[200],
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Add Task',
                  ),
                  GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child:
                        Image.asset('assets/img/1.png', height: 15, width: 15),
                  ),
                ],
              ),
              Divider(
                thickness: 1.2,
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Image.asset(
                    'assets/img/5.png',
                    height: 10,
                    width: 10,
                  ),
                  filled: false,
                  hintText: 'Create Experiance',
                  hintStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  prefixIcon:
                      Image.asset('assets/img/6.png', height: 10, width: 10),
                  filled: false,
                  hintText: 'Create Community',
                  hintStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  prefixIcon:
                      Image.asset('assets/img/4.png', height: 10, width: 10),
                  filled: false,
                  hintText: 'Create Watch',
                  hintStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  filled: false,
                  prefixIcon:
                      Image.asset('assets/img/3.png', height: 10, width: 10),
                  hintText: 'Create Bucket',
                  hintStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  prefixIcon: ImageIcon(AssetImage('assets/img/2.png'),
                      size: 10, color: Colors.black),
                  filled: false,
                  hintText: 'Become an Artist',
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
