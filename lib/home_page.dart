import 'package:flutter/material.dart';
import 'constant.dart';


class HomePage extends StatelessWidget{


  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
         body: Flex(
           direction: Axis.vertical,
           children: <Widget>[
             Material(
               elevation: 3.0,
               child: Column(
                 children: <Widget>[
                   SizedBox(height: 15.0,),
                   _buildBarContainer(),
                   SizedBox(height: 15.0,),
                 ],
               ),
             ),
             Expanded(
               child: ListView(
                 children: <Widget>[
                   _buildGreyLine(7),
                   _buildPublication('assets/building.jpg','assets/image2.jpg'),
                   _buildPublication('assets/jogging.jpg','assets/image3.jpg'),
                   _buildPublication('assets/moto.jpg','assets/image4.jpg'),
                   _buildPublication('assets/festival.jpg','assets/image5.jpg'),
                   _buildPublication('assets/hairstyle.jpg','assets/image6.jpg'),
                   _buildPublication('assets/festival2.jpg','assets/image7.jpg'),
                 ],
               ),
             ),
           ],
         ),
        ),
    );
  }


  Widget _buildBarContainer(){
    return Padding(
      padding: const EdgeInsets.only(left: 20.0,right: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: <Widget>[
               Text(
                 'Top Stories',
                 style: TextStyle(
                   color: Colors.black,
                   fontSize: 35.0,
                   fontWeight: FontWeight.bold,
                 ),
               ),
               SizedBox(height: 5.0,),
               Text(
                 'Monday, June 8',
                 style: TextStyle(
                   fontSize: 15.0,
                   color: Colors.grey
                 ),
               ),
             ],
           ),
           Stack(
             children: <Widget>[
               CircleAvatar(
                 backgroundImage: AssetImage('assets/image1.jpg'),
                 radius: 27.0,
               ),
               Positioned(
                 right: 0.0,
                 child: Container(
                   height: 16.0,
                   width: 16.0,
                   decoration: BoxDecoration(
                     color: Colors.green,
                     shape: BoxShape.circle,
                     border: Border.all(color: Colors.white,width: 3.0)
                   ),
                 ),
               )
             ],
           )
        ],
      ),
    );

  }


  Widget _buildGreyLine(double heightLine){
      return Container(
        width: double.infinity,
        height: heightLine,
        color: Colors.grey.withOpacity(0.3),
      );
  }


  Widget _buildPublication(String pathImage,String profileImage){
      return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Image.asset(pathImage,fit: BoxFit.cover,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0,right: 25.0,top: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Addication When Gambling\nBecomes A Problem',
                      style: TextStyle(
                          height: 1.1,
                          fontWeight: FontWeight.bold,
                          fontSize: 22.0
                      ),
                    ),
                    SizedBox(height: 20.0,),
                    Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: AssetImage(profileImage),
                          radius: 20.0,
                        ),
                        SizedBox(width: 10.0,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Brent Robertson',
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            Text(
                              '31m ago',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12.0
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 15.0,),
                    Padding(
                      padding: const EdgeInsets.only(left: 11.0,right: 11.0),
                      child: Text(
                        text,
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0,),
                    Row(
                      children: <Widget>[
                        Icon(Icons.favorite,color: Colors.pink,size: 20.0,),
                        SizedBox(width: 5,),
                        Text('1125',style: TextStyle(fontSize: 13.0,fontWeight: FontWeight.w600),),
                        SizedBox(width: 25.0,),
                        Icon(Icons.chat,color: Colors.grey,size: 20.0,),
                        SizedBox(width: 5,),
                        Text('348',style: TextStyle(fontSize: 13.0,fontWeight: FontWeight.w600),)
                      ],
                    ),
                  ],
                ),
              ),
            SizedBox(height: 20.0,),
            _buildGreyLine(15),

          ],
      );
  }
}



