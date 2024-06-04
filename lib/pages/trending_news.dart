import 'package:flutter/material.dart';

class Trending extends StatelessWidget {
  const Trending({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Material(
                  elevation: 3.0,
                  borderRadius: BorderRadius.circular(10),
                  child: GestureDetector(
                    onTap:() {

                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                    child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/sports.jpg',
                            height: 50,
                            width: 50,
                            fit: BoxFit.cover,
                            ),
                                      
                        ),
                      ),
                      SizedBox(width: 8,),
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/1.7,
                            child: Text(
                              "Rui Costa outsprints brakaway to win stage 15",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                              ),
                            ),
                          ),
                          SizedBox(height: 7,),
                          Container(
                            width: MediaQuery.of(context).size.width/1.7,
                            child: Text(
                              "Then a final kick to beat lenard kanna",
                              style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                          ),
                            
                        ],
                      )
                    ],
                                    ),
                    ),
                  ),
                  ),
              );
  }
}