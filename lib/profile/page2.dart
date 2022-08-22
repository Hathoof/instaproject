import 'package:flutter/material.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:myproject/data.dart';
import 'package:myproject/explorer/page3.dart';
import 'package:myproject/homepage/page1.dart';

class profile extends StatefulWidget {
  final String profileimage;
  final String user;
  final String location;
  profile({
    required this.profileimage,
    required this.user,
    required this.location
  });

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Text(
          widget.user,
          style: TextStyle(fontSize: 27),
        ),
        actions: [
          Icon(
            Icons.add_circle_outline,
            size: 35,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.reorder,
            size: 35,
          )
        ],
        elevation: 0,
      ),
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 2,
          ),
          Container(
            height: MediaQuery.of(context).size.height - 175,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          child: Stack(
                            children: [
                              Stack(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 0),
                                    child: Container(
                                      margin:
                                      EdgeInsets.symmetric(horizontal: 5),
                                      height: 110,
                                      width: 110,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(55),
                                          gradient: LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                              colors: [
                                                Color(0xFF56019A),
                                                Color(0xFF9A0197),
                                                Color(0xFFFF3200),
                                                Color(0xFFFA4E06),
                                                Color(0xFFE3E012)
                                              ])),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 5, left: 10),
                                    child: CircleAvatar(
                                      radius: 50,
                                      backgroundColor: Colors.white,
                                      backgroundImage: NetworkImage(
                                          widget.profileimage),
                                    ),
                                  )
                                ],
                              ),
                              Positioned(
                                  right: 5,
                                  bottom: 5,
                                  child: Stack(
                                    children: [
                                      CircleAvatar(
                                        radius: 20,
                                        backgroundColor: Colors.black,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 5, left: 5),
                                        child: CircleAvatar(
                                          radius: 15,
                                          backgroundColor: Color(0xff0052a9),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        EdgeInsets.only(top: 5, left: 5),
                                        child: Icon(
                                          Icons.add,
                                          size: 30,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  )),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [number(6, 450, 362), info()],
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, right: 240),
                      child: Text(
                        "𖤍 𝐻𝐴𝑇𝐻𝑂𝑂𝐹  𖤍",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 3, right: 200),
                      child: Text(
                        "𝘌𝘕𝘎 - 𝘔𝘌𝘊𝘏𝘈𝘛𝘙𝘖𝘕𝘐𝘊𝘚\n"
                            "𝘉𝘈𝘎𝘏𝘋𝘈𝘋\n"
                            "𝘔𝘈𝘠  𝟷𝟽\n"
                            "𝘜.𝘖.𝘉 \n"
                            "𝘌𝘚𝘛𝘑 -𝘈",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xFF3F3F3F),
                                  borderRadius: BorderRadius.circular(8)),
                              height: 35,
                              width: 350,
                              child: Center(
                                child: Text(
                                  "Edit profile",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            )),
                        SizedBox(
                          width: 5,
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xFF3F3F3F),
                                  borderRadius: BorderRadius.circular(8)),
                              height: 35,
                              width: 35,
                              child: Center(
                                  child: Icon(
                                    Icons.person_add_outlined,
                                    size: 25,
                                    color: Colors.white,
                                  )),
                            )),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text(
                                    "Story highlights",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.white),
                                  ),
                                ),
                                SizedBox(
                                  width: 180,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Icon(
                                    Icons.keyboard_arrow_up,
                                    size: 25,
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5, left: 10),
                          child: Text(
                            "Keep your favorite stories on your ptofile",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 120,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20.0),
                                child: Column(
                                  children: [
                                    firsthigh(),
                                    Padding(
                                      padding:
                                      EdgeInsets.only(top: 2, right: 0),
                                      child: Text(
                                        "New",
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.white),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              hightlight(),
                              hightlight(),
                              hightlight(),
                              hightlight(),
                              hightlight(),
                              hightlight(),
                              hightlight(),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 15, right: 0),
                            child: Icon(
                              Icons.grid_view_outlined,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 140,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15, right: 0),
                            child: Icon(
                              Icons.account_box_outlined,
                              size: 30,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                      child: GridView.count(
                        crossAxisCount: 3,
                        crossAxisSpacing: 2,
                        mainAxisSpacing: 2,
                        children: [
                          posts("images/pic1.jpg"),
                          posts("images/pic2.jpg"),
                          posts("images/pic3.jpg"),
                          posts("images/pic4.jpg"),
                          posts("images/pic5.jpg"),
                          posts("images/pic6.jpg")
                        ],
                      ),
                    )
                  ],
                )
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
              child: Icon(Icons.home_filled,color: Colors.white,),
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=> homepage()
                    )
                );
              },
            )),
        CustomNavigationBarItem(
            icon: GestureDetector(
              child: Icon(Icons.search,color: Colors.white,),
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=> explorer()
                    )
                );
              },
            )),
        CustomNavigationBarItem(
            icon: GestureDetector(
              child: Icon(Icons.movie_creation_outlined,color: Colors.white,),
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=> homepage()
                    )
                );
              },
            )),
        CustomNavigationBarItem(
            icon: GestureDetector(
              child: Icon(Icons.favorite_border,color: Colors.white,),
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=> homepage()
                    )
                );
              },
            )),
        CustomNavigationBarItem(
            icon: GestureDetector(
              child: Icon(Icons.account_circle,color: Colors.white,),
              onTap: (){
                Navigator.of(context).pop(
                    MaterialPageRoute(builder: (context)=> profile(location: location,profileimage: "",user: user)
                    )
                );
              },
            )),
      ],
    );
  }

  Stack firsthigh() {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 0),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40), color: Colors.white),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 2, left: 7),
          child: CircleAvatar(
            radius: 38,
            backgroundColor: Colors.black,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20, left: 25),
          child: Icon(
            Icons.add,
            size: 40,
            color: Colors.white,
          ),
        )
      ],
    );
  }

  Padding hightlight() {
    return Padding(
      padding: EdgeInsets.all(5),
      child: CircleAvatar(
        radius: 40,
        backgroundColor: Color(0xFF2A2A2A),
      ),
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

  Row info() {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 0),
          child: Text(
            "Posts",
            style: TextStyle(
                fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          width: 35,
        ),
        Padding(
          padding: EdgeInsets.only(top: 0),
          child: Text(
            "Followers",
            style: TextStyle(
                fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          width: 30,
        ),
        Padding(
          padding: EdgeInsets.only(top: 0),
          child: Text(
            "Following",
            style: TextStyle(
                fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }

  Row number(int postsnumber, int followersnumber, int followingnumber) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "$postsnumber",
          style: TextStyle(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: 63,
        ),
        Text(
          "$followersnumber",
          style: TextStyle(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: 62,
        ),
        Text(
          "$followingnumber",
          style: TextStyle(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
