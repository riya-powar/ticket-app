import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/widgets/app_column_textlayout.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/widgets/big_circle.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';
import 'package:ticket_app/base/widgets/text_style_fourth.dart';
import 'package:ticket_app/base/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  final Map<String,dynamic> ticket;
  final bool wholeScreen;
  final bool? isColor; 
  const TicketView({super.key, required this.ticket, this.wholeScreen=false, this.isColor=null});

  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    
    return SizedBox(
      width: size.width*0.85,
      height: 203,
      child: Container(
        margin: EdgeInsets.only(right:wholeScreen==true?0:16),
        child: Column(
          children: [
            Container(
              
              padding: EdgeInsets.all(18),
             // color: const Color.fromARGB(255, 71, 246, 246),
              child: Column(
                children: [
                  //show departure and destination with icons first line
                  Row(
                    children: [
                      TextStyleThird(text: ticket['from']['code'],isColor: isColor,),
                      Expanded(child: Container()),
                      BigDot(isColor: isColor,),
                      Expanded(child: Stack(children: [
                         SizedBox(
                          height: 24,
                          child: AppLayoutBuilderWidget(randomDivider: 6,isColor: isColor,)
                        ),
                        Center(child: Transform.rotate(
                          angle: 1.57,
                          child: Icon(Icons.local_airport_rounded, color: isColor==null?Colors.white:Color(0xFF8ACCF7),)
                          ),
                          )
                      ],)), 
                      BigDot(isColor: isColor),
                      Expanded(child: Container()),
                      TextStyleThird(text: ticket['to']['code'],isColor: isColor,)
                    ],
                  ),
                  const SizedBox(height:3),
                  //show departure and destination with names and time
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(text: ticket['from']['name'],isColor: isColor,)
                        ),
                      Expanded(child: Container()),
                      TextStyleFourth(text: ticket['flying_time'],isColor: isColor,),
                      Expanded(child: Container()),
                       SizedBox(
                        width: 100,
                        child: TextStyleFourth(text: ticket['to']['name'],isColor: isColor, align: TextAlign.end)
                        )
                    ],
                  )
                ],
              ),
              decoration: BoxDecoration(
                color: isColor==null? AppStyles.ticketBlue: AppStyles.ticketColor,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(21), topRight: Radius.circular(21))
              ),
            ),
            Container(
              //height: 20,
              color: isColor==null?AppStyles.ticketOrange:AppStyles.ticketColor,
              child:  Row(
                children: [
                   BigCircle(isRight: false,isColor: isColor,),
                  Expanded(child: AppLayoutBuilderWidget(randomDivider: 16, width: 8,isColor: isColor,)),
                   BigCircle(isRight: true,isColor: isColor,)
                ],
              ),
            ),
            Container(
              
              padding: EdgeInsets.all(18),
             // color: const Color.fromARGB(255, 71, 246, 246),
              child: Column(
                children: [
                  //show departure and destination with icons first line
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnTextlayout(topText: ticket['date'], bottomText: "Date",isColor: isColor,),
                      AppColumnTextlayout(topText: ticket['departure_time'], bottomText: "Departure time",align: CrossAxisAlignment.center,isColor: isColor,),
                      AppColumnTextlayout(topText: ticket['number'], bottomText: "Number",align: CrossAxisAlignment.end ,isColor: isColor,),
                    ],
                  ),
                  const SizedBox(height:3),
                
          ]),
              decoration: BoxDecoration(
                color: isColor==null?AppStyles.ticketOrange:AppStyles.ticketColor,
                borderRadius: isColor==null?BorderRadius.only(bottomLeft: Radius.circular(21), bottomRight: Radius.circular(21)): BorderRadius.circular(0)
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}