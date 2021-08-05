import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Ecommmerc(),
    );
  }
}


final bool visible = true;

class Ecommmerc extends StatefulWidget {
  @override
  _EcommmercState createState() => _EcommmercState();
}

class _EcommmercState extends State<Ecommmerc>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: 45.0,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
                blurRadius: 15,
                offset: const Offset(0.0, 15.0),
                color: Color(0XFF303030).withAlpha(20))
          ]),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 100.0),
                child: Text(
                  'WINKEL',
                  style: TextStyle(
                    color: Color(0XFF303030),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                width: 430.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 45.0),
                child: Text(
                  'HOME',
                  style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.normal,
                      fontSize: 12),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Center(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'SHOP',
                            style: TextStyle(
                                color: Color(0XFF303030),
                                fontWeight: FontWeight.normal,
                                fontSize: 12),
                          ),
                          IconButton(
                            icon: Icon(Icons.arrow_drop_down),
                            onPressed: () {},
                            color: Color(0XFF303030),
                            iconSize: 14,
                          ),
                        ]),
                  )),
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  'ABOUT',
                  style: TextStyle(
                      color: Color(0XFF303030),
                      fontWeight: FontWeight.normal,
                      fontSize: 12),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  'BLOG',
                  style: TextStyle(
                      color: Color(0XFF303030),
                      fontWeight: FontWeight.normal,
                      fontSize: 12),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  'CONTACT',
                  style: TextStyle(
                      color: Color(0XFF303030),
                      fontWeight: FontWeight.normal,
                      fontSize: 12),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.orange,
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.add_shopping_cart),
                          onPressed: () {},
                          iconSize: 9,
                          color: Colors.white,
                        ),
                        Text(
                          "[0]   ",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 12),
                        )
                      ],
                    ),
                  )),
            ],
          ),
        ),
        SizedBox(
          height: 25.0,
        ),
        Container(
          child: Text(
            "Products",
            style: TextStyle(
                color: Color(0XFF303030),
                fontWeight: FontWeight.bold,
                fontSize: 34),
          ),
        ),
        SizedBox(
          height: 35.0,
        ),
        Container(
          child: Text(
            "Far far away, behind the word mountains, far from the countries Vokalia and Consonantia",
            style: TextStyle(
                color: Color(0XFF303030),
                fontWeight: FontWeight.normal,
                fontSize: 14),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(50.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    MainButton(
                      title: "./assets/images/product-5.jpg",
                      value: visible,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    MainButton(
                      title: "./assets/images/product-6.jpg",
                      value: visible,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    MainButton(
                      title: "./assets/images/product-7.jpg",
                      value: visible,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    MainButton(
                      title: "./assets/images/product-8.jpg",
                      value: visible,
                    ),
                  ],
                )),
          ),
        )
      ],
    ));
  }
}

class MainButton extends StatelessWidget {
  const MainButton({Key key, @required this.title, @required this.value})
      : super(key: key);

  final String title;
  final bool value;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              blurRadius: 15,
              offset: const Offset(5.0, 0.0),
              color: Color(0XFF303030).withAlpha(20))
        ]),
        width: 270.0,
        child: Column(
          children: [
            InkWell(
              onHover: (title) {
                if (title) {
                  visible == false;
                } else {
                  visible == true;
                }
              },
              onTap: () {
                print("object");
              },
              child: Container(
                height: 350.0,
                width: 270.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage(title))),
                child: Column(
                  children: [
                    SizedBox(
                      height: 15.0,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: 35,
                        width: 70,
                        decoration: BoxDecoration(color: Colors.orange),
                        child: Center(
                          child: Text(
                            "-25%",
                            style: TextStyle(
                              color: Color(0XFF303030),
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 210,
                    ),
                    Offstage(
                      offstage: value,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                ),
                                child: Center(
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 2.5,
                                      ),
                                      Text(
                                        'ADD TO CARD',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 11),
                                      ),
                                      IconButton(
                                        icon: Icon(Icons.add),
                                        onPressed: () {},
                                        color: Colors.white,
                                        iconSize: 14,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: Center(
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 2.5,
                                      ),
                                      Text(
                                        'BUY NOW',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 11),
                                      ),
                                      IconButton(
                                        icon: Icon(Icons.shopping_cart),
                                        onPressed: () {},
                                        color: Colors.black,
                                        iconSize: 14,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 120,
              width: 270,
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text("FLORAL JACKQUARD "),
                        ),
                        SizedBox(
                          height: 1.0,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text("PULLOVER "),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 5),
                    child: Row(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '\$120.00',
                            style: TextStyle(
                              color: Colors.black38,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 9.0,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '\$80.00',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "W W W W W",
                              style: TextStyle(color: Colors.orange),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

