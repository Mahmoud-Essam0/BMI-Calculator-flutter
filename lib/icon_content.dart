import 'package:flutter/material.dart';
import 'constants.dart';

const iconSize = 80.0;
const sizedBoxHeight = 15.0;

class IconContent extends StatelessWidget {
  IconContent({this.iconName, this.iconText});
  final IconData iconName;
  final String iconText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconName,
          size: iconSize,
        ),
        SizedBox(
          height: sizedBoxHeight,
        ),
        Text(
          iconText,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}

class BottomButton extends StatelessWidget {
  BottomButton({@required this.buttonTitle, @required this.onTap});
  final String buttonTitle;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, this.onPressed});
  final IconData icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      elevation: 0,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
