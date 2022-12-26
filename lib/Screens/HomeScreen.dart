import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_application/ExternalWidget/CustomAppBar.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
      child: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white,
              Colors.white,
              Color(0x59ff8500),
              Color(0xa8ff8500),
              // Colors.orangeAccent,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )
        ),
        child: Column(
          children: [
            const CustomAppBar(),
            const SizedBox(height: 50,),
            SizedBox(
              width: size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      width:size.width*0.4 ,
                      height: size.height*0.5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Increase Restaurant profits by 30% ?",style: TextStyle(fontSize: 80,fontWeight: FontWeight.bold,color: Colors.black),textAlign: TextAlign.left,),
                          Container(
                            width: 250,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Align(
                                alignment: Alignment.center,
                                child: const Text("Book your demo",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 25),).paddingSymmetric(horizontal: 20,vertical: 5)),
                          ),
                        ],
                      )),

                  SizedBox(
                      width: size.width*0.3,
                      height: size.height*0.6,
                      child: Image.asset("assets/images/logo.png")),

                ],
              ),
            ).marginSymmetric(horizontal: 50),
          ],
        ),
      ),
    );
  }
}
