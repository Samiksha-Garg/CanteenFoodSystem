import 'package:canteen_system/components/custom_button.dart';
import 'package:canteen_system/helper/constants.dart';
import 'package:canteen_system/helper/size_config.dart';
import 'package:flutter/material.dart';

class CancelOrderCard extends StatelessWidget {
  const CancelOrderCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: 
        
          CustomButton(
            press: () {},
            text: "Cancel Order",
          ),
        
      
    );
  }
}
