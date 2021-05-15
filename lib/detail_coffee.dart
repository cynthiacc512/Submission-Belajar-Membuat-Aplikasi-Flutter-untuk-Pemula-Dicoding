import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class DetailCoffee extends StatelessWidget {
  // final CoffeeList coffee;

  // //constructor
  // DetailCoffee({@required this.coffee});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraits) {
      if (constraits.maxWidth > 800) {
        //return DetailWebPage(list: list);
      } else {
        // return DetailMobilePage(coffee: coffee);
        return DetailMobilePage();
      }
    });
  }
}

class CounterCart extends StatefulWidget {
  @override
  _CounterCartPlusMinus createState() => _CounterCartPlusMinus();
}

class _CounterCartPlusMinus extends State<CounterCart> {
  int _counter = 0;

  void _incrementCount() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCount() {
    setState(() {
      if (_counter != 0) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: <Widget>[
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 300,
                    left: 24,
                    right: 15,
                    bottom: 24,
                  ),
                  child: FloatingActionButton(
                    child: Icon(
                      Icons.remove,
                      color: Colors.black,
                    ),
                    backgroundColor: Colors.white,
                    onPressed: _decrementCount,
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 300,
                    left: 15,
                    bottom: 24,
                  ),
                  child: Text(
                    '$_counter',
                    style: TextStyle(
                      fontSize: 12.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 300,
                    left: 24,
                    bottom: 24,
                  ),
                  child: FloatingActionButton(
                    child: Icon(
                      Icons.add,
                      color: Colors.black,
                    ),
                    backgroundColor: Colors.white,
                    onPressed: _incrementCount,
                  ),
                ),
              ),
              Container(
                child: Padding(
                    padding: const EdgeInsets.only(
                      top: 300,
                      left: 64,
                      bottom: 24,
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Buy Now!!'),
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DetailMobilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // Biar bisa di scroll
        child: SingleChildScrollView(
          child: Column(
            //crossAxisAlignment biar memaksimalkan ukuran lebar dari kolomnya
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // Bikin stack buat icon
              Stack(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'img/caffe_latte.jpg',
                        height: 400,
                      ),
                    ],
                  ),
                  // Kasih SafeArea biar aman :)
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      // bikin row dan mainaxiselemnt dg maksud fav button sejajar dg back
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: IconButton(
                              icon: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                //Biar berfungsi back
                                Navigator.pop(context);
                              },
                            ),
                          ),

                          // Nama menu
                          Container(
                            margin: EdgeInsets.only(
                              top: 18.0,
                              left: 24,
                            ),
                            child: Text(
                              'Caffe Latte',
                              //coffee.name,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 14.0,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              // Harga
              Container(
                margin: EdgeInsets.only(
                  top: 8.0,
                  left: 24.0,
                  bottom: 24.0,
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 36.0,
                      child: Icon(
                        Icons.payments,
                        color: Colors.green,
                      ),
                    ),
                    Text(
                      //coffee.prices[0],
                      'Rp 26.000',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: HexColor('f2dac3'),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Description
                    Container(
                      margin: EdgeInsets.only(
                        top: 8.0,
                        left: 24.0,
                        bottom: 14.0,
                      ),
                      child: Text(
                        //coffee.description,
                        'Description',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 14.0,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 8.0,
                        left: 24.0,
                      ),
                      child: Text(
                        //coffee.description,
                        'Our dark, rich espresso balanced with steamed milk and a light layer of foam. A perfect milk forward warm up.',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 12.0,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                    ),
                    CounterCart(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
