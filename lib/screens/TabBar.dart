import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app_quantom/screens/LoginScreen.dart';
import 'package:news_app_quantom/screens/SignUp.dart';
// import 'package:tab_bar/tabbarPage/tab1.dart';
// import 'package:tab_bar/tabbarPage/tab2.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({Key? key}) : super(key: key);

  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }









  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      // appBar: AppBar(
      //   title: Text('Tab bar Without Appbar'),
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            // decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
            child: Column(
              children: [
                Container(
                  color: Colors.red,
                  height: 80,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Row(
                      children: [
                        Text("Social",style: GoogleFonts.lato(fontSize: 35,color: Colors.white),),
                       const SizedBox(width: 2,),
                        Text("X",style: GoogleFonts.lato(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),

                      ],
                    ),
                  ),
                ),
                Container(
                  // height: 50,
                  width: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft:Radius.circular(30) ,
                        bottomRight:Radius.circular(30),
                        )),
                  child: Column(
                    children: [
                      Padding(
                        padding:const EdgeInsets.only(bottom: 0),
                        child: TabBar(
                          unselectedLabelColor: Colors.black,
                          labelColor: Colors.white,
                          // indicatorColor: Colors.green,
                          indicatorWeight: 2,
                          indicator: const BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),
                            bottomRight:Radius.circular(30)
                            ),
                          ),
                          controller: tabController,
                          tabs: const[
                            Tab(
                              text: 'Login',
                            ),
                            Tab(
                              text: 'Sign Up',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      LoginScreen(),
                      SignupScreen()
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}