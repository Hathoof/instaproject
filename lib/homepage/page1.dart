import 'package:flutter/material.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:myproject/data.dart';
import 'package:myproject/explorer/page3.dart';
import 'package:myproject/profile/page2.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Text(
          "Instagram",
          style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontFamily: 'da',
              fontWeight: FontWeight.bold),
        ),
        actions: [
          Icon(
            Icons.add_box_outlined,
            size: 35,
            color: Colors.white,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.sms_outlined,
            size: 35,
            color: Colors.white,
          )
        ],
        elevation: 0,
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: 2,
          ),
          Container(
            height: MediaQuery.of(context).size.height-165,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Column(
                  children: [
                    Container(
                      height: 105,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          addstory("Your story"),
                          stores(
                              "https://instagram.fbgw41-1.fna.fbcdn.net/v/t51.2885-15/271215992_788583432102288_6913548293659810327_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fbgw41-1.fna.fbcdn.net&_nc_cat=100&_nc_ohc=hVZQ0k0NgHkAX-vGy8u&edm=AGW0Xe4BAAAA&ccb=7-5&oh=00_AT8Hxx8sySiVlUsOpjjtD8R0D9kdjz-fF13_B5GkqOKGmg&oe=63087894&_nc_sid=acd11b",
                              "nikaso"),
                          stores(
                              "https://dnascholarship.com/assets/img/mylogo.png",
                              "dnascholarship"),
                          stores(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNYnFgYC9pJ5wC7HZd-VxX8_BUqO1XzkZhhmFU8YQttph1ttZp-J4JjLLN5Cwje6KIKDw&usqp=CAU",
                              ""),
                          stores(
                              "https://cdn.icon-icons.com/icons2/2643/PNG/512/male_boy_person_people_avatar_icon_159358.png",
                              ""),
                          stores(
                              "https://cdn-icons-png.flaticon.com/512/147/147144.png",
                              ""),
                          stores(
                              "https://img2.arabpng.com/20180319/pde/kisspng-computer-icons-icon-design-avatar-flat-face-icon-5ab06e33bee962.122118601521511987782.jpg",
                              ""),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    post(
                        "https://i.ytimg.com/vi/0CbY49kXBZ4/maxresdefault.jpg",
                        "https://instagram.fbgw41-1.fna.fbcdn.net/v/t51.2885-19/292024866_469117338354242_5821172568342459330_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fbgw41-1.fna.fbcdn.net&_nc_cat=102&_nc_ohc=cFLldDKVLeUAX-LTlVX&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AT99eseB_X-POMW_VOhLX4OkXkFDAv2WTd5DdLTZoMz4BA&oe=63083C27&_nc_sid=8fd12b",
                        "al.jubory_",
                        "U.O.Baghdad",
                        542,
                        36),
                    post(
                        "https://sevenluxury.ae/uploads/car/16521444396279b937072562.17909848.jpg",
                        "https://instagram.fbgw41-1.fna.fbcdn.net/v/t51.2885-15/271215992_788583432102288_6913548293659810327_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fbgw41-1.fna.fbcdn.net&_nc_cat=100&_nc_ohc=hVZQ0k0NgHkAX-vGy8u&edm=AGW0Xe4BAAAA&ccb=7-5&oh=00_AT8Hxx8sySiVlUsOpjjtD8R0D9kdjz-fF13_B5GkqOKGmg&oe=63087894&_nc_sid=acd11b",
                        "nikazo",
                        "Erbil",
                        780,
                        69),
                    post(
                        "https://dnascholarship.com/assets/img/mylogo.png",
                        "https://dnascholarship.com/assets/img/mylogo.png",
                        "dnascholarship",
                        "Zain Iraq",
                        780,
                        69)
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
                Navigator.of(context).pop(
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
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=> profile(location: location,profileimage: "",user: user)
                    )
                );
              },
            )),
      ],
    );
  }

  Column addstory(String storyuser){
    return Column(
      children: [
        Container(
          height: 85,
          width: 90,
          child: Stack(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 0),
                    child: Container(
                      margin:
                      EdgeInsets.symmetric(horizontal: 5),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.circular(40),
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color(0xFF56019A),
                                Color(0xFF9A0197),
                                Color(0xFFFF3200),
                                Color(0xFFFAC106),
                                Color(0xFFE3E012)
                              ])),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5, left: 10),
                    child: CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                          "https://instagram.fbgw41-1.fna.fbcdn.net/v/t51.2885-19/292024866_469117338354242_5821172568342459330_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fbgw41-1.fna.fbcdn.net&_nc_cat=102&_nc_ohc=cFLldDKVLeUAX-LTlVX&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AT99eseB_X-POMW_VOhLX4OkXkFDAv2WTd5DdLTZoMz4BA&oe=63083C27&_nc_sid=8fd12b"),
                    ),
                  )
                ],
              ),
              Positioned(
                  right: 5,
                  bottom:4,
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.black,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 4, left: 4),
                        child: CircleAvatar(
                          radius: 14,
                          backgroundColor: Color(0xff0052a9),
                        ),
                      ),
                      Padding(
                        padding:
                        EdgeInsets.only(top: 5, left: 6),
                        child: Icon(
                          Icons.add,
                          size: 25,
                          color: Colors.white,
                        ),
                      )
                    ],
                  )),
            ],
          ),
        ),
        SizedBox(
          height: 0,
        ),
        Text(
          storyuser,
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
        )
      ],
    );
  }

  Column stores(String url, String storyuser) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 0),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xFF56019A),
                          Color(0xFF9A0197),
                          Color(0xFFFF3200),
                          Color(0xFFFAC106),
                          Color(0xFFE3E012)
                        ])),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5, left: 10),
              child: CircleAvatar(
                radius: 35,
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(url),
              ),
            )
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          storyuser,
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
        )
      ],
    );
  }

  Container post(String position, String avatar, String user, String location,
      int likes, int comments) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 5,
          ),
          GestureDetector(
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(avatar),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: Text(
                        user,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 0),
                      child: Text(
                        location,
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    )
                  ],
                )
              ],
            ),
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=> profile(location: location,profileimage: avatar,user: user)
                  )
              );
            },
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 400,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(image: NetworkImage(position))),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Icon(
                      Icons.favorite_border,
                      size: 35,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Icon(
                      Icons.chat_bubble_outline,
                      size: 32,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 3),
                    child: Icon(
                      Icons.ios_share_outlined,
                      size: 32,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Icon(
                  Icons.bookmark_border,
                  size: 35,
                  color: Colors.white,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 5),
            child: Text(
              "$likes likes",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0, left: 5),
            child: Text(
              "View all $comments comments",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
          ),
          SizedBox(
            height: 5,
          )
        ],
      ),
    );
  }
}
