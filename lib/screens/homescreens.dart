import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
      ),
      body: SingleChildScrollView(child: Padding(
        padding: const EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 40, 20),
        child: SizedBox(
          width: double.infinity,
          // color: Colors.blue,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(-2.5, 0),
                child: Container(
                  height: 220,
                  width: 220,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.deepPurple),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(2.5, 0),
                child: Container(
                  height: 220,
                  width: 220,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.deepPurple),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0, -1.2),
                child: Container(
                  height: 300,
                  width: 600,
                  decoration: const BoxDecoration(color: Color(0xFFFFBD66)),
                ),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
                child: Container(
                  decoration: const BoxDecoration(color: Colors.transparent),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '📍 Summit Estate',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w300),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'Good morning',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Image.asset('assets/images/1.png'),
                    const Center(
                      child: Text(
                        '21°C',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 55),
                      ),
                    ),
                    const Center(
                      child: Text(
                        'THUNDERSTORM',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 22),
                      ),
                    ),
                    const Center(
                      child: Text(
                        'Friday 16 • 09.41am',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                    ),
                    const SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          Image.asset('assets/images/11.png', scale: 8,), const SizedBox(width: 5,),
                          const  Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Sunrise', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),),
                              SizedBox(height: 3,),
                              Text('5:34 am', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),),

                            ],)
                        ],),


                        Row(children: [
                          Image.asset('assets/images/12.png', scale: 8,), const SizedBox(width: 5,),
                          const  Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Sunset', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),),
                              SizedBox(height: 3,),
                              Text('5:34 pm', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),),

                            ],)
                        ],),
                      ],),
                    Padding(padding: EdgeInsets.symmetric(vertical: 5.0), child: Divider(color: Colors.grey,),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          Image.asset('assets/images/13.png', scale: 8,), const SizedBox(width: 5,),
                          const  Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Temp Max', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),),
                              SizedBox(height: 3,),
                              Text('12°C', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),),

                            ],)
                        ],),


                        Row(children: [
                          Image.asset('assets/images/14.png', scale: 8,), const SizedBox(width: 5,),
                          const  Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Temp Min', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),),
                              SizedBox(height: 3,),
                              Text('8°C', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),),

                            ],)
                        ],),
                      ],),


                  ],
                ),
              )
            ],
          ),
        ),
      ),)

    );
  }
}
