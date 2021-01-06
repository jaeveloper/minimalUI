import 'package:flutter/material.dart';
import 'package:minimal/top2ndScreen.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21BFBD),
      body: ListView(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 15, left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back_ios),
                color: Colors.white,
                onPressed: () {},
              ),
              Container(
                width: 125,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.filter_list),
                      color: Colors.white,
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.menu),
                      color: Colors.white,
                      onPressed: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 15, left: 30),
          child: Row(
            children: <Widget>[
              Text(
                'Healthy',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'Montserrat',
                    fontSize: 30),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'Food',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                  fontSize: 30,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          height: ((MediaQuery.of(context).size.height) - 100),
          decoration: BoxDecoration(
            
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75))),
          child: ListView(
            primary: false,
            padding: EdgeInsets.only(left: 25, right: 20),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 45),
                child: Container(
                  height: MediaQuery.of(context).size.height - 100,
                  child: ListView(
                    children: <Widget>[
                      _buildFoodItem(
                          'assets/plate1.png', 'Salmon bowl', '\$24.00'),
                      _buildFoodItem(
                          'assets/plate2.png', 'Spring bowl', '\$22.00'),
                      _buildFoodItem(
                          'assets/plate6.png', 'Avocado bowl', '\$26.00'),
                      _buildFoodItem(
                          'assets/plate5.png', 'Berry bowl', '\$24.00'),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            height: 65,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.black,
                                  style: BorderStyle.solid,
                                  width: 1,
                                )),
                            child: Center(
                              child: Icon(Icons.search, color: Colors.black),
                            ),
                          ),
                          Container(
                            height: 65,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.black,
                                  style: BorderStyle.solid,
                                  width: 1,
                                )),
                            child: Center(
                              child: Icon(Icons.search, color: Colors.black),
                            ),
                          ),
                          Container(
                            height: 65,
                            width: 120,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.black,
                                  style: BorderStyle.solid,
                                  width: 1,
                                )),
                            child: Center(
                              child: Text('Checkout',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Montserrat',
                                  )),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    ));}

Widget _buildFoodItem(String imgPath, String foodName, String price) {
  return Padding(
    padding: EdgeInsets.only(left: 10, right: 10, top: 10),
    child: InkWell(
      onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => TopIII(
                heroTag: imgPath, foodName: foodName, foodPrice: price)));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children : <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Hero(
                  tag: imgPath,
                  child: Image(
                    image: AssetImage(imgPath),
                    fit: BoxFit.cover,
                    height: 75,
                    width: 75,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      foodName,
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      price,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          IconButton(
            icon: Icon(Icons.add),
            color: Colors.black,
            onPressed: () {},
          )
        ],
      ),
    ),
  );
  }
}
