import "package:flutter/material.dart";
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Text(
            'MENU' ),
        leading: GestureDetector(
          onTap:() {},
          child: Icon(
            Icons.menu,
          ),
        ),
        actions: <Widget>[
          Padding(padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: (){},
                child: Icon(
                  Icons.add_alert_sharp,
                  size: 26.0,
                ),
              )
          ),
          Padding(
              padding: EdgeInsets.only(right:20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.add_box_outlined,
                ),
              )
          ),
        ],
        backgroundColor: Colors.black38,
        elevation: 0.0,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets1/WhatsApp_Image_2022-09-03_at_21.34 1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[

                Container(

                  margin: EdgeInsets.symmetric(horizontal: 10.0,vertical: 8.0),
                  padding: EdgeInsets.all(5.0) ,


                  decoration: BoxDecoration(

                    color : Colors.grey[200],
                    borderRadius: BorderRadius.circular(15),



                  ),



                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "What are you craving for ?",
                            hintStyle: TextStyle(color: Colors.grey[900]),
                            icon: Icon(Icons.search, color: Colors.grey[900]),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 0,
                        child: Container(
                          child: Row(
                            children: <Widget>[
                              IconButton(
                                onPressed:() {},
                                icon: Icon(Icons.add,color: Colors.grey[900]),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),





                Row(
                  children:<Widget>[
                    Text(
                      'CATEGORIES',
                      style: TextStyle(
                        color: Colors.white,                    letterSpacing: 2.0,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(70.0),
                  height: 100,
                  width: 550,

                  decoration: BoxDecoration(

                    color : Colors.deepPurple[100],

                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage('assets1/Group 2.png'),
                      fit: BoxFit.fill,
                    ),


                  ),

                  child: Text('BEVERAGES'),
                ),
                Container(
                  padding: EdgeInsets.all(60.0),
                  height: 100,
                  width: 550,


                  decoration: BoxDecoration(

                    color : Colors.deepPurple[400],

                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage('assets1/Group 3.png'),
                      fit: BoxFit.fill,
                    ),


                  ),
                  child: Text('PACKAGED'
                      'FOOD'),
                ),
                Container(
                  padding: EdgeInsets.all(60.0),
                  height: 100,
                  width: 550,


                  decoration: BoxDecoration(

                    color : Colors.deepPurple[900],

                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage('assets1/Group 4.png'),
                      fit: BoxFit.fill,
                    ),


                  ),
                  child: Text('FRESHLY'
                      'COOKED'),
                ),

              ]


          ),

        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey[900],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_outlined),
            label: 'Order',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.white,
          ),
        ],
      ),
    );

  }
}