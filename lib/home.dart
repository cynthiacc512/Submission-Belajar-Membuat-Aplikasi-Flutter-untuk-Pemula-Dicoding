// flutter run -d chrome --web-renderer html
// flutter build web --web-renderer html --release

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:coffee_info/detail_coffee.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Coffee Info!'),
        elevation: 0.0,
        backgroundColor: HexColor('cc9b6d'),
        // Hamburger Menu di kiti
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        // Icon Notif di kanan
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return CoffeeInfoMobile();
            // } else if (constraints.maxWidth <= 1200) {
            //   return CoffeeInfoMobile(gridCount: 4);
            // } else {
            //   return CoffeeInfoMobile(gridCount: 6);
          }
        },
      ),
    );
  }
}

class CoffeeInfoMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: ScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          // Text HELLO, CYNTHIA
          Container(
            margin: EdgeInsets.only(
              top: 12.0,
              left: 24.0,
            ),
            child: Text(
              'Hello, Cynthia',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14.0,
                color: HexColor('1E6993'),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Text 'What do you buy now?'
          Container(
            margin: EdgeInsets.only(
              top: 8.0,
              left: 24.0,
            ),
            child: SingleChildScrollView(
              child: Text(
                'What do you buy now?',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 12.0,
                  color: HexColor('000000'),
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
          //Search
          Container(
            margin: const EdgeInsets.only(
              top: 12.0,
              right: 24.0,
              left: 24.0,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12.0,
                          color: HexColor('737373'),
                          fontWeight: FontWeight.w300,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search Your Coffee Buddy..",
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 8.0,
                        bottom: 8.0,
                        right: 8.0,
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.filter_list,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Our Recommendation
          Container(
            margin: const EdgeInsets.only(
              top: 24.0,
              left: 24.0,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Text(
                'Our Recommendation',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14.0,
                  color: HexColor('000000'),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          //Carousel
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.only(top: 24.0),
              child: InkWell(
                onTap: () {
                  // Code buat pindah hal ke DetailCoffee
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailCoffee();
                  }));
                },
                child: CarouselSlider(
                  items: [
                    // Caffe Latte
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              'Caffe Latte',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14.0,
                                color: HexColor('000000'),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          FavouriteButton(),
                        ],
                      ),
                      height: 250.0,
                      width: 150.0,
                      margin: EdgeInsets.only(right: 6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                          image: AssetImage('img/caffe_latte.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //White Chocolate Mocha
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              'White Chocolate Mocha',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14.0,
                                color: HexColor('FFFFFF'),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          FavouriteButton(),
                        ],
                      ),
                      height: 250.0,
                      width: 150.0,
                      margin: EdgeInsets.only(right: 6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                          image: AssetImage('img/white_chocolate_mocha.webp'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //Freshly Brewed Coffee
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              'Freshly Brewed Coffee',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14.0,
                                color: HexColor('FFFFFF'),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          FavouriteButton(),
                        ],
                      ),
                      height: 250.0,
                      width: 150.0,
                      margin: EdgeInsets.only(right: 6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                          image: AssetImage('img/freshly_brewed_coffee.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],

                  //Slider Container properties
                  options: CarouselOptions(
                    autoPlay: true,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 500),
                    viewportFraction: 0.4,
                  ),
                ),
              ),
            ),
          ),

          // Become a Membership
          Container(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(top: 48.0, left: 24.0),
                child: Text(
                  'Become a Membership',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14.0,
                    color: HexColor('000000'),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),

          //Carousel
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.only(
                top: 24.0,
                bottom: 24.0,
              ),
              child: CarouselSlider(
                items: [
                  // 1
                  Container(
                    height: 100.0,
                    width: 500.0,
                    margin: EdgeInsets.only(right: 6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      // image: DecorationImage(
                      //     image: NetworkImage(
                      //         'https://card.starbucks.co.id/images/0001-min.jpg'),
                      //     fit: BoxFit.cover),

                      // jaga jaga suka ga kebaca kalo pake link
                      image: DecorationImage(
                        image: AssetImage('img/ban1.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  // 2
                  Container(
                    height: 100.0,
                    width: 500.0,
                    margin: EdgeInsets.only(right: 6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      // image: DecorationImage(
                      //     image: NetworkImage(
                      //         'https://www.starbucks.com.hk/media/UnleashtheChocoholicWithin_tcm65-23569_w1024_n.jpg'),
                      //     fit: BoxFit.cover),

                      // jaga jaga suka ga kebaca kalo pake link
                      image: DecorationImage(
                        image: AssetImage('img/ban2.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  // 3
                  Container(
                    height: 100.0,
                    width: 500.0,
                    margin: EdgeInsets.only(right: 6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      // image: DecorationImage(
                      //     image: NetworkImage(
                      //         'https://pinterpoin.com/wp-content/uploads/2020/10/20170508-Starbucks-banner.jpg'),
                      //     fit: BoxFit.cover),

                      // jaga jaga suka ga kebaca kalo pake link
                      image: DecorationImage(
                        image: AssetImage('img/ban3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],

                //Slider Container properties
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.9,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FavouriteButton extends StatefulWidget {
  @override
  _FavouriteButtonState createState() => _FavouriteButtonState();
}

class _FavouriteButtonState extends State<FavouriteButton> {
  bool isFavourite = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          child: IconButton(
            icon: Icon(
              // ternary buat gonta ganti icon
              isFavourite ? Icons.favorite : Icons.favorite_border_outlined,
              color: Colors.red,
            ),
            onPressed: () {
              // setState utk mengubah state
              setState(() {
                isFavourite = !isFavourite;
              });
            },
          ),
        )
      ],
    );
  }
}
