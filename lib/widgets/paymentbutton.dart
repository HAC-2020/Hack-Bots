import 'package:flutter/material.dart';
class BottomButton extends StatelessWidget {
  BottomButton({@required this.buttonTitle, @required this.onTap,@required this.color});

  final Function onTap;
  final String buttonTitle;
  final int color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          child: Align(
            alignment: Alignment.bottomCenter,
              child: ListTile(
                title: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(buttonTitle, style: TextStyle(fontSize: 14,fontWeight: FontWeight.w800,color: Colors.white),),
                ),
                trailing: Icon(Icons.arrow_forward_ios,
                color: Colors.white54),
              )
          ),
          decoration: BoxDecoration(
            color: Color(color),
            border: Border.all(
              width: 0.5
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          width: double.infinity,
        ),
      ),
    );
  }
}