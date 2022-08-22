import 'package:flutter/material.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:myproject/data.dart';
import 'package:myproject/homepage/page1.dart';
import 'package:myproject/profile/page2.dart';

class explorer extends StatefulWidget {
  const explorer({Key? key}) : super(key: key);

  @override
  State<explorer> createState() => _explorerState();
}

class _explorerState extends State<explorer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 10, width: MediaQuery
              .of(context)
              .size
              .width,
            color: Colors.black,
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            width: MediaQuery
                .of(context)
                .size
                .width,
            height: MediaQuery
                .of(context)
                .size
                .height - 71,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Center(
                  child: Container(
                    height: 40, width: MediaQuery
                      .of(context)
                      .size
                      .width - 40,
                    decoration: BoxDecoration(
                        color: Color(0xFF2A2A2A),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Icon(Icons.search, size: 30, color: Color(
                              0xFF676767),),),
                        Padding(padding: EdgeInsets.all(0),
                            child: Text("Search", style: TextStyle(fontSize: 21,
                                color: Color(0xFF676767),
                                fontWeight: FontWeight.w500),))
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                line1(),
                SizedBox(
                  height: 2,
                ),
                line2(),
                SizedBox(
                  height: 2,
                ),
                line1(),
                SizedBox(
                  height: 2,
                ),
                line2(),
                SizedBox(
                  height: 2,
                ),
                line1(),
                SizedBox(
                  height: 2,
                ),
                line2(),
                SizedBox(
                  height: 2,
                ),
                line1(),
                SizedBox(
                  height: 2,
                ),
                line2(),
                SizedBox(
                  height: 2,
                ),

              ],
            ),
          ),
          buildTitle()
        ],
      ),
    );
  }

  Widget buildTitle() {
    return CustomNavigationBar(
      iconSize: 33.0,
      selectedColor: Color(0xffffffff),
      strokeColor: Color(0xffffffff),
      unSelectedColor: Color(0xffffffff),
      backgroundColor: Colors.black,
      items: [
        CustomNavigationBarItem(
            icon: GestureDetector(
              child: Icon(Icons.home_filled, color: Colors.white,),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => homepage()
                    )
                );
              },
            )),
        CustomNavigationBarItem(
            icon: GestureDetector(
              child: Icon(Icons.search, color: Colors.white,),
              onTap: () {
                Navigator.of(context).pop(
                    MaterialPageRoute(builder: (context) => homepage()
                    )
                );
              },
            )),
        CustomNavigationBarItem(
            icon: GestureDetector(
              child: Icon(Icons.movie_creation_outlined, color: Colors.white,),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => explorer()
                    )
                );
              },
            )),
        CustomNavigationBarItem(
            icon: GestureDetector(
              child: Icon(Icons.favorite_border, color: Colors.white,),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => homepage()
                    )
                );
              },
            )),
        CustomNavigationBarItem(
            icon: GestureDetector(
              child: Icon(Icons.account_circle, color: Colors.white,),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => profile(location: "",profileimage: "",user: "")
                    )
                );
              },
            )),
      ],
    );
  }

  Container posts(String location) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          image:
          DecorationImage(fit: BoxFit.cover, image: AssetImage(location))),
    );
  }

  Container post(String url) {
    return Container(
      height: 251, width: 150,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(url),
            fit: BoxFit.cover
        ),
      ),
    );
  }

  Row line1() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 250,
          height: 251,
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 2,
            mainAxisSpacing: 2,
            children: [
              posts("images/pic1.jpg"),
              posts("images/pic2.jpg"),
              posts("images/pic3.jpg"),
              posts("images/pic4.jpg"),
            ],
          ),
        ),
        SizedBox(
          width: 2,
        ),
        post(psteimages),

      ],
    );
  }

  Row line2() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        post("https://wallpaperaccess.com/full/3779507.png"),
        SizedBox(
          width: 3,
        ),
        Container(
          width: 250,
          height: 251,
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 2,
            mainAxisSpacing: 3,
            children: [
              posts("images/pic1.jpg"),
              posts("images/pic2.jpg"),
              posts("images/pic3.jpg"),
              posts("images/pic4.jpg"),
            ],
          ),
        ),

      ],
    );
  }

}
