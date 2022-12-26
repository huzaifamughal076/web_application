import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Material(
      child: Container(
            width: size.width,
            margin: const EdgeInsets.all(30),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0xffE9516A),
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0,-2),
                  blurRadius: 30,
                  color: Colors.black.withOpacity(0.16),
                )
              ]
            ),
            child: Row(
              children: [
                Image.asset("assets/images/img_1.png",width: 70,height: 40,),
                const Align(
                    alignment: Alignment.center,
                    child: Text("Restomation",style: TextStyle(color: Colors.white,fontSize: 20,letterSpacing: 2,),)),
                const Spacer(),

                SizedBox(
                  width: size.width*0.3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text("Why Us?",style: TextStyle(fontSize: 25,color: Colors.white),),
                      // SizedBox(width: 50,),
                      const Text("Contact Us",style: TextStyle(fontSize: 25,color: Colors.white,),),
                      // SizedBox(width: 50,),
                      GestureDetector(
                        onTap: (){
                          print("Clicked");
                        },
                        child: ClipRRect(
                          child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 60,vertical: 5),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Text("App",style: TextStyle(color: Colors.white,fontSize:20),)),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
    );

  }
}
