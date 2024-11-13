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
  const TicketView({super.key, required this.ticket, this.wholeScreen=false});

  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    
    return SizedBox(
      width: size.width*0.85,
      height: 214,
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
                      TextStyleThird(text: ticket['from']['code'],),
                      Expanded(child: Container()),
                      const BigDot(),
                      Expanded(child: Stack(children: [
                        const SizedBox(
                          height: 24,
                          child: AppLayoutBuilderWidget(randomDivider: 6,)
                        ),
                        Center(child: Transform.rotate(
                          angle: 1.57,
                          child: const Icon(Icons.local_airport_rounded, color: Colors.white,)
                          ),
                          )
                      ],)), 
                      const BigDot(),
                      Expanded(child: Container()),
                      TextStyleThird(text: ticket['to']['code'])
                    ],
                  ),
                  const SizedBox(height:3),
                  //show departure and destination with names and time
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(text: ticket['from']['name'])
                        ),
                      Expanded(child: Container()),
                      TextStyleFourth(text: ticket['flying_time']),
                      Expanded(child: Container()),
                       SizedBox(
                        width: 100,
                        child: TextStyleFourth(text: ticket['to']['name'], align: TextAlign.end)
                        )
                    ],
                  )
                ],
              ),
              decoration: BoxDecoration(
                color: AppStyles.ticketBlue,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(21), topRight: Radius.circular(21))
              ),
            ),
            Container(
              //height: 20,
              color: AppStyles.ticketOrange,
              child:  Row(
                children: [
                  const BigCircle(isRight: false),
                  Expanded(child: AppLayoutBuilderWidget(randomDivider: 16, width: 8,)),
                  const BigCircle(isRight: true)
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
                      AppColumnTextlayout(topText: ticket['date'], bottomText: "Date"),
                      AppColumnTextlayout(topText: ticket['departure_time'], bottomText: "Departure time",align: CrossAxisAlignment.center,),
                      AppColumnTextlayout(topText: ticket['number'], bottomText: "Number",align: CrossAxisAlignment.end),
                    ],
                  ),
                  const SizedBox(height:3),
                
          ]),
              decoration: BoxDecoration(
                color: AppStyles.ticketOrange,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(21), bottomRight: Radius.circular(21))
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}